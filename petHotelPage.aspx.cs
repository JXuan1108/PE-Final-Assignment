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
    public partial class petHotelPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from petHotel_table", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        String hotel_pet, hotel_type;
                        while (dr.Read())
                        {
                            hotel_pet = dr["hotel_pet"].ToString();
                            hotel_type = dr["hotel_type"].ToString();
                            Label hotelFeature = (Label)hotelDetails.FindControl("hotelFeature" + hotel_pet + hotel_type);
                            Label hotelSize = (Label)hotelDetails.FindControl("hotelSize" + hotel_pet + hotel_type);
                            Label hotelPrice = (Label)hotelDetails.FindControl("hotelPrice" + hotel_pet + hotel_type);
                            hotelFeature.Text = dr["hotel_feature"].ToString();
                            hotelSize.Text = dr["hotel_size"].ToString();
                            hotelPrice.Text = dr["hotel_price"].ToString();
                        }
                    }
                } catch (Exception ex)
                {
                    Debug.WriteLine("Error pet hotel database conenction" + ex);
                }

            }
        }

        protected void buttonDogBasic_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotelDogBasic.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void buttonBogDeluxe_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotelDogDeluxe.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void buttonBogRoyal_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotelDogRoyal.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void buttonCatBasic_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotel2.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void buttonCatDeluxe_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotelCatDeluxe.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }

        protected void buttonCatRoyal_Click(object sender, EventArgs e)
        {
            Session["SelectedPetService"] = @"images/petHotelCatRoyal.jpg";
            Response.Redirect("~/ReservationPage.aspx");
        }
    }
}