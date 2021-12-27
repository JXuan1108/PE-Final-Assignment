using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class petGroomingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dogServiceBtn_Click(object sender, ImageClickEventArgs e)
        {
            Session["SelectedPetService"] = @"images/dogGroomPrice.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void catServiceBtn_Click(object sender, ImageClickEventArgs e)
        {
            Session["SelectedPetService"] = @"images/catGroomPrice.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }
    }
}