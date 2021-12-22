using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class contactUsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void feedbackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackPage.aspx");
        }
    }
}