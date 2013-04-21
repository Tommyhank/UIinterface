<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="WebSite2_Register" %>

<%@ Register src="Usercontrol/buttom.ascx" tagname="buttom" tagprefix="uc1" %>
<%@ Register src="Usercontrol/head.ascx" tagname="head" tagprefix="uc2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .global1{
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
                    <asp:ControlParameter ControlID="Gender" Name="newgender" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="email" DefaultValue="" Name="newemail" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Phone" Name="newphone" PropertyName="Text" />
                    <asp:ControlParameter ControlID="username" DefaultValue="" Name="newusername" PropertyName="Text" />
                    <asp:ControlParameter ControlID="password" Name="newpassword" PropertyName="Text" />
                    <asp:ControlParameter ControlID="ListBox1" Name="newSQ" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Answer" DefaultValue="" Name="newanswer" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Area" Name="newarea" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>  
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_SecurityQuestion]"></asp:SqlDataSource>
            
    
    </div>
        
    <div class="global1">
        <h1>
            Create a new account</h1>
        <p>
            Username:
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            Confirm your password:
            <asp:TextBox ID="passwordConfirm" runat="server"></asp:TextBox>
        </p>
        <p>
            Security Question:
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource3" DataTextField="QuestionText" DataValueField="ID" Height="25px" style="margin-top: 0px" Width="203px"></asp:ListBox>
        </p>
        <p>
            Answer:
            <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
        </p>
           <h3> Personal Information:</h3>

        <p> Call:
            <asp:TextBox ID="Call" runat="server"></asp:TextBox>
        </p>
        <p>
            Gender:
            <asp:ListBox ID="Gender" runat="server" Height="36px" Width="56px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            Email: <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
        <p>
            Phone number:
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        </p>
        <p>
            Address Area:
            <asp:TextBox ID="Area" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
        </p>
        <p>
            <a href ="Login.aspx">Login</a>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        
         
    </div> 
        <div style="height: 706px"> 
         </div>
        <uc1:buttom ID="buttom1" runat="server" />
        
    </form>
</body>
</html>
