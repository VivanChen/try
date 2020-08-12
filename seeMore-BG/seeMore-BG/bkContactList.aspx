<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string config = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["AyoConnectionString"].ConnectionString;
            SqlConnection rconnection = new SqlConnection(config);

            SqlCommand Rcommand = new SqlCommand($"SELECT * FROM contact", rconnection);


            rconnection.Open();

            SqlDataReader rereader = Rcommand.ExecuteReader();
            Repeater1.DataSource = rereader;//repeater的資料來源是從rereader來
            Repeater1.DataBind();//執行繫結

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"]);
            ContactUtility.DeleteContact(id);
        }
        Response.Redirect("~/bkContactList.aspx");

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">

    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">首頁</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">清單</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">留言清單</h4>

                            <div class="table-responsive">
                                <table id="example" class="display col-12">


                                    <asp:Repeater ID="Repeater1" runat="server">

                                        <HeaderTemplate>
                                            <thead>
                                                <tr>
                                                    <th>編號</th>
                                                    <th>留言人姓名</th>
                                                    <th>留言人郵件</th>
                                                    <th>內容</th>
                                                    <th>留言時間</th>
                                                    <th>功能</th>
                                                </tr>
                                            </thead>

                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tbody>
                                                <tr>
                                                    <td><%# Eval("Id") %></td>
                                                    <td><%# Eval("name") %></td>
                                                    <td><%# Eval("email") %></td>
                                                    <td><%# Eval("message") %></td>
                                                    <td><%# Eval("time") %></td>
                                                    <td>
                                                        <asp:HyperLink ID="HyperLink2" CssClass="btn btn-danger" runat="server"
                                                            NavigateUrl='<%# Eval("Id" , "BKDelete.aspx?id={0}") %>' onclick="check()">刪除</asp:HyperLink>
                                                        <%--<asp:Button ID="Button2" runat="server" Text="刪除" CommandArgument='<%# Eval("Id") %>' CssClass="btn-danger w3-button w3-black" OnClick="Button2_Click" />--%>
                                                    </td>
                                                </tr>
                                            </tbody>

                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <tfoot>
                                            </tfoot>

                                        </FooterTemplate>
                                    </asp:Repeater>





                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
    <script src="plugins/common/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/gleek.js"></script>
    <script src="js/styleSwitcher.js"></script>
    <script src="plugins/tables/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>



</asp:Content>

