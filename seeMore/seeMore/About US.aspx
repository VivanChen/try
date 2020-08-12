<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

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
                        <h1 class="heading" data-aos="fade-up">About US</h1>
                        <h2 class="subheading" data-aos="fade-up" data-aos-delay="100">OUR TEAM</h2>
                    </div>
                </div>
            </div>
            <!-- dov -->
            <a href="#about-section" class="mouse-wrap smoothscroll">
                <span class="mouse">
                    <span class="scroll"></span>
                </span>
                <span class="mouse-label">Scroll</span>
            </a>
        </div>




        <div class="unslate_co--section" id="about-section">
            <div class="container">

                <div class="section-heading-wrap text-center mb-5">
                    <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">About US</span></h2>
                    <span class="gsap-reveal">
                        <img src="Frontdesk/images/divider.png" alt="divider" width="76">
                    </span>
                </div>

                <div id="pass1">
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
                url: 'WebService.asmx/About',
                contentType: "application/json;charset=utf-8",
                success: function (data) {

                    $(data.d).each(function (index, item) {

                        $("#pass1").append(


                            `<div class="row mt-5 justify-content-between">
                    <div class="col-lg-7 mb-5 mb-lg-0">
                        <figure class="dotted-bg gsap-reveal-img ">
                            <img src="Frontdesk/images/realimg/公司相關/${item.EmployeeImage}" alt="Image" class="img-fluid">
                        </figure>   
                    </div>
                    <div class="col-lg-4 pr-lg-5">

                        <h3 class="mb-4 heading-h3"><span class="gsap-reveal">${item.EmployeeTitles}"</span></h3>
                        <h3 class="mb-4 heading-h3"><span class="gsap-reveal" style="color: #b9be3b">${item.EmployeeName}</span></h3>

                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume01}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume02}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume03}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume04}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume05}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume06}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume07}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume08}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume09}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume10}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume11}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume12}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume13}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume14}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume15}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume16}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume17}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume18}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume19}</p>
                        <p class="lead gsap-reveal" style="font-size: 12px">${item.EmployeeResume20}</p>
                        <p class="gsap-reveal"><a href="mailto:${item.EmployeeEmail}" class="btn btn-outline-pill btn-custom-light">${item.EmployeeEmail}</a></p>

                    </div>
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

