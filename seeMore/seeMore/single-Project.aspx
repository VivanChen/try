<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            List<string> projectImage = new List<string>();
            List<Project> projectName = new List<Project>();
            int n = 1;
            int id = int.Parse(Request.QueryString["id"]);
            Project Name = ProjectAllUtility.GetAllProjectById1(id);
            projectImage = ProjectAllUtility.ProjectAllImage(id);
            var query = from prod in projectImage
                        select new Project()
                        {
                            ProjectName2 = prod,
                            ProjectName3 =Name.ProjectName3+ n++
                        };

            Repeater1.DataSource = query;
            Repeater1.DataBind();


            Literal1.Text = Name.ProjectName1;
            Literal2.Text = Name.ProjectName2;
            Literal3.Text = Name.ProjectName3;
            Literal4.Text = Name.ProjectDetal01;
            Literal5.Text = Name.ProjectDetal02;
            Literal6.Text = Name.ProjectDetal03;
            Literal7.Text = Name.principalImage;
            Literal8.Text = Name.principalName;

            Repeater2.DataSource  = ProjectAllUtility.GetAllProjectById2(id);
            Repeater2.DataBind();



        }

    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">
    <div class="unslate_co--site-inner">
        <div class="cover-v1 gradient-bottom-black jarallax">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-10 mx-auto text-center">
                        <h1 class="heading" data-aos="fade-up">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </h1>
                        <h2 class="subheading" data-aos="fade-up" data-aos-delay="100">
                            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                        </h2>
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
        <!-- END .cover-v1 -->
        <div class="container">
            <div class="portfolio-single-wrap unslate_co--section" id="portfolio-single-section">
                <div class="portfolio-single-inner">
                    <h2 class="heading-portfolio-single-h2">
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </h2>

                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <div class="row gutter-v4 align-items-stretch mb-5" id="pass1">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry">
                                <a href='Upload/<%# Eval("ProjectName2") %>' class="grid-item blog-item w-100 h-100" data-fancybox="gal" data-caption=" <%# Eval("ProjectName3") %>">

                                    <div class="overlay">

                                        <div class="portfolio-item-content">
                                            <h3>
                                                <%# Eval("ProjectName3") %>
                                            </h3>
                                        </div>
                                    </div>
                                    <img src='Upload/<%# Eval("ProjectName2") %>' class="lazyload" alt="Image" />
                                </a>
                            </div>

                        </ItemTemplate>
                        <FooterTemplate>
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>



                    <div class="row justify-content-between mb-5">

                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate>
                                <div class="col-12 mb-5">
                                    <div class="row">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="col-sm-6 col-md-6 col-lg-3">
                                    <div class="detail-v1">
                                        <span class="detail-label"><%# Eval("projectTitle01") %></span>
                                        <span class="detail-val"><%# Eval("projectText01") %></span>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-3">
                                    <div class="detail-v1">
                                        <span class="detail-label"><%# Eval("projectTitle02") %></span>
                                        <span class="detail-val"><%# Eval("projectText02") %></span>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-3">
                                    <div class="detail-v1">
                                        <span class="detail-label"><%# Eval("projectTitle03") %></span>
                                        <span class="detail-val"><%# Eval("projectText03") %></span>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-3">
                                    <div class="detail-v1">
                                        <span class="detail-label"><%# Eval("projectTitle04") %></span>
                                        <span class="detail-val"><a href="<%# Eval("projectText04") %>" target="_blank"><%# Eval("ProjectName3") %></a></span>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </div>
                            </FooterTemplate>
                        </asp:Repeater>





                        <div class="col-md-6 pr-md-5">
                            <p>
                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>

                            </p>
                        </div>
                        <div class="col-md-6 pl-md-5">
                            <p>
                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>

                            </p>
                        </div>
                    </div>
            <div class="row justify-content-center mb-5">
                <div class="col-md-12">
                    <div class="testimonial-v1">
                        <div class="testimonial-inner-bg">
                            <span class="quote">&ldquo;</span>
                            <blockquote>
                                <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                            </blockquote>
                        </div>
                        <div class="testimonial-author-info">
                            
                            <img src="Frontdesk/images/realimg/公司相關/<asp:Literal ID='Literal7' runat='server'></asp:Literal>" alt="Image">
                            <h3>
                                <asp:Literal ID="Literal8" runat="server"></asp:Literal>

                            </h3>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>
    </div>


    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
    <%--    <script>

        $(function () {
            var ProjectId = {}
            $.ajax({
                type: 'POST',
                url: 'WebService.asmx/ProjectsAll',
                contentType: "application/json;charset=utf-8",
                success: function (data) {

                    $(data.d).each(function (index, item) {

                        $("#pass1").append(
                            `<div class="container">
                                <div class="row align-items-center">
                                    <div class="col-md-10 mx-auto text-center">
                                        <h1 class ="heading" data-aos="fade-up">${item.imageName1}</h1>
                                        <h2 class ="subheading" data-aos="fade-up" data-aos-delay="100">${item.imageName2}</h2>
                                </div>
                            </div>

                            <a href="#portfolio-single-section" class ="mouse-wrap smoothscroll">
                                <span class ="mouse">
                                 <span class ="scroll"></span>
                                </span>
                                    <span class ="mouse-label">Scroll</span>
                            </a>
                             </div>
                                    <div class ="container">
                        <div class ="portfolio-single-wrap unslate_co--section" id="portfolio-single-section">
                        <div class ="portfolio-single-inner">
                        <h2 class ="heading-portfolio-single-h2">${item.imageName3}</h2>`);

                        
                             
                    })

                },
                error: function (x) {
                    alert("error");
                }
            });

        });

    </script>--%>
</asp:Content>

