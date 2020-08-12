<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Page.IsPostBack == false)
        {
            Repeater1.DataSource = EmployeeUtility.GetAllEmployee();
            Repeater1.DataBind();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         Button btn = sender as Button;

        int id = int.Parse(btn.CommandArgument);
        Response.Redirect("~/bkEmployeeEdit.aspx?id="+id);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
         Button btn = sender as Button;

        int id = int.Parse(btn.CommandArgument);
        EmployeeUtility.DeleteEmployee(id);

        Repeater1.DataSource = EmployeeUtility.GetAllEmployee();
        Repeater1.DataBind();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">

    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">首頁</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">履歷清單</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid" >
            <div class="row" >
                <div class="col-12" >
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">履歷清單</h4>

                            <div class="table-responsive">
                                <asp:Button ID="Button2" runat="server" Text="新增" CssClass="btn btn-primary btn-lg btn-block" PostBackUrl="~/bkEmployeeAdd.aspx" />

                                <asp:Repeater ID="Repeater1" runat="server">

                                    <HeaderTemplate>
                                         <div class="table-responsive-sm">
                                        <table class="table  table-hover  table-responsive-sm  text-center  text-truncate display " id="mytable">

                                            <thead class="thead-light table table-bordered">
                                                <tr>
                                                    <th>功能</th>
                                                    <th>編號</th>
                                                    <th>名稱</th>
                                                    <th>職稱</th>
                                                    <th>郵件</th>
                                                    <th>圖片</th>
                                                </tr>
                                            </thead>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" Text="編輯" CssClass="btn-info w3-button w3-black" CommandArgument='<%# Eval("EmployeeId") %>' OnClick="Button3_Click"  />
                                                
                                                <asp:Button ID="Button4" runat="server" Text="刪除" CssClass="btn-danger w3-button w3-black " CommandArgument='<%# Eval("EmployeeId") %>' OnClick="Button4_Click" OnClientClick="return confirm('確定要刪除?');" />
                                                
                                            </td>
                                            <td><%# Eval("EmployeeId") %></td>
                                            <td><%# Eval("EmployeeName") %></td>
                                            <td><%# Eval("EmployeeTitles") %></td>
                                            <td><%# Eval("EmployeeEmail") %></td>                                                                             
                                            <td><img src='Frontdesk/images/realimg/公司相關/<%# Eval("EmployeeImage") %>' style="width: 100px" /></td>
                                            
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>
                                         </div>
                                    </FooterTemplate>
                                </asp:Repeater>

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
    <script src="plugins/common/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/gleek.js"></script>
    <script src="js/styleSwitcher.js"></script>
    <script src="plugins/tables/js/jquery.dataTables.min.js"></script>




</asp:Content>

