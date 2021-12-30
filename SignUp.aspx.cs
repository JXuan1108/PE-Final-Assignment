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
    public partial class SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('This email is existed! Try other email.');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from userDetails_table where email='"+email.Text.Trim()+"';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO userDetails_table(FName, LName, DOB, contact_no, email, password, address, state, city, postcode) " +
                    "values(@FName, @LName, @DOB, @contact_no, @email, @password, @address, @state, @city, @postcode)", con);

                cmd.Parameters.AddWithValue("@FName", firstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LName", lastName.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", Date.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@state", stateList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city.Text.Trim());
                cmd.Parameters.AddWithValue("@postcode", postcode.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Session["email"] = email.Text.Trim();
                Session["FName"] = firstName.Text.Trim();
                Session["LName"] = lastName.Text.Trim();
                Session["role"] = "user";

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sign Up Successfully!'); window.location.href = 'index.aspx'", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}