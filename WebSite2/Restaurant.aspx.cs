using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class WebSite2_Default2 : System.Web.UI.Page
{
    String RestaurantName = null;
    String UserName = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            RestaurantName = Session["Restaurantname"].ToString();
            LabelRname.Text = RestaurantName;
            Session.Remove("Restaurantname");
            Image1.ImageUrl = "~/WebSite2/Image/BU Central/" + RestaurantName + ".jpg";
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        try
        {
            UserName = Session["Username"].ToString();
            string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
            string selectString = "SELECT * FROM tb_Review WHERE Uname='" + UserName + "' AND Rname='" + RestaurantName + "'";//select string for search currency name correspond with the input
            SqlDataSource dsrc = new SqlDataSource(conString, selectString);
            DataView DV = (DataView)dsrc.Select(DataSourceSelectArguments.Empty);
            if (DV.Table.Rows.Count > 0)
            {
                TextBox1.Visible = false;
                Button1.Visible = false;
            }
        }
        catch (Exception ex)
        {
            TextBox1.Visible = false;
            Button1.Visible = false;
            Console.WriteLine(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        SqlDataSource1.Insert();
    }
}