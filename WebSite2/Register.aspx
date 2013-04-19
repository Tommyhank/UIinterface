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
       

        protected void Page_Load()
        {
            
            
        }

        protected void Register_Click(object sender, EventArgs e)
    {

        if (String.IsNullOrEmpty(email.Text) ||
           String.IsNullOrEmpty(username.Text) ||
           String.IsNullOrEmpty(password.Text) ||
           String.IsNullOrEmpty(passwordConfirm.Text)) { return; }
        else if (password.Text == passwordConfirm.Text)
        {
            SqlDataSource1.Insert();

            //int customerID = CustomerList[CustomerList.Count - 1].CustomerID + 1;
           

            username.Text = String.Empty;
            email.Text = String.Empty;
            password.Text = String.Empty;
            passwordConfirm.Text = String.Empty;
            Label1.Text = "Register Succeed! Please login";

        }
        else
            Label1.Text = "Error, the password is not confirmed!";
        }

        

        [Serializable]
        public class Customer
        {
            private string email;
            private string username;
            private string password;

            public string Email
            {
                get { return email; }
            }

            public string Username
            {
                get { return username; }
            }
            public string Password
            {
                get { return password; }
            }
            public Customer( string CustomerEmail, string CustomerUsername, string Password)
            {
                
                email = CustomerEmail;
                username = CustomerUsername;
                password = Password;
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc2:head ID="head1" runat="server" />
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ID, username, password, email FROM [Table]" InsertCommand="INSERT INTO [Table] (username, email, password) VALUES (@newusername, @newemail, @newpassword)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="username" Name="newusername" PropertyName="Text" />
                    <asp:ControlParameter ControlID="email" Name="newemail" PropertyName="Text" />
                    <asp:ControlParameter ControlID="password" Name="newpassword" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            
    
    </div>
        
    <div class="global1">
        <h1>
            Create a new account</h1>
        <p>
            Email:
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
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
