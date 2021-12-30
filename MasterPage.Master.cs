using System;
using System.Collections.Generic;
using System.Diagnostics;
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
                    profile.Visible = false; //profile button
                    reservation.Visible = false; //reservation button
                }
                else if (Session["role"].Equals("user"))
                {
                    login.Visible = false; //login button
                    logout.Visible = true; //logout button
                    profile.Visible = true; //profile button
                    reservation.Visible = true; //reservation button
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["FName"] = null;
            Session["LName"] = null;
            Session["role"] = null;

            if (Session["email"] == null)
            {
                Debug.WriteLine("Session is null");
            }
            else
                Debug.WriteLine("Session is " + Session["email"].ToString());

            login.Visible = true; //login button
            logout.Visible = false; //logout button
            profile.Visible = false; //profile button
            reservation.Visible = false; //reservation button
            Response.Redirect("~/index.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProfilePage.aspx");
        }
    }
}