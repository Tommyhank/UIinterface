<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BUCentral.aspx.cs" Inherits="WebSite2_BUCentral" %>

<%@ Register src="Usercontrol/head.ascx" tagname="head" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .BUcentral {
            margin: 3px auto 3px auto;
        }
    </style>
</head>
<body class="bodystyle">
    <form id="form1" runat="server">
        <uc1:head ID="head1" runat="server" />
    <div>

    
        <asp:Table ID="Table1" class="BUcentral" runat="server" Width="950px">
        </asp:Table>

    
    </div>
    </form>
</body>
</html>
