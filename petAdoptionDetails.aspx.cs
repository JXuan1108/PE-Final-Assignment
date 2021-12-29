using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class petAdoptionDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        List<String> petDetails = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["petDetail"] == null)
            {
                Response.Redirect("~/petAdoption.aspx");
            }

            String imgUrl = Session["petDetail"].ToString();
            petAdoptionImgHolder.ImageUrl = imgUrl;

            petDetails.Add(imgUrl);

            petAdoptionDetailsInitialise(imgUrl);
        }

        public void petAdoptionDetailsInitialise(String imgUrl)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from petAdoption where pet_image = @imageUrl", con);
                cmd.Parameters.AddWithValue("@imageUrl", imgUrl);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                lbBreed.Text = dt.Rows[0]["pet_breed"].ToString();
                lbGender.Text = dt.Rows[0]["pet_gender"].ToString();
                lbAge.Text = dt.Rows[0]["pet_age"].ToString();
                lbSize.Text = dt.Rows[0]["pet_size"].ToString();
                lbColour.Text = dt.Rows[0]["pet_colour"].ToString();
                lbVaccinated.Text = dt.Rows[0]["pet_vaccinated"].ToString();
                lbDewormed.Text = dt.Rows[0]["pet_deworm"].ToString();
                lbCondition.Text = dt.Rows[0]["pet_condition"].ToString();

                petDetails.Add(dt.Rows[0]["pet_breed"].ToString());
                petDetails.Add(dt.Rows[0]["pet_gender"].ToString());
                petDetails.Add(dt.Rows[0]["pet_age"].ToString());
                petDetails.Add(dt.Rows[0]["pet_size"].ToString());
                petDetails.Add(dt.Rows[0]["pet_colour"].ToString());
                petDetails.Add(dt.Rows[0]["pet_vaccinated"].ToString());
                petDetails.Add(dt.Rows[0]["pet_deworm"].ToString());
                petDetails.Add(dt.Rows[0]["pet_condition"].ToString());
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in petAdoptionDetailsInitilise() method" + ex);
            }
        }

        protected void requestAdoptionBtn_Click(object sender, EventArgs e)
        {
            Session["petInfo"] = petDetails;
            Response.Redirect("~/adoptionForm.aspx");
        }
    }
}