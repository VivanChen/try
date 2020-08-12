<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message_Main.aspx.cs" Inherits="Message_Main" %>

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
        <asp:Button ID="Reply" runat="server" Text="回應文章" OnClick="Reply_Click" />
        <br />
        <br />
        主題:<asp:Label ID="Message_header" runat="server" Text="Label"></asp:Label>
        <br />
        發表人:<asp:Label ID="Message_Name" runat="server" Text="Label"></asp:Label>
        發表時間:<asp:Label ID="Message_Time" runat="server" Text="Label"></asp:Label>
        <br />
        內容:<asp:Label ID="Main" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <asp:Label ID="who" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                <br />
                <asp:Label ID="repmain" runat="server" Text='<%# Bind("main") %>'></asp:Label>


            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
