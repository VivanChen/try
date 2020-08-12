<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"]);
            ContactUtility.DeleteContact(id);
        }
        Response.Redirect("~/bkContactList.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="myCSS" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myJavaScript" runat="Server">
</asp:Content>

