<%@ Page Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="BUCentral.aspx.cs" Inherits="WebSite2_BUCentral" %>

<%@ Register Src="Usercontrol/head.ascx" TagName="head" TagPrefix="uc1" %>

<%@ Register Src="Usercontrol/buttom.ascx" TagName="buttom" TagPrefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <form id="form1" runat="server">
        <div class="BUcentral">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Image/BU%20Central/McDonald's.jpg" OnClick="ImageButton2_Click" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/WebSite2/Image/BU Central/Gyu-Kaku.jpg" />&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/WebSite2/Image/BU Central/PaPa John.jpg" />
            <a>
                <img src="Image/BU%20Central/PaPa%20John.jpg" /></a>
            <a>
                <img src="Image/BU%20Central/Panda.jpg" /></a>
            <a>
                <img src="Image/BU%20Central/Popeye.jpg" /></a>
            <a>
                <img src="Image/BU%20Central/Qdoba.jpg" /></a>
            <a>
                <img src="Image/BU%20Central/Sichuan.jpg" /></a>
            <a>
                <img src="Image/BU%20Central/Longhorn.jpg" /></a>
        </div>
    </form>
</asp:Content>

