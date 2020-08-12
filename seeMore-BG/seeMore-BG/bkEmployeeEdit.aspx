<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<%@ Import Namespace="System.IO" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            int id1 = int.Parse(Request.QueryString["id"]);

            Employee p = EmployeeUtility.GetAllEmployeeById1(id1);

            TextBox1.Text = p.EmployeeName;
            TextBox2.Text = p.EmployeeTitles;
            TextBox3.Text = p.EmployeeEmail;
            TextBox4.Text = p.EmployeeResume01;
            TextBox5.Text = p.EmployeeResume02;
            TextBox6.Text = p.EmployeeResume03;
            TextBox7.Text = p.EmployeeResume04;
            TextBox8.Text = p.EmployeeResume05;
            TextBox9.Text = p.EmployeeResume06;
            TextBox10.Text = p.EmployeeResume07;
            TextBox11.Text = p.EmployeeResume08;
            TextBox12.Text = p.EmployeeResume09;
            TextBox13.Text = p.EmployeeResume10;
            TextBox14.Text = p.EmployeeResume11;
            TextBox15.Text = p.EmployeeResume12;
            TextBox16.Text = p.EmployeeResume13;
            TextBox17.Text = p.EmployeeResume14;
            TextBox18.Text = p.EmployeeResume15;
            TextBox19.Text = p.EmployeeResume16;
            TextBox20.Text = p.EmployeeResume17;
            TextBox21.Text = p.EmployeeResume18;
            TextBox22.Text = p.EmployeeResume19;
            TextBox23.Text = p.EmployeeResume20;
            Image1.ImageUrl = $"~/Frontdesk/images/realimg/公司相關/{p.EmployeeImage}";
            ProjectIdLabel1.Text = p.EmployeeId.ToString();

            HiddenField1.Value = p.EmployeeId.ToString();

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
                file.SaveAs(savePath + TextBox2.Text + n++ + ".jpg");
                file.SaveAs(savePath2 + TextBox2.Text + z++ + ".jpg");
            }


            Employee p = new Employee()
            {
                EmployeeId = int.Parse(HiddenField1.Value),
                EmployeeName = TextBox2.Text,
                EmployeeTitles = TextBox2.Text,
                EmployeeEmail = TextBox3.Text,
                EmployeeResume01 = TextBox4.Text,
                EmployeeResume02 = TextBox5.Text,
                EmployeeResume03 = TextBox6.Text,
                EmployeeResume04 = TextBox7.Text,
                EmployeeResume05 = TextBox8.Text,
                EmployeeResume06 = TextBox9.Text,
                EmployeeResume07 = TextBox10.Text,
                EmployeeResume08 = TextBox11.Text,
                EmployeeResume09 = TextBox12.Text,
                EmployeeResume10 = TextBox13.Text,
                EmployeeResume11 = TextBox14.Text,
                EmployeeResume12 = TextBox15.Text,
                EmployeeResume13 = TextBox16.Text,
                EmployeeResume14 = TextBox17.Text,
                EmployeeResume15 = TextBox18.Text,
                EmployeeResume16 = TextBox19.Text,
                EmployeeResume17 = TextBox20.Text,
                EmployeeResume18 = TextBox21.Text,
                EmployeeResume19 = TextBox22.Text,
                EmployeeResume20 = TextBox23.Text,
                EmployeeImage = TextBox2.Text + q + ".jpg",
            };

            EmployeeUtility.UpdateEmployee(p);
            Response.Redirect("~/bkEmployeeList.aspx");
        }
        else
        {
            Label1.Text = "請至少上傳一張照片";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/bkEmployeeList.aspx");
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">作品</a></li>
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


                                <h4>作品編號:<asp:Label ID="ProjectIdLabel1" runat="server" /></h4>
                                <br />
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">姓名</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">職稱</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">郵件</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷1</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷2</label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷3</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷4</label>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷5</label>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷6</label>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷7</label>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷8</label>
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" />
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷9</label>

                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷10</label>
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷11</label>
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷12</label>
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷13</label>

                                        <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷14</label>
                                        <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷15</label>
                                        <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷16</label>
                                        <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">履歷17</label>

                                        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷18</label>
                                        <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷19</label>
                                        <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">履歷20</label>
                                        <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="form-group col-md-12">
                                                    <h4>圖片預覽</h4>
                                                    <div class="form-row">

                                                        <div class="form-group col-md-2">
                                                            
                                                            <asp:Image ID="Image1" runat="server" style="width: 70%" alt="Image" class="rounded float-right" />
                                                        </div>

                                                    </div>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True"></asp:FileUpload>
                                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <asp:HiddenField ID="HiddenField2" runat="server" />
                            <asp:HiddenField ID="HiddenField3" runat="server" />
                            <asp:HiddenField ID="HiddenField4" runat="server" />
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

