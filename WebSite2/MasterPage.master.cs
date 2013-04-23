using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite2_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "Hello, Welcome " + Session["Username"].ToString();
            Label1.Visible = true;
            Label2.Visible = false;
            Label3.Visible = false;
        }
        catch (Exception ex)
        {

        }
    }
}
