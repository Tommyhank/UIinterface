using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class WebSite2_Default2 : System.Web.UI.Page
{
    static String RestaurantName = null;
    static String UserName = null;
    static String UserCall = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            RestaurantName = Session["Restaurantname"].ToString();
            LabelRname.Text = RestaurantName;
            //Session.Remove("Restaurantname");
            Image1.ImageUrl = "~/WebSite2/Image/BU Central/" + RestaurantName + ".jpg";
            string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
            string selectString = "SELECT * FROM tb_Restaurant WHERE Name='" + RestaurantName +"'";//select string for search currency name correspond with the input
            SqlDataSource dsrc = new SqlDataSource(conString, selectString);
            DataView DV = (DataView)dsrc.Select(DataSourceSelectArguments.Empty);
            LabelAddress.Text = DV.Table.Rows[0][2].ToString();
            LabelContact.Text = DV.Table.Rows[0][3].ToString();
            LabelCuisine.Text = DV.Table.Rows[0][4].ToString();
            LabelRate.Text = DV.Table.Rows[0][5].ToString();
            LabelDescription.Text = DV.Table.Rows[0][7].ToString();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        try
        {
            UserName = Session["Username"].ToString();
            UserCall = Session["Call"].ToString();
            string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
            string selectString = "SELECT * FROM tb_Review WHERE Uname='" + UserCall + "' AND Rname='" + RestaurantName + "'";//select string for search currency name correspond with the input
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
        string content = TextBox1.Text;
        string conString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Yummy.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(conString);
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "INSERT INTO tb_Review (Rname, Uname, Content, Date)VALUES ('" + RestaurantName + "', '" + Session["Call"] + "', '" + content + "', '" + date + "')";
        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Visible = false;
        Button1.Visible = false;
        
        Session["Restaurantname"] = RestaurantName;
        Session["Username"] = UserName;
        Server.Transfer("Restaurant.aspx");
        //Response.Redirect(Request.Url.ToString()); 
        //string selectString = "INSERT INTO tb_Review (Rname, Uname, Content, Date)VALUES ('RestaurantName', 'Username', 'content', 'date')";//select string for search currency name correspond with the input
        //SqlDataSource dsrc = new SqlDataSource(conString, selectString);
    }
    protected void ButtonMore_Click(object sender, EventArgs e)
    {
        Session["Restaurantname"] = RestaurantName;
        Session["Username"] = UserName;
        Server.Transfer("MoreReviews.aspx");
    }
}