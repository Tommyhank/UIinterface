<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="Restaurant.aspx.cs" Inherits="WebSite2_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tb_Review(Uname, Rname, [Content]) VALUES (@newUname, @newRname, @newContent)" SelectCommand="SELECT * FROM [tb_Review]">
            <InsertParameters>
                <asp:SessionParameter DefaultValue="" Name="newUname" SessionField="Username" />
                <asp:SessionParameter DefaultValue="" Name="newRname" SessionField="RestaurantName" />
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="newContent" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    <div class="restname">
        <asp:Image ID="Image1" runat="server" Height="233px" Width="310px" />
        </div>
    <div class="restaurantintro">
        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="intro"></asp:Label>
        </div>
    <div class="dishes">
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Height="95px" Width="527px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="heading2" Height="32px" Text="Comment" Width="123px" OnClick="Button1_Click" />
        </div>
    </form>
    </asp:Content>

