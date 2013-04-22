using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite2_Default2 : System.Web.UI.Page
{
    String RestaurantName = null;
    String UserName = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LabelRname.Text = Session["Restaurantname"].ToString();
            RestaurantName = Session["Restaurantname"].ToString();
            UserName = Session["Username"].ToString();
            Session.Remove("Restaurantname");
            Session.Remove("Username");
        }
        catch (Exception ex)
        {
            
        }
    }
}