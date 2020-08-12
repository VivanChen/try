<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>
<%@ Import Namespace="System.IO" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            int id1 = int.Parse(Request.QueryString["id"]);

            User p = UserLoginUtility.GetAllUserById1(id1);

            TextBox1.Text = p.UserName;
            TextBox2.Text = p.Password;
            TextBox3.Text = p.Email;
            TextBox4.Text = p.Role;
            Image1.ImageUrl = $"~/Frontdesk/images/realimg/公司相關/{p.UserImage}";
            ProjectIdLabel1.Text = p.UserId.ToString();

            HiddenField1.Value = p.UserId.ToString();
            HiddenField2.Value = p.UserImage;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //檔案目錄
         int n = 1;
        int z = 1;
        int q = 1;
        //string savePath = "G:\\恆毅課程\\seeMore\\seeMore\\Upload\\";
        //string savePath = "D:\\恆毅課程\\專案\\seeMore\\seeMore\\test\\";
        string savePath = "C:\\恆毅課程\\seeMore-BG\\seeMore-BG\\Frontdesk\\images\\realimg\\公司相關\\";
        string savePath2 = "C:\\恆毅課程\\seeMore\\seeMore\\Frontdesk\\images\\realimg\\公司相關\\";
        int total = 0;
        if (FileUpload1.HasFile)
        {

            string ext = System.IO.Path.GetExtension(FileUpload1.FileName);

            foreach (HttpPostedFile file in FileUpload1.PostedFiles)
            {
                string fileName = Path.GetFileName(file.FileName);
                file.SaveAs(savePath + TextBox1.Text + n++ + ".jpg");
                file.SaveAs(savePath2 + TextBox1.Text + z++ + ".jpg");
            }


            User p = new User()
            {
                UserId = int.Parse(HiddenField1.Value),
                UserName = TextBox1.Text,
                Password = TextBox2.Text,
                Email = TextBox3.Text,
                Role = TextBox4.Text,
                UserImage = TextBox1.Text + q +".jpg",


            };

            UserLoginUtility.UpdateUser(p);
            Response.Redirect("~/bkUserList.aspx");
        }
        else
        {
            Label1.Text = "請至少上傳一張照片";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/bkUserList.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
        <!--引用jQuery-->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" type="text/javascript"></script>
        <!--引用SweetAlert2.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.0/sweetalert2.all.js"></script>
        <script type="text/javascript"> 
            $(function () {
                $("#<%= Button1.ClientID%>").click(function () {
                    myConfirm();
                });
            });

            //自訂預設值
            swal.setDefaults({
                confirmButtonText: "確定",
                cancelButtonText: "取消"
            });
            //swal.resetDefaults();//清空自訂預設值
             
            function myConfirm() {

                let btnName = $("input#<%= Button1.ClientID%>").attr("name");
                //confirm dialog範例
                swal({
                    title: "確定修改？",
                    html: "按下確定後作品將會修改上傳",
                    type: "question",
                    showCancelButton: true//顯示取消按鈕
                }).then(
                    function (result) {
                        if (result.value) {
                            //使用者按下「確定」要做的事
                            //呼叫ASP.net自動產生的JS函數，第二個參數不給值避免網頁出錯
                            __doPostBack(btnName, "");
                        } else if (result.dismiss === "cancel") {
                            //使用者按下「取消」要做的事
                            swal("取消", "資料未上傳", "error");
                        }
                    }//end function
                );//end then 
            }//end function myConfirm()

        </script>  

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">

    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">使用者</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">修改</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            
                            <div class="table-responsive">


                                <h4>編號:<asp:Label ID="ProjectIdLabel1" runat="server" /></h4>
                                <br />
                                <asp:Image ID="Image1" runat="server" style="width:200px" />
                                <div class="form-row">
                                    
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">名稱</label>
                                        <%--<input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="1123" >--%>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">密碼</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">郵箱</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">權限</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" />
                                    </div>

                                </div>
                                
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="card">
                                                    <div class="form-group col-md-12">
                                                        

                                                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True"></asp:FileUpload>
                                                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" ></asp:Label>
                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                

                                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                                    <asp:HiddenField ID="HiddenField2" runat="server" />

                                                    <asp:Button ID="Button1" runat="server" Text="更新" class="btn btn-primary  btn-block" OnClick="Button1_Click" OnClientClick="return false"></asp:Button>
                                                    <asp:Button ID="Button2" runat="server" Text="取消" class="btn btn-danger  btn-block" OnClick="Button2_Click"></asp:Button>






                                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
     <script src="sweetalert2-master/src/sweetalert2.js"></script>
</asp:Content>

