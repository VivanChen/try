<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">


    protected void Button2_Click(object sender, EventArgs e)
    {
        User m = UserLoginUtility.UserLogin(TextBox1.Text, TextBox2.Text);
        string ro = m.Role;
        Session["key"] = m.UserId;
        if (m != null)
        {
            
            
            
            if (ro=="1"||ro=="2")
            {
                FormsAuthentication.SetAuthCookie(m.Role.ToString(), false);
                Response.Redirect("~/Bk_index.aspx");
            }
            else if(ro=="3")
            {
                FormsAuthentication.SetAuthCookie(m.Role.ToString(), false);
                Response.Redirect("~/Bk_index.aspx");
            }

        }
        else
        {
           Response.Redirect("~/login.aspx");
        }
    }

</script>

<html dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>AYAO-管理系統</title>
    <link href="dist/css/style.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


</head>

<body class="h-100">
    <form id="form1" runat="server">
        <div class="main-wrapper">
            <div class="preloader">
                <div class="lds-ripple">
                    <div class="lds-pos"></div>
                    <div class="lds-pos"></div>
                </div>
            </div>
            <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
                <div class="auth-box bg-dark border-top border-secondary">
                    <div id="loginform">
                        <div class="text-center p-t-20 p-b-20">
                            <span class="db">
                                <h1><img src="Frontdesk/images/realimg/公司相關/logo.png" class="w-25" />AYAO管理系統</h1></span>
                            
                        </div>
                        <!-- Form -->
                        <div class="form-horizontal m-t-20" id="loginform" action="index.html">
                            <div class="row p-b-30">
                                <div class="col-12">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                        </div>
                                        <%--<input type="text" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" required="">--%>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg" placeholder="員工帳號" aria-describedby="basic-addon1" required="" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                        </div>
                                        <%--<input type="text" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" required="">--%>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-lg " placeholder="員工密碼" aria-label="Password" aria-describedby="basic-addon1"  required="" TextMode="Password"></asp:TextBox>


                                    </div>

                                </div>
                            </div>
                            <div class="row border-top border-secondary">
                                <div class="col-12">
                                    <div class="form-group">
                                        <div class="p-t-20">
                                            
                                            <%--<button class="btn btn-success float-right" type="submit">Login</button>--%>
                                            <asp:Button ID="Button2" runat="server" Text="登入" CssClass="btn btn-success float-right" OnClick="Button2_Click" />
                                            <asp:Button ID="Button3" runat="server" Text="DEMO管理者" CssClass="btn btn-info" OnClientClick="return false" />
                                            <asp:Button ID="Button4" runat="server" Text="DEMO使用者" CssClass="btn btn-info" OnClientClick="return false" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <script src="assets/libs/jquery/dist/jquery.min.js"></script>
        <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
        <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>

        <script>

            $('[data-toggle="tooltip"]').tooltip();
            $(".preloader").fadeOut();

            $('#to-recover').on("click", function () {
                $("#loginform").slideUp();
                $("#recoverform").fadeIn();
            });
            $('#to-login').click(function () {

                $("#recoverform").hide();
                $("#loginform").fadeIn();
            });
    </script>
                <script>
        $(function() {
            $("#Button3").click(function() {
                $("#TextBox1").val("AnthonyYao@gmail.com");
                $("#TextBox2").val("123");
        
                
            })
        })
    </script>
                <script>
        $(function() {
            $("#Button4").click(function() {
                $("#TextBox1").val("LISALIN@gmail.com");
                $("#TextBox2").val("123");
                
                
            })
        })
    </script>
    </form>
</body>
</html>
