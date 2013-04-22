<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="WebSite2_Usercontrol_head" %>
<link href="../CSS%20style/stylesheet.css" rel="stylesheet" />
<div class="heading" style="width: 950px; height: 191px">

</div>
<div class="heading2" style="width: 950px">
    <asp:Label ID="Label1" runat="server" Visible="False"><a href ="Login.aspx" style="color:#FFFFFF;text-decoration:none">Login</a></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"><a href ="Login.aspx" style="color:#FFFFFF;text-decoration:none">Sign in</a></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label3" runat="server"><a href="Register.aspx" style="color: #FFFFFF; text-decoration: none">Join Us</a></asp:Label>
</div>
