using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class WebSite2_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
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
            SqlDataSource2.Insert();
            string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
            string selectString = "SELECT * FROM tb_Userlogin WHERE Username='" + username.Text + "'";//select string for search currency name correspond with the input
            SqlDataSource dsrc = new SqlDataSource(conString, selectString);
            DataView DV = (DataView)dsrc.Select(DataSourceSelectArguments.Empty);
            int ID = (int) DV.Table.Rows[0][0];
            Console.Write(ID);
            
            //SqlDataSource1.Insert();
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
    
}