using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    login.Visible = true; //login button
                    logout.Visible = false; //logout button
                }
                else if (Session["role"].Equals("user"))
                {
                    login.Visible = false; //login button
                    logout.Visible = true; //logout button
                }
            }
            catch
            {

            }
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["FName"] = "";
            Session["LName"] = "";
            Session["role"] = "";

            login.Visible = true; //login button
            logout.Visible = false; //logout button
        }
    }
}