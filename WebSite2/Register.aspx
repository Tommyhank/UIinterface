<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="WebSite2_Register" %>

<%@ Register Src="Usercontrol/buttom.ascx" TagName="buttom" TagPrefix="uc1" %>
<%@ Register Src="Usercontrol/head.ascx" TagName="head" TagPrefix="uc2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .global1
        {
            float: right;
            width: 66%;
        }
    </style>
    <script runat="server">
              
      

    </script>
</head>
<body style="height: 1008px">
    <form id="form1" runat="server">
        <div>
            <uc2:head ID="head1" runat="server" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_Userinfo]" InsertCommand="INSERT INTO tb_Userinfo(Call, gender, email, phone, Username, Pwd, SecurityQuestion, Answer, area) VALUES (@newCall, @newgender, @newemail, @newphone, @newusername, @newpassword, @newSQ, @newanswer, @newarea)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="Call" Name="newCall" PropertyName="Text" />
                    <asp:ControlParameter ControlID="RadioGenderList" Name="newgender" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="email" DefaultValue="" Name="newemail" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Phone" Name="newphone" PropertyName="Text" />
                    <asp:ControlParameter ControlID="username" DefaultValue="" Name="newusername" PropertyName="Text" />
                    <asp:ControlParameter ControlID="password" Name="newpassword" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownListSQ" Name="newSQ" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Answer" DefaultValue="" Name="newanswer" PropertyName="Text" />
                    <asp:ControlParameter ControlID="RadioAreaList" Name="newarea" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_SecurityQuestion]"></asp:SqlDataSource>


        </div>

        <div class="global1">
            <h1>Create a new account</h1>
            <p>
                Username:
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </p>
            <p>
                Password:&nbsp;
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                Confirm your password:
            <asp:TextBox ID="passwordConfirm" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                Security Question:
                <asp:DropDownList ID="DropDownListSQ" runat="server" DataSourceID="SqlDataSource3" DataTextField="QuestionText" DataValueField="QuestionText">
                </asp:DropDownList>
            </p>
            <p>
                Answer:
            <asp:TextBox ID="Answer" runat="server" Width="279px"></asp:TextBox>
            </p>
            <h3>Personal Information:</h3>

            <p>
                Call:
            <asp:TextBox ID="Call" runat="server" Width="163px"></asp:TextBox>
            </p>
            <p>
                Gender:
                <asp:RadioButtonList ID="RadioGenderList" runat="server" Width="81px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                Email:
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </p>
            <p>
                Phone number:
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            </p>
            <p>
                Address Area:<asp:RadioButtonList ID="RadioAreaList" runat="server">
                    <asp:ListItem>BuWest</asp:ListItem>
                    <asp:ListItem>BuCentral</asp:ListItem>
                    <asp:ListItem>BuEast</asp:ListItem>
                    <asp:ListItem>BuOther</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
            </p>
            <p>
                <a href="Login.aspx">Login</a>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <div style="height: 799px">
        </div>
        <uc1:buttom ID="buttom1" runat="server" />

    </form>
</body>
</html>
