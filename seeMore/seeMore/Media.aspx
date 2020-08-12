<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Media.aspx.cs" Inherits="Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">
    <div class="unslate_co--site-inner">
        <div class="cover-v1 gradient-bottom-black jarallax">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-10 mx-auto text-center">
                        <h1 class="heading" data-aos="fade-up">Publication</h1>
                        <h2 class="subheading" data-aos="fade-up" data-aos-delay="100">Publishing books</h2>
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
        <div class="container">
            <div class="portfolio-single-wrap unslate_co--section" id="portfolio-single-section">

                <div class="portfolio-single-inner">
                    <h2>出版書籍</h2>

                    <p>

                        1969年工作室成立，姚德雄先生開始從事建築規劃及室內設計工作，更致力於休閒遊憩事業、旅館開發和總體規劃。
                       從過去各種工作經驗當中，我們的設計發想，不單就滿足地方性的建築及各式法令及視覺刺激，更融會人文、人因、環境、市場分析、產品定位與品牌形象等多元角度來剖析我們受託的項目，再以藝術美學及風格創意實現空間氛圍。業主得到的成品不僅是創造短期收益的硬體設備，更是以『永續』為營運概念置入的設計規劃。
                    </p>

                    <hr class="my-5" />

                    <p class="imglist" style="max-width: 1200px;">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <a href="Frontdesk/images/realimg/媒體/<%# Eval("mediaImage") %>" data-fancybox="images" data-caption="編號: <%# Eval("MediaId") %>    描述:<%# Eval ("mediaText1") %>">
                                    <img src="Frontdesk/images/realimg/媒體/<%# Eval("mediaImage") %>" style="width: 150px" />

                                </a>
                            </ItemTemplate>
                        </asp:Repeater>





                    </p>



                </div>
            </div>
        </div>







    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
    <script>
        $('[data-fancybox="images"]').fancybox({
            buttons: [
              'slideShow',
              'zoom',
              'fullScreen',
              'close'
            ],
            thumbs: {
                autoStart: true
            }
        });
    </script>
</asp:Content>

