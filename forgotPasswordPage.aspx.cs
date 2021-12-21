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
    public partial class forgotPasswordPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void resetPwdButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (resetPwd.Text.Trim() != "" && resetPwd.Text.Trim() != null && confirmPwd.Text.Trim() != "" && confirmPwd.Text.Trim() != null)
                {
                    if (resetPwd.Text.Trim() == confirmPwd.Text.Trim())
                    {
                        SqlCommand resetCMD = new SqlCommand("UPDATE userDetails_table SET password=@password WHERE email='" + email.Text.Trim() + "'", con);

                        resetCMD.Parameters.AddWithValue("@password", confirmPwd.Text.Trim());

                        int resetResult = resetCMD.ExecuteNonQuery();
                        con.Close();
                        if (resetResult > 0)
                        {
                            Response.Write("<script>alert('Your Password Reset Successfully');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Reset Password Failure! Please try again later.');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Your new password does not match with the confirmed password! Please try again.');</script>");
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