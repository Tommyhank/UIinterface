<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_Userinfo]"></asp:SqlDataSource>
    <div>
    
    </div>
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" BorderPadding="4" ForeColor="#333333" Height="192px" TextLayout="TextOnTop" Width="308px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
        </asp:Login>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
