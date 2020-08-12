<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>AYAO &mdash; PARTNERS DESIGN CO. </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">
    <meta name="keywords" content="html, css, javascript, jquery">
    <meta name="author" content="">

    <link rel="stylesheet" href="Frontdesk/css/vendor/icomoon/style.css">
    <link rel="stylesheet" href="Frontdesk/css/vendor/owl.carousel.min.css">
    <link rel="stylesheet" href="Frontdesk/css/vendor/animate.min.css">
    <link rel="stylesheet" href="Frontdesk/css/vendor/aos.css">
    <link rel="stylesheet" href="Frontdesk/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="Frontdesk/css/vendor/jquery.fancybox.min.css">
    <link rel="stylesheet" href="Frontdesk/css/style.css">
    <style>
        .fancybox-slide--iframe .fancybox-content {
            width: 800px;
            height: 600px;
            max-width: 80%;
            max-height: 80%;
            margin: 0;
            background: #191919;
        }
    </style>

</head>
<body data-spy="scroll" data-target=".site-nav-target" data-offset="200">
    <form id="form1" runat="server">
        <nav class="unslate_co--site-mobile-menu">
            <div class="close-wrap d-flex">
                <a href="#" class="d-flex ml-auto js-menu-toggle">
                    <span class="close-label">Close</span>
                    <div class="close-times">
                        <span class="bar1"></span>
                        <span class="bar2"></span>
                    </div>
                </a>
            </div>
            <div class="site-mobile-inner"></div>
        </nav>


        <div class="unslate_co--site-wrap">

            <div class="unslate_co--site-inner">

                <div class="lines-wrap">
                    <div class="lines-inner">
                        <div class="lines"></div>
                    </div>
                </div>
                <!-- END lines -->

                <nav class="unslate_co--site-nav site-nav-target">

                    <div class="container">

                        <div class="row align-items-center justify-content-between text-left">
                            <div class="col-md-5 text-right">
                                <ul class="site-nav-ul js-clone-nav text-left d-none d-lg-inline-block">
                                    <li class="has-children"></li>

                                    <li><a href="#about-section" class="nav-link">About</a></li>
                                    <li><a href="#services-section" class="nav-link">OUR WORKS</a></li>
                                    <li><a href="#testimonial-section" class="nav-link">TEAM DESIGNS</a></li>
                                    <li><a href="#contact-section" class="nav-link">Contact</a></li>
                                </ul>
                            </div>
                            <div class="site-logo pos-absolute">
                                <a href="index.aspx" class="unslate_co--site-logo">AYAO<span>.</span></a>
                            </div>
                            <div class="col-md-5 text-right text-lg-left">
                                <ul class="site-nav-ul js-clone-nav text-left d-none d-lg-inline-block">
                                    <li class="has-children">
                                        <a href="Projects.aspx" class="nav-link">作品集</a>
                                        <ul class="dropdown" id="pass99">
                                        </ul>

                                        <li><a href="About US.aspx" class="nav-link">關於AYO</a></li>
                                    <li><a href="Media.aspx" class="nav-link">出版書籍</a></li>
                                    <li><a href="About US.aspx" class="nav-link">聯絡我們</a></li>
                                    <li><a href="bkindex1.aspx" class="nav-link"></a></li>

                                </ul>

                                <ul class="site-nav-ul-none-onepage text-right d-inline-block d-lg-none">
                                    <li><a href="#" class="js-menu-toggle">Menu</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>

                </nav>
                <!-- END nav -->


                <div class="cover-v1 jarallax" style="background-image: url('Frontdesk/images/realimg/index/UINNBUSINESSHOTEL2.jpg');" id="home-section">
                    <div class="container">
                        <div class="row align-items-center">

                            <div class="col-md-7 mx-auto text-center">

                                <h1 class="heading gsap-reveal-hero">AYAO</h1>
                                <h2 class="subheading gsap-reveal-hero">PARTNERS DESIGN CO.</h2>
                            </div>

                        </div>
                    </div>


                    <a href="#portfolio-section" class="mouse-wrap smoothscroll">
                        <span class="mouse">
                            <span class="scroll"></span>
                        </span>
                        <span class="mouse-label">Scroll</span>
                    </a>

                </div>


                <!-- END .cover-v1 -->

                <%--                <div class="unslate_co--section" id="portfolio-section">
                    <div class="container">



                        <div class="d-flex align-items-center mb-4 gsap-reveal gsap-reveal-filter">
                            <h2 class="mr-auto heading-h2"><span class="gsap-reveal">Portfolio</span></h2>


                        </div>

                        <div id="posts" class="row gutter-isotope-item">
                        </div>


                    </div>
                </div>--%>





                <div class="unslate_co--section" id="about-section">
                    <div class="container">

                        <div class="section-heading-wrap text-center mb-5">
                            <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">About US</span></h2>
                            <span class="gsap-reveal">
                                <img src="Frontdesk/images/divider.png" alt="divider" width="76">
                            </span>
                        </div>


                        <div class="row mt-5 justify-content-between">
                            <div class="col-lg-7 mb-5 mb-lg-0">
                                <figure class="dotted-bg gsap-reveal-img ">
                                    <asp:Image ID="Image1" runat="server" alt="Image" class="img-fluid" />
                                </figure>
                            </div>
                            <div class="col-lg-4 pr-lg-5">
                                <h3 class="mb-4 heading-h3"><span class="gsap-reveal">We can make it together</span></h3>

                                <p class="lead gsap-reveal">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </p>
                                <p class="mb-4 gsap-reveal">
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                </p>

                                <p class="gsap-reveal"><a href="#" class="btn btn-outline-pill btn-custom-light">Details</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="unslate_co--section" id="services-section">
                    <div class="container">

                        <div class="section-heading-wrap text-center mb-5">
                            <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">OUR WORKS</span></h2>
                            <span class="gsap-reveal">
                                <img src="Frontdesk/images/divider.png" alt="divider" width="76"></span>
                        </div>

                        <div class="row gutter-v3">
                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="0">
                                    <div class="wrap-icon mb-3">
                                        <a href="index.aspx">
                                            <img src="Frontdesk/images/svg/001-options.svg" alt="Image" width="45"></a>
                                    </div>
                                    <a href="index.aspx">
                                        <h3>Master
                                <br>
                                            Planning</h3>
                                    </a>
                                    <p>總體規劃 </p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="100">
                                    <div class="wrap-icon mb-3">
                                        <img src="Frontdesk/images/svg/002-chat.svg" alt="Icon" width="45">
                                    </div>
                                    <h3>Style
                                <br>
                                        Design</h3>
                                    <p>風格計劃</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="200">
                                    <div class="wrap-icon mb-3">
                                        <img src="Frontdesk/images/svg/003-contact-book.svg" alt="Image" class="img-fluid" width="45">
                                    </div>
                                    <h3>Architectural
                                <br>
                                        Design</h3>
                                    <p>建築設計</p>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="0">
                                    <div class="wrap-icon mb-3">
                                        <img src="Frontdesk/images/svg/004-percentage.svg" alt="Image" width="45">
                                    </div>
                                    <h3>Interior
                                <br>
                                        Design</h3>
                                    <p>室內設計 </p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="100">
                                    <div class="wrap-icon mb-3">
                                        <img src="Frontdesk/images/svg/006-goal.svg" alt="Image" width="45">
                                    </div>
                                    <h3>Hotel
                                <br>
                                        Consultant</h3>
                                    <p>規劃顧問與建議書</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 mb-4">
                                <div class="feature-v1" data-aos="fade-up" data-aos-delay="200">
                                    <div class="wrap-icon mb-3">
                                        <img src="Frontdesk/images/svg/005-line-chart.svg" alt="Image" width="45">
                                    </div>
                                    <h3>Construction
                                <br>
                                        Decoration</h3>
                                    <p>裝修施工 </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <!-- END .counter -->

                <div class="unslate_co--section" id="testimonial-section">
                    <div class="container">
                        <div class="section-heading-wrap text-center mb-5">
                            <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">OUR TEAM DESIGNS</span></h2>
                            <span class="gsap-reveal">
                                <img src="Frontdesk/images/divider.png" alt="divider" width="76"></span>
                        </div>
                    </div>

                    <div class="owl-carousel testimonial-slider" data-aos="fade-up">
                        <div>
                            <div class="testimonial-v1">
                                <div class="testimonial-inner-bg">
                                    <span class="quote">&ldquo;</span>
                                    <blockquote>
                                        我們擅長使用獨到的眼光為每個空間設計彩妝，打造屬於您的專屬風格，使空間多了溫度，也提升了您的幸福指數，我們對於品質的堅持，來自嚴格的自我要求，為您的空間實現無限可能。
                                    </blockquote>
                                </div>

                                <div class="testimonial-author-info">
                                    <img src="Frontdesk/images/realimg/公司相關/03Lisa.jpg" alt="Image">
                                    <h3>LISA LIN</h3>
                                    <span class="d-block position">Product Designer @facebook</span>
                                </div>

                            </div>
                        </div>
                        <div>
                            <div class="testimonial-v1">
                                <div class="testimonial-inner-bg">
                                    <span class="quote">&ldquo;</span>
                                    <blockquote>
                                        在既有的空間，致力將生活美學與居住者的需求融合，讓空間與人達成平衡。我們利用設計成為人與空間溝通的語彙，打造每一位居住者獨一無二的城堡，達到無限生命美感與實用兼具的滿足。
                                    </blockquote>
                                </div>

                                <div class="testimonial-author-info">
                                    <img src="Frontdesk/images/realimg/公司相關/01AnthonyYAO.jpg" alt="Image">
                                    <h3>Anthony YAO</h3>
                                    <span class="d-block position">Product Designer @Shopify</span>
                                </div>

                            </div>
                        </div>
                        <div>
                            <div class="testimonial-v1">
                                <div class="testimonial-inner-bg">
                                    <span class="quote">&ldquo;</span>
                                    <blockquote>
                                        ＜因地制宜，因人而造＞ 我們沒有專業的傲慢、只有因地、因人出發的設計理念，透過專業的引導，落實溝通與執行，將空間的表情與需求結合。
               
                                    </blockquote>
                                </div>

                                <div class="testimonial-author-info">
                                    <img src="Frontdesk/images/realimg/公司相關/02Billie.jpg" alt="Image">
                                    <h3>Billie Yao</h3>
                                    <span class="d-block position">Product Designer @Twitter</span>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!-- END testimonial -->

                <%--        <div class="unslate_co--section" id="journal-section">
            <div class="container">
                <div class="section-heading-wrap text-center mb-5">
                    <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">My Journal</span></h2>
                    <span class="gsap-reveal">
                        <img src="images/divider.png" alt="divider" width="76"></span>
                </div>


                <div class="row gutter-v4 align-items-stretch">
                    <div class="col-sm-6 col-md-6 col-lg-8 blog-post-entry" data-aos="fade-up" data-aos-delay="0">

                        <a href="blog-single.html" class="grid-item blog-item w-100 h-100">
                            <div class="overlay">
                                <div class="portfolio-item-content">
                                    <h3>A Mounteering Guide For Beginners</h3>
                                    <p class="post-meta">By Joefrey <span class="small">&bullet;</span> 5 mins read</p>
                                </div>
                            </div>
                            <img src="images/post_1.jpg" class="lazyload" alt="Image" />
                        </a>


                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry" data-aos="fade-up" data-aos-delay="100">
                        <a href="blog-single.html" class="grid-item blog-item w-100 h-100">
                            <div class="overlay">
                                <div class="portfolio-item-content">
                                    <h3>A Mounteering Guide For Beginners</h3>
                                    <p class="post-meta">By Joefrey <span class="small">&bullet;</span> 5 mins read</p>
                                </div>
                            </div>
                            <img src="images/post_2.jpg" class="lazyload" alt="Image" />
                        </a>
                    </div>


                    <div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry" data-aos="fade-up" data-aos-delay="0">

                        <a href="blog-single.html" class="grid-item blog-item w-100 h-100">
                            <div class="overlay">
                                <div class="portfolio-item-content">
                                    <h3>A Mounteering Guide For Beginners</h3>
                                    <p class="post-meta">By Joefrey <span class="small">&bullet;</span> 5 mins read</p>
                                </div>
                            </div>
                            <img src="images/post_3.jpg" class="lazyload" alt="Image" />
                        </a>


                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry" data-aos="fade-up" data-aos-delay="100">
                        <a href="blog-single.html" class="grid-item blog-item w-100 h-100">
                            <div class="overlay">
                                <div class="portfolio-item-content">
                                    <h3>A Mounteering Guide For Beginners</h3>
                                    <p class="post-meta">By Joefrey <span class="small">&bullet;</span> 5 mins read</p>
                                </div>
                            </div>
                            <img src="images/post_4.jpg" class="lazyload" alt="Image" />
                        </a>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4 blog-post-entry" data-aos="fade-up" data-aos-delay="200">
                        <a href="blog-single.html" class="grid-item blog-item w-100 h-100">
                            <div class="overlay">
                                <div class="portfolio-item-content">
                                    <h3>A Mounteering Guide For Beginners</h3>
                                    <p class="post-meta">By Joefrey <span class="small">&bullet;</span> 5 mins read</p>
                                </div>
                            </div>
                            <img src="images/post_5.jpg" class="lazyload" alt="Image" />
                        </a>
                    </div>


                </div>

            </div>
        </div>--%>
                <!-- END blog posts -->


                <div class="unslate_co--section" id="contact-section">
                    <div class="container">
                        <div class="section-heading-wrap text-center mb-5">
                            <h2 class="heading-h2 text-center divider"><span class="gsap-reveal">contact</span></h2>
                            <span class="gsap-reveal">
                                <img src="Frontdesk/images/divider.png" alt="divider" width="76"></span>
                        </div>


                        <div class="row justify-content-between">

                            <div class="col-md-6">
                                <div method="post" class="form-outline-style-v1" id="contactForm">
                                    <div class="form-group row mb-0">






                                        <div class="col-lg-6 form-group gsap-reveal">
                                            <label for="name">Name</label>

                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-6 form-group gsap-reveal">
                                            <label for="email">Email</label>

                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-12 form-group gsap-reveal">
                                            <label for="message">Write your message...</label>

                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row gsap-reveal">
                                        <div class="col-md-12 d-flex align-items-center">

                                            <asp:Button ID="Button1" runat="server" Text="Send Message" class="btn btn-outline-pill btn-custom-light mr-3" />
                                            <span class="submitting"></span>
                                        </div>
                                    </div>
                                </div>
                                <div id="form-message-warning" class="mt-4"></div>
                                <div id="form-message-success">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <div class="contact-info-v1">
                                    <div class="gsap-reveal d-block">
                                        <span class="d-block contact-info-label">Email</span>
                                        <a href="#" class="contact-info-val">
                                            <asp:Literal ID="Literal3" runat="server"></asp:Literal></a>
                                    </div>
                                    <div class="gsap-reveal d-block">
                                        <span class="d-block contact-info-label">Phone</span>
                                        <a href="#" class="contact-info-val">
                                            <asp:Literal ID="Literal4" runat="server"></asp:Literal></a>
                                    </div>
                                    <div class="gsap-reveal d-block">
                                        <span class="d-block contact-info-label">Address</span>
                                        <address class="contact-info-val">
                                            <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                            <br>
                                            <p class="mb-0">
                                                <br />
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.4056347017704!2d121.5471583150067!3d25.054237183962794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abe88ee5390b%3A0x1ae40894b9afe552!2zMTA15Y-w5YyX5biC5p2-5bGx5Y2A5pWm5YyW5YyX6LevMTUzLTHomZ8xMOaok0LlrqQ!5e0!3m2!1szh-TW!2stw!4v1595863715771!5m2!1szh-TW!2stw" width="400" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                                <a data-fancybox data-type="iframe" href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.4056347017704!2d121.5471583150067!3d25.054237183962794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abe88ee5390b%3A0x1ae40894b9afe552!2zMTA15Y-w5YyX5biC5p2-5bGx5Y2A5pWm5YyW5YyX6LevMTUzLTHomZ8xMOaok0LlrqQ!5e0!3m2!1szh-TW!2stw!4v1595863715771!5m2!1szh-TW!2stw?key=AIzaSyAb68lOoFDAoKiATtux5vrDgw7Cu_D-Dxo" class="btn btn-primary" data-small-btn="true" data-iframe='{"preload":false}'>Google地圖</a>
                                                
                                        </address>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- END .unslate_co-site-inner -->

            <footer class="unslate_co--footer unslate_co--section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-7">

                            <div class="footer-site-logo"><a href="#">AYAO<span>.</span></a></div>

                            <ul class="footer-site-social">
                                <li><a href="https://www.facebook.com/ayaodesign/">Facebook</a></li>
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Instagram</a></li>
                                <li><a href="#">Dribbble</a></li>
                                <li><a href="#">Behance</a></li>
                            </ul>

                            <p class="site-copyright">

                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
               
                                <script>
                                    document.write(new Date().getFullYear());
                </script>
                                All rights reserved | This template is made with <i class="icon-heart"
                                    aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                            </p>

                        </div>
                    </div>

                </div>
            </footer>
        </div>
        <!-- Loader -->
        <div id="unslate_co--overlayer"></div>
        <div class="site-loader-wrap">
            <div class="site-loader"></div>
        </div>
        </div>
        <script src="Frontdesk/js/scripts-dist.js"></script>
        <script src="Frontdesk/js/main.js"></script>
        <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<%--        <script>

            $(function () {

                $.ajax({
                    type: 'POST',
                    url: 'WebService.asmx/ProjectsAll',
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {

                        $(data.d).each(function (index, item) {

                            $("#pass99").append(

                           `<li>
                          <a href="single-Project.aspx?id=${item.ProjectId}">${item.ProjectName3}</a>
                       </li>`);

                        })
                    },
                    error: function (x) {
                        alert("error");
                    }
                });

            });

        </script>--%>
        <script>
            $('.fancybox').fancybox({
                toolbar: false,
                smallBtn: true,
                iframe: {
                    preload: false
                }
            })
        </script>
    </form>

</body>
</html>
