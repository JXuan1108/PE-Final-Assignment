using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["email"] as String == "" || Session["email"] == null)
                {
                    Response.Write("<script>alert('Session Expired, Please Login again');</script>");
                    Response.Redirect("~/LoginPage.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserData();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        //user defined function
        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from userDetails_table where email='" + Session["email"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                firstName.Text = dt.Rows[0]["FName"].ToString();
                lastName.Text = dt.Rows[0]["LName"].ToString();
                Date.Text = dt.Rows[0]["DOB"].ToString();
                contact.Text = dt.Rows[0]["contact_no"].ToString();
                email.Text = dt.Rows[0]["email"].ToString();
                address.Text = dt.Rows[0]["address"].ToString();
                stateList.SelectedValue = dt.Rows[0]["state"].ToString();
                city.Text = dt.Rows[0]["city"].ToString();
                postcode.Text = dt.Rows[0]["postcode"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EditProfilePage.aspx");
        }
    }
}