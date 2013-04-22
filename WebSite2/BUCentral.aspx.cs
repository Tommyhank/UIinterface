using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite2_BUCentral : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Restaurantname"] = "DD";
        Session["Username"] = ""; 
        Server.Transfer("Restaurant.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Restaurantname"] = "Mc";
        Session["Username"] = ""; 
        Server.Transfer("Restaurant.aspx");
    }
}