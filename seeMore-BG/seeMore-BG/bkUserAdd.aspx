<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<%@ Import Namespace="System.IO" %>

<script runat="server">




    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Page.IsPostBack == false)
        //{
        //    Repeater1.DataSource = ImageUtility.GetAllImages();
        //    Repeater1.DataBind();
        //}

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
        

        if (File1.HasFile)
        {

            string ext = System.IO.Path.GetExtension(File1.FileName);

            foreach (HttpPostedFile file in File1.PostedFiles)
            {
                string fileName = Path.GetFileName(file.FileName);
                file.SaveAs(savePath + TextBox1.Text + n++ +".jpg");
                file.SaveAs(savePath2 + TextBox1.Text + z++ +".jpg");

            }
            Label1.Text = File1.PostedFiles.Count.ToString() + " Files Uploaded Successfully";

            User p = new User()
            {

                UserName = TextBox1.Text,
                Password = TextBox2.Text,
                Email = TextBox3.Text,
                Role = TextBox4.Text,
                UserImage = TextBox1.Text + q +".jpg"
            };

            UserLoginUtility.InsertUser(p);


            Response.Redirect("~/bkUserList.aspx");
        }
        else
        {

        }









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
                    title: "確定上傳？",
                    html: "按下確定後使用者將會新增",
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">首頁</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">新增使用者</a></li>
                </ol>
            </div>
        </div>
        <div class="col-12">
            <div class="w3-container w3-padding-large w3-grey">
                <h3 id="contact"><b>新增使用者</b></h3>

                <hr class="w3-opacity">
            </div>
            <div class="container-fluid">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">使用者相關</h4>
                        <div class="form-row">
                            <div class="col-md-3 mb-2 ">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="名稱" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="密碼" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="郵箱" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="權限" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                 

                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">上傳</h4>
                            <div class="form-row">
                                <div class="col-md-3 mb-2">
                                    <asp:FileUpload ID="File1" runat="server" AllowMultiple="True" />
                                </div>
                                <div class="col-md-3 mb-2">
                                    <asp:Button ID="Button1" runat="server" Text="上傳" class="btn mb-1 btn-primary btn-lg" OnClick="Button1_Click"  OnClientClick="return false"/>
                                     <asp:LinkButton ID="LinkButton1" runat="server" />
                                    <asp:Button ID="Button2" runat="server" Text="DEMO" OnClientClick="return false" />
                                </div>
                                <div class="col-md-3 mb-2">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <img id="demo" style="width: 200px" />

                                </div>


                            </div>
                        </div>
                    </div>               
            </div>
        </div>
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
    <script src="sweetalert2-master/src/sweetalert2.js"></script>
    <script>
        $('#mycontent_File1').change(function () {
            var file = $('#mycontent_File1')[0].files[0];
            var reader = new FileReader;
            reader.onload = function (e) {
                $('#demo').attr('src', e.target.result);
            };
            reader.readAsDataURL(file);
        });
    </script>
        <script>
        $(function() {
            $("#mycontent_Button2").click(function() {
                $("#mycontent_TextBox1").val("陳韋安");
                $("#mycontent_TextBox2").val("123");
                $("#mycontent_TextBox3").val("jay@gmail.com");
                $("#mycontent_TextBox4").val("3");
               
            })
        })
    </script>
</asp:Content>

