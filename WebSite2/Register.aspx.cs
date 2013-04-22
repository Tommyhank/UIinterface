using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
public partial class WebSite2_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
            string selectString = "SELECT * FROM tb_Userinfo WHERE Username='" + username.Text + "'";//select string for search currency name correspond with the input
            SqlDataSource dsrc = new SqlDataSource(conString, selectString);
            DataView DV = (DataView)dsrc.Select(DataSourceSelectArguments.Empty);
            if (DV.Table.Rows.Count > 0)
            {
                Label1.Text = "This username has already existed! Please try a new one";
            }

            else if (!(Regex.IsMatch(email.Text, @"^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$"))) //using Regex class to check if the input is an email
            {
                Label1.Text = "Your email format is not right, Please check again!";
            }
            else if (!(Regex.IsMatch(Phone.Text, @"^[0-9]+")))
            {
                Label1.Text = "Please enter a correct phone number!";
            }
            else
            {
                String a = DropDownListSQ.SelectedValue;
                SqlDataSource1.Insert();

                //int ID = (int) DV.Table.Rows[0][0];
                //Console.Write(ID);

                username.Text = String.Empty;
                email.Text = String.Empty;
                password.Text = String.Empty;
                passwordConfirm.Text = String.Empty;
                Label1.Text = "Hi, "+ Call.Text.Trim() +"! Register Succeed! Please login";

                Response.Redirect("~/WebSite2/Login.aspx");
            }
        }
        else
            Label1.Text = "Error, the password is not same!";
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
        public Customer(string CustomerEmail, string CustomerUsername, string Password)
        {

            email = CustomerEmail;
            username = CustomerUsername;
            password = Password;
        }
    }

}