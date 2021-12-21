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
    public partial class EditProfilePage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["email"] as String == "" || Session["email"] == null)
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

        protected void update_Click1(object sender, EventArgs e)
        {
            if (Session["email"] as String == "" || Session["email"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("~/LoginPage.aspx");
            }
            else
            {
                updateUserDetails();
            }
        }

        protected void resetPassword_Click(object sender, EventArgs e)
        {
            if (Session["email"] as String == "" || Session["email"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("~/LoginPage.aspx");
            }
            else
            {
                resetUserPassword();
            }
        }

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
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateUserDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE userDetails_table SET FName=@FName, LName=@LName, DOB=@DOB, contact_no=@contact_no, address=@address, state=@state, city=@city, postcode=@postcode WHERE email='" + Session["email"].ToString() + "';", con);

                cmd.Parameters.AddWithValue("@FName", firstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LName", lastName.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", Date.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@state", stateList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city.Text.Trim());
                cmd.Parameters.AddWithValue("@postcode", postcode.Text.Trim());

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserData();
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void resetUserPassword()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from userDetails_table where email = '" + Session["email"].ToString() + "'; ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                string pwd = dt.Rows[0]["password"].ToString();

                if(newPassword.Text.Trim() != ""  && newPassword.Text.Trim() != null)
                {
                    if (password.Text.Trim() == pwd)
                    {
                        SqlCommand resetCMD = new SqlCommand("UPDATE userDetails_table SET password=@password WHERE email='" + Session["email"].ToString() + "'", con);

                        resetCMD.Parameters.AddWithValue("@password", newPassword.Text.Trim());

                        int resetResult = resetCMD.ExecuteNonQuery();
                        con.Close();
                        if (resetResult > 0)
                        {
                            Response.Write("<script>alert('Your Password Reset Successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Reset Password Failure! Please try again later.');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong old password! Please enter again.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please enter your new password.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}