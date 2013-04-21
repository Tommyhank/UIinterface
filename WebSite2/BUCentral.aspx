<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BUCentral.aspx.cs" Inherits="WebSite2_BUCentral" %>

<%@ Register src="Usercontrol/head.ascx" tagname="head" tagprefix="uc1" %>

<%@ Register src="Usercontrol/buttom.ascx" tagname="buttom" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .BUcentral {
            margin-right: auto;
            margin-left: auto;
            margin-top: 3px;
            width: 950px;
        }

    </style>
</head>
<body class="bodystyle" style="height: 941px">
    <form id="form1" runat="server">
        <uc1:head ID="head1" runat="server" />
        <div class="BUcentral">
        <a><img src="Image/BU%20Central/DD.JPG" /></a>
        <a><img src="Image/BU%20Central/McDonald's.jpg" /></a>
        <a><img src="Image/BU%20Central/Gyu-Kaku.jpg" /></a>
        <a><img src="Image/BU%20Central/PaPa%20John.jpg" /></a>    
        <a><img src="Image/BU%20Central/Panda.jpg" /></a>  
        <a><img src="Image/BU%20Central/Popeye.jpg" /></a>
        <a><img src="Image/BU%20Central/Qdoba.jpg" /></a>
        <a><img src="Image/BU%20Central/Sichuan.jpg" /></a>
        <a><img src="Image/BU%20Central/Longhorn.jpg" /></a>
        </div>
       
        <uc2:buttom ID="buttom1" runat="server" />
       
    </form>
</body>
</html>
