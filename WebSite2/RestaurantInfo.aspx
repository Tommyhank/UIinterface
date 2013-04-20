<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RestaurantInfo.aspx.cs" Inherits="WebSite2_RestaurantInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="Pic_listView" runat="server">
        </asp:ListView>
        <asp:FileUpload ID="openFileDialog" runat="server" />
        <br />
        <asp:Label ID="UploadStatusLabel" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="butAdd" runat="server" Text="Insert" OnClick="butAdd_Click" />
        <asp:Button ID="butDelete" runat="server" Text="Delete" />
        <asp:Button ID="butClear" runat="server" Text="Clear" />
        <asp:Button ID="butClose" runat="server" Text="Close" /><br /><br />
        <asp:Panel ID="Panel1" runat="server" Height="287px" Width="565px">
            <asp:Image ID="Image1" runat="server" Height="233px" Width="558px" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
