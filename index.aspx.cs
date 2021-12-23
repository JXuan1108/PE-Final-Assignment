using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void petShopButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("petShopPage.aspx");
        }

        protected void petHotelButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("petHotelPage.aspx");
        }

        protected void petGroomingButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("petGroomingPage.aspx");
        }
    }
}