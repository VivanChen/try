<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<%@ Import Namespace="System.IO" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            int id1 = int.Parse(Request.QueryString["id"]);

            Project p = ProjectAllUtility.GetAllProjectById1(id1);

            TextBox1.Text = p.projectImageIndex;
            TextBox2.Text = p.ProjectName1;
            TextBox3.Text = p.ProjectName2;
            TextBox4.Text = p.ProjectName3;
            TextBox5.Text = p.ProjectTitle01;
            TextBox6.Text = p.ProjectTitle02;
            TextBox7.Text = p.ProjectTitle03;
            TextBox8.Text = p.ProjectTitle03;
            TextBox9.Text = p.ProjectText01;
            TextBox10.Text = p.ProjectText02;
            TextBox11.Text = p.ProjectText03;
            TextBox12.Text = p.ProjectText04;
            TextBox13.Text = p.ProjectDetal01;
            TextBox14.Text = p.ProjectDetal02;
            TextBox15.Text = p.ProjectDetal03;
            ProjectIdLabel1.Text = p.ProjectId.ToString();

            HiddenField1.Value = p.ProjectId.ToString();
            HiddenField2.Value = p.ProjectName2;
            HiddenField3.Value = p.principalImage;
            HiddenField4.Value = p.projectImageIndex;
            List<string> projectImage = new List<string>();
            List<Project> projectName = new List<Project>();
            int n = 1;
            int id2 = int.Parse(Request.QueryString["id"]);
            Project Name = ProjectAllUtility.GetAllProjectById1(id2);
            projectImage = ProjectAllUtility.ProjectAllImage(id2);
            var query = from prod in projectImage
                        select new Project()
                        {
                            ProjectName2 = prod,
                            ProjectName3 = Name.ProjectName3 + n++
                        };

            Repeater1.DataSource = query;
            Repeater1.DataBind();
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


            Project p = new Project()
            {
                ProjectId = int.Parse(HiddenField1.Value),
                projectImageIndex = TextBox2.Text + q + ".jpg",
                ProjectName1 = TextBox1.Text,
                ProjectName2 = TextBox2.Text,
                ProjectName3 = TextBox3.Text,
                ProjectTitle01 = TextBox4.Text,
                ProjectTitle02 = TextBox5.Text,
                ProjectTitle03 = TextBox6.Text,
                ProjectTitle04 = TextBox7.Text,
                ProjectText01 = TextBox8.Text,
                ProjectText02 = TextBox9.Text,
                ProjectText03 = TextBox10.Text,
                ProjectText04 = TextBox11.Text,
                ProjectDetal01 = TextBox12.Text,
                ProjectDetal02 = TextBox13.Text,
                ProjectDetal03 = TextBox14.Text,
                principalName = DropDownList1.SelectedItem.Text,
                principalImage = DropDownList1.SelectedItem.Value

            };

            ProjectAllUtility.UpdateProject(p);
            Response.Redirect("~/bkProjectList.aspx");
        }
        else
        {
            Label1.Text = "請至少上傳一張照片";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/bkProjectList.aspx");
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
                                        <label for="inputEmail4">專案URL</label>
                                        <%--<input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="1123" >--%>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">網頁標題1</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">網頁標題2</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">網頁標題3</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" />
                                    </div>

                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">專案標題1</label>
                                        <%--<input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="1123" >--%>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案標題2</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案標題3</label>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案標題4</label>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="inputEmail4">專案內容1</label>
                                        <%--<input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="1123" >--%>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案內容2</label>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案內容3</label>
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputPassword4">專案內容4</label>
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleFormControlTextarea1">專案敘述1</label>
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" Rows="5" TextMode="multiline" />
                                        <div class="form-group">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleFormControlTextarea1">專案敘述2</label>
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" Rows="5" TextMode="multiline" />
                                        <div class="form-group">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleFormControlTextarea1">專案敘述3</label>
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" Rows="5" TextMode="multiline" />
                                        <div class="form-group">
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">專案負責人</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem Value="01AnthonyYAO.jpg">Anthony YAO</asp:ListItem>
                                            <asp:ListItem Value="02Billie.jpg">Billie Yao</asp:ListItem>
                                            <asp:ListItem Value="03Lisa.jpg">LISA LIN</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="card">
                                                    <div class="form-group col-md-12">
                                                        <h4>專案圖片預覽</h4>
                                                        <div class="form-row">
                                                            <asp:Repeater ID="Repeater1" runat="server">
                                                                <ItemTemplate>
                                                                    <div class="form-group col-md-2">
                                                                        <img src='Upload/<%# Eval("ProjectName2") %>' style="width: 70%" alt="Image" class="rounded float-right" />
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
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

