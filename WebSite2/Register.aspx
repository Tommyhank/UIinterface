<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="WebSite2_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .global{
            float: right;
            width: 66%;
        }

    </style>
    <script runat="server">
        private List<Customer> CustomerList;

        protected void Page_Load()
        {
            if (!IsPostBack)
            {
                CustomerList = new List<Customer>();
                
                ViewState["CustomerList"] = CustomerList;
            }
            else
                CustomerList = (List<Customer>)ViewState["CustomerList"];

            
        }

        protected void Register_Click(object sender, EventArgs e)
    {

            if (String.IsNullOrEmpty(email.Text) ||
               String.IsNullOrEmpty(username.Text) ||
               String.IsNullOrEmpty(password.Text) ||
               String.IsNullOrEmpty(passwordConfirm.Text)) { return; }

            int employeeID = CustomerList[CustomerList.Count - 1].CustomerID + 1;

            string lastName = Server.HtmlEncode(FirstNameTextBox.Text);
            string firstName = Server.HtmlEncode(LastNameTextBox.Text);

            FirstNameTextBox.Text = String.Empty;
            LastNameTextBox.Text = String.Empty;

            EmployeeList.Add(new Employee(employeeID, lastName, firstName));
            ViewState["EmployeeList"] = EmployeeList;

            EmployeesGridView.DataBind();
            EmployeesGridView.PageIndex = EmployeesGridView.PageCount;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            FirstNameTextBox.Text = String.Empty;
            LastNameTextBox.Text = String.Empty;
        }

        [Serializable]
        public class Customer
        {
            private int ID;
            private string email;
            private string username;

            public int CustomerID
            {
                get { return ID; }
            }

            public string Email
            {
                get { return email; }
            }

            public string Username
            {
                get { return username; }
            }

            public Customer(int CustomerID, string CustomerEmail, string CustomerUsername)
            {
                ID = CustomerID;
                email = CustomerEmail;
                username = CustomerUsername;
            }
        }

    </script>
</head>
<body class="global">
    <form id="form1" runat="server">
    <div>
        <h1 style="color: black; text-align: left">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            Create a new account</h1>
    
    </div>
    <div>
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
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <p>
            Confirm your password:
            <asp:TextBox ID="passwordConfirm" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
        </p>
        <p>
            &nbsp;</p>
    </div>
        
    </form>
</body>
</html>
