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
<body>
    <form id="form1" runat="server">
    <div>
        <uc2:head ID="head1" runat="server" />
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_Userinfo]" InsertCommand="INSERT INTO tb_Userinfo(ID, Call, gender, email, phone) VALUES (@newID, @newCall, @newgender, @newemail, @newphone)">
                <InsertParameters>
                    <asp:Parameter DefaultValue="ID" Name="newID" />
                    <asp:ControlParameter ControlID="Call" Name="newCall" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Gender" Name="newgender" PropertyName="Text" />
                    <asp:ControlParameter ControlID="email" DefaultValue="" Name="newemail" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Phone" Name="newphone" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_Userlogin]" InsertCommand="INSERT INTO tb_Userlogin(Username, Pwd, Answer, SecurityQuestion) VALUES (@newusername, @newPwd, @newAnswer, @newSecurityQ)">
            <InsertParameters>
                <asp:ControlParameter ControlID="username" Name="newusername" PropertyName="Text" />
                <asp:ControlParameter ControlID="password" Name="newPwd" PropertyName="Text" />
                <asp:ControlParameter ControlID="Answer" Name="newAnswer" PropertyName="Text" />
                <asp:ControlParameter ControlID="ListBox1" Name="newSecurityQ" PropertyName="SelectedValue" />
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
        <p>
           <h3> Personal Information:</h3>
        <p> Call:
            <asp:TextBox ID="Call" runat="server"></asp:TextBox>
        </p>
        <p>
            Gender:
            <asp:TextBox ID="Gender" runat="server"></asp:TextBox>
        </p>
        <p>
            Email: <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
        <p>
            Phone:
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
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
        <div> 
        <uc1:buttom ID="buttom1" runat="server" /> 
         </div>
    </form>
</body>
</html>
