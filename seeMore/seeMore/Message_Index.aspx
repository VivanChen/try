<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message_Index.aspx.cs" Inherits="Message_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="我要留言" OnClick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" >
            <Columns>
                <asp:TemplateField HeaderText="編號" InsertVisible="False" SortExpression="id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="主題" SortExpression="header">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("header") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Bind("header") %>' NavigateUrl='<%# "Message_Main.aspx?id="+Eval("id") %>'>HyperLink</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="發表人" SortExpression="name" />
                <asp:BoundField DataField="initDate" HeaderText="留言日期" SortExpression="initDate" />
                <asp:TemplateField HeaderText="回應"></asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
