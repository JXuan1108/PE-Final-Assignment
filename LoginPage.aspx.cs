using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PE_Final_Assignment
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["email"] != null && Request.Cookies["password"] != null)
                {
                    email.Text = Request.Cookies["email"].Value;
                    password.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
        }
        protected void signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from userDetails_table where email='" + email.Text.Trim() + "' AND password='" + password.Text.Trim() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (RememberMe.Checked)
                        {
                            Response.Cookies["email"].Value = email.Text.Trim();
                            Response.Cookies["password"].Value = password.Text.Trim();
                            Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(20);
                            Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(20);
                        }
                        else
                        {
                            Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(-1);
                            Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);
                        }

                        Session["email"] = dr.GetValue(4).ToString();
                        Session["FName"] = dr.GetValue(0).ToString();
                        Session["LName"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successfully!'); window.location.href = 'index.aspx'", true);
                        Response.Redirect("~/index.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void forgotPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/forgotPasswordPage.aspx");
        }
    }
}