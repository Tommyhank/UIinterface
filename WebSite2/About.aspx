<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="WebSite2_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #form1
        {
            height: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_Userinfo]"></asp:SqlDataSource>
            <div class ="global1">
                <h3>Personal Information:</h3>
                Call:
            <asp:Label ID="Call" runat="server"></asp:Label>
                <br />
                <br />
                Gender:
                <asp:Label ID="Gender" runat="server"></asp:Label>
                <br />
                <br />
                Email:
                <asp:Label ID="email" runat="server"></asp:Label>
                <br />
                <br />
                Phone number:
                <asp:Label ID="phone" runat="server"></asp:Label>
                <br />
                <br />
                Address Area:
                <asp:Label ID="area" runat="server"></asp:Label>
            </div>    
        <br />
    </form>
</asp:Content>

