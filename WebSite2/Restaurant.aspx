<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="Restaurant.aspx.cs" Inherits="WebSite2_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #form1
    {
        height: 468px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Content], [Date], [Rate], [Uname] FROM [tb_Review] WHERE ([Rname] = @Rname)">
            <SelectParameters>
                <asp:SessionParameter Name="Rname" SessionField="Restaurantname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <div class="restname">
        <asp:Image ID="Image1" runat="server" Height="233px" Width="310px" />
        </div>
    <div class="restaurantintro">
        <asp:Label ID="LabelRname" runat="server" Text="RestaurantName" CssClass="intro"></asp:Label><br />
        <asp:Label ID="LabelContact" runat="server" Text="RestaurantContact" CssClass="intro"></asp:Label><br />
        <asp:Label ID="LabelAddress" runat="server" Text="RestaurantAddress" CssClass="intro"></asp:Label><br />
        <asp:Label ID="LabelCuisine" runat="server" Text="RestaurantCuisine" CssClass="intro"></asp:Label><br />
        <asp:Label ID="LabelRate" runat="server" Text="RestaurantRate" CssClass="intro"></asp:Label><br />
        <asp:Label ID="LabelDescription" runat="server" Text="RestaurantDescription" CssClass="intro"></asp:Label>
        </div>
    <div class="dishes">
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView><br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="261px" RepeatColumns="2" RepeatDirection="Horizontal" Width="529px">
            <ItemTemplate>
                Review Content:
                <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' />
                <br />
                Review Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
                Rate:
                <asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' />
                <br />
                Reviewer:
                <asp:Label ID="UnameLabel" runat="server" Text='<%# Eval("Uname") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>

        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Height="95px" Width="527px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="heading2" Height="32px" Text="Comment" Width="123px" OnClick="Button1_Click" />
        </div>
    </form>
    </asp:Content>

