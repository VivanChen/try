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
        string savePath = "C:\\恆毅課程\\seeMore-BG\\seeMore-BG\\Frontdesk\\images\\realimg\\公司相關\\";
        string savePath2 = "C:\\恆毅課程\\seeMore\\seeMore\\Frontdesk\\images\\realimg\\公司相關\\";
        //string savePath = "D:\\恆毅課程\\專案\\seeMore\\seeMore\\test\\";
        int total = 0;
        if (File1.HasFile)
        {

            string ext = System.IO.Path.GetExtension(File1.FileName);

            foreach (HttpPostedFile file in File1.PostedFiles)
            {
                string fileName = Path.GetFileName(file.FileName);
                file.SaveAs(savePath + TextBox1.Text + n++ + ".jpg");
                file.SaveAs(savePath2 + TextBox1.Text + z++ + ".jpg");
            }
            Label1.Text = File1.PostedFiles.Count.ToString() + " Files Uploaded Successfully";

            Employee p = new Employee()
            {

                EmployeeImage = TextBox1.Text + q + ".jpg",
                EmployeeName = TextBox1.Text,
                EmployeeTitles = TextBox2.Text,
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
                EmployeeEmail = TextBox3.Text,

            };

            EmployeeUtility.InsertEmployee(p);
            Response.Redirect("~/bkEmployeeList.aspx");
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
                html: "按下確定後作品將會上傳",
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
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">新增履歷</a></li>
                </ol>
            </div>
        </div>
        <div class="col-12">
            <div class="w3-container w3-padding-large w3-grey">
                <h3 id="contact"><b>新增履歷</b></h3>

                <hr class="w3-opacity">
            </div>
            <div class="container-fluid">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">使用者相關</h4>
                        <div class="form-row">
                            <div class="col-md-4 mb-3 ">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="姓名" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="職稱" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="郵件" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">履歷相關</h4>
                        <div class="form-row">

                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="履歷1" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="履歷2" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="履歷3" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="履歷4" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="履歷5" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="履歷6" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="履歷7" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="履歷8" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="履歷9" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="履歷10" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="履歷11" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox15" runat="server" class="form-control" placeholder="履歷12" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox16" runat="server" class="form-control" placeholder="履歷13" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox17" runat="server" class="form-control" placeholder="履歷14" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox18" runat="server" class="form-control" placeholder="履歷15" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox19" runat="server" class="form-control" placeholder="履歷16" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">

                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox20" runat="server" class="form-control" placeholder="履歷17" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>

                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox21" runat="server" class="form-control" placeholder="履歷18" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox22" runat="server" class="form-control" placeholder="履歷19" required=""></asp:TextBox>
                                <div class="invalid-feedback">
                                </div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <label for="validationCustom03"></label>
                                <asp:TextBox ID="TextBox23" runat="server" class="form-control" placeholder="履歷20" required=""></asp:TextBox>
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
                                <asp:Button ID="Button1" runat="server" Text="上傳" class="btn mb-1 btn-primary btn-lg" OnClick="Button1_Click" OnClientClick="return false" />
                                <asp:LinkButton ID="LinkButton1" runat="server" />
                                <asp:Button ID="Button2" runat="server" Text="DEMO"  OnClientClick="return false"/>
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
                $("#mycontent_TextBox2").val("軟體工程師");
                $("#mycontent_TextBox3").val("jay13878@gmail.com");
                $("#mycontent_TextBox4").val("群聯資訊系統工程師8年");
                $("#mycontent_TextBox5").val("電腦專案整合");
                $("#mycontent_TextBox6").val("電腦設備裝配");
                $("#mycontent_TextBox7").val("電信設備安裝");
                $("#mycontent_TextBox8").val("網路配線工具使用");
                $("#mycontent_TextBox9").val("網路規畫管理");
                $("#mycontent_TextBox10").val("VOIP");
                $("#mycontent_TextBox11").val("C#");
                $("#mycontent_TextBox12").val("ASP.NET");
                $("#mycontent_TextBox13").val("LINQ");
                $("#mycontent_TextBox14").val("恆逸微軟全方位網站程式設計師養成班");
                
            })
        })
    </script>
</asp:Content>

