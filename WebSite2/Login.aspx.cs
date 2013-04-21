using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
        string selectString = "SELECT * FROM tb_Userinfo WHERE Username='" + Login1.UserName + "'";//select string for search currency name correspond with the input
        SqlDataSource dsrc = new SqlDataSource(conString, selectString);
        DataView DV = (DataView)dsrc.Select(DataSourceSelectArguments.Empty);
        string password =(string)DV.Table.Rows[0][7];
        if(password.Equals(Login1.Password))
        {
            
        }
    }
}