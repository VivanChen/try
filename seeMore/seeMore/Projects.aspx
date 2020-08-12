<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Repeater1.DataSource = ProjectAllUtility.GetAllProjects();
            Repeater1.DataBind();
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
    <link href="Frontdesk/css/Mystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">

    <div class="cover-v1 jarallax overlay" style="background-image: url('images/work_1_full.jpg');">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-md-8 mx-auto text-center">
                    <h1 class="blog-heading" data-aos="fade-up" data-aos-delay="0">PROJECTS</h1>
                    <div class="post-meta" data-aos="fade-up" data-aos-delay="100">Hotel Design / Planning / Consulting</div>
                </div>

            </div>
        </div>


        <!-- dov -->
        <a href="#blog-single-section" class="mouse-wrap smoothscroll">
            <span class="mouse">
                <span class="scroll"></span>
            </span>
            <span class="mouse-label">Scroll</span>
        </a>

    </div>



    <%--<div class="unslate_co--site-inner">
        <div class="cover-v1 gradient-bottom-black jarallax">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-10 mx-auto text-center">
                        <h1 class="heading" data-aos="fade-up">PROJECTS</h1>
                        <h2 class="subheading" data-aos="fade-up" data-aos-delay="100"></h2>
                    </div>
                </div>
            </div>
            <!-- dov -->
            <a href="#portfolio-single-section" class="mouse-wrap smoothscroll">
                <span class="mouse">
                    <span class="scroll"></span>
                </span>
                <span class="mouse-label">Scroll</span>
            </a>
        </div>
        <!-- END .cover-v1 -->--%>


    <div class="container">
        <div class="portfolio-single-wrap unslate_co--section" id="portfolio-single-section">
            <div class="portfolio-single-inner">
                <h2 class="heading-portfolio-single-h2">作品集</h2>
                <div class="row gutter-v4 align-items-stretch mb-5" id="pass95">

                </div>


                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <div class="unslate_co--section">
                            <div class="container">
                                <div class="owl-carousel col-12 logo-slider" id="pass2">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href='<%# Eval("ProjectId" , "single-Project.aspx?id={0}") %>'>
                            <div class="logo-v1 gsap-reveal col-12">

                                <img src='<%# Eval("projectImageIndex" , "Upload/{0}") %>' class="img-fluid" alt="Image">
                            </div>
                        </a>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                        </div>
                    </div>
                    </FooterTemplate>

                </asp:Repeater>


            </div>
        </div>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
    <script>

        $(function () {

            $.ajax({
                type: 'POST',
                url: 'WebService.asmx/ProjectsAll',
                contentType: "application/json;charset=utf-8",
                success: function (data) {

                    $(data.d).each(function (index, item) {

                        $("#pass95").append(
                            `<div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry">
                            <a href="single-Project.aspx?id=${item.ProjectId}" class ="grid-item blog-item w-100 h-100" portfolio-item ajax-load-page item-portrait isotope-item gsap-reveal-img" data-id="2">
                                <div class="overlay">
                                    <div class="portfolio-item-content">
                                        <h3>${item.ProjectName3}</h3>
                                    </div>
                                </div>
                                <img src="Upload/${item.projectImageIndex}" class ="lazyload  img-fluid" alt="Images" />
                            </a>
                        </div>`);
                    })
                },
                error: function (x) {
                    alert("error");
                }
            });

        });

    </script>

</asp:Content>


