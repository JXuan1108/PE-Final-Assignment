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
    public partial class ReservationPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        List<int> dogBathList = new List<int> { 75, 95, 125, 165 };
        List<int> dogCutList = new List<int> { 55, 75, 105, 145 };
        List<int> dogAromaList = new List<int> { 35, 55, 75, 95 };
        List<int> dogMassageList = new List<int> { 15, 20, 25, 35 };
        int price = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            hideForm();
            if (!IsPostBack)
            {
                checkLogin();
                Session["date1"] = null;
                HotelCalendar.VisibleDate = HotelCalendar.TodaysDate;
            }
            if (Session["SelectedPetService"].ToString() != null)
            {
                string imgUrl = Session["SelectedPetService"].ToString();
                servicePricesImgHolder.ImageUrl = imgUrl;
                if (imgUrl == @"images/dogGroomPrice.jpg")
                    dogForm.Visible = true;
                else if (imgUrl == @"images/catGroomPrice.jpg")
                    catForm.Visible = true;
                else
                {
                    dateGroomDiv.Visible = false;
                    groomBc.Visible = false;
                    hotelBc.Visible = true;
                    hotelForm.Visible = true;
                    initialiseHotelForm(imgUrl);
                }
            }
            if (IsPostBack)
            {
                calcPrice();
            }
        }
        private void checkLogin()
        {
            if (Session["email"] == null)
            {
                Debug.WriteLine("Session is null");
                Response.Redirect("~/LoginPage.aspx");
            }
            else
                Debug.WriteLine("Session is " + Session["email"].ToString());
        }
        private void calcPrice()
        {
            if (HotelCalendar.SelectedDates.Count > 1)
            {
                CheckHotelPrice();
            }
            else
            {
                CheckDogServicePrice();
                CheckCatServicePrice();
            }
            if (price == 0)
            {
                ServicePrice.Visible = false;
            }
            else
            {
                ServicePrice.Visible = true;
                ServicePrice.Text = "<b style='color: red; font-size:2em;' > Reservation Price: RM" + price + "</b>";
            }
        }
        private void hideForm()
        {
            hotelBc.Visible = false;
            hotelSubmitBtn.Visible = false;
            dogForm.Visible = false;
            catForm.Visible = false;
            hotelForm.Visible = false;
            dogSubmitBtn.Visible = false;
            catSubmitBtn.Visible = false;
        }
        private void CheckDogServicePrice()
        {
            int SelectedIndex = int.Parse(dogSizeDDL.SelectedValue);
            if (dogBathCb.Checked)
                price += dogBathList[SelectedIndex];
            if (dogCutCb.Checked)
                price += dogCutList[SelectedIndex];
            if (dogAromaCb.Checked)
                price += dogAromaList[SelectedIndex];
            if (dogMassageCb.Checked)
                price += dogMassageList[SelectedIndex];
            if (dogTickCb.Checked)
                price += 35;
            if (dogSciCutCb.Checked)
                price += 35;
            if (dogDetanglingCb.Checked)
                price += 20;
            if (price != 0 && (ReservationDate.Text.ToString() != "") && (DateTime.Today <= Convert.ToDateTime(ReservationDate.Text.ToString())))
                dogSubmitBtn.Visible = true;
            else
                dogSubmitBtn.Visible = false;
        }
        private void CheckCatServicePrice()
        {
            if (catBathCb.Checked)
                price += 90;
            if (catCutCb.Checked)
                price += 155;
            if (catTickCb.Checked)
                price += 35;
            if (catSciCutCb.Checked)
                price += 35;
            if (catDetanglingCb.Checked)
                price += 20;
            if (price != 0 && (ReservationDate.Text.ToString() != "") && (DateTime.Today <= Convert.ToDateTime(ReservationDate.Text.ToString())))
                catSubmitBtn.Visible = true;
            else
                catSubmitBtn.Visible = false;
        }
        protected void catSubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into serviceReservation_table (user_email, reservation_pet, " +
                    "reservation_date, reservation_bath, reservation_cut, reservation_tick, reservation_sciCut, " +
                    "reservation_detangling, reservation_price) values (@email,'cat',@date,@bath,@cut,@tick,@sciCut," +
                    "@detangling,@price)", con);
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.Parameters.AddWithValue("@date", ReservationDate.Text.ToString());
                cmd.Parameters.AddWithValue("@bath", catBathCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@cut", catCutCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@tick", catTickCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@sciCut", catSciCutCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@detangling", catDetanglingCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@price", price.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/ViewReservation.aspx");
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in dogSubmitButton database connection" + ex);
            }
        }
        protected void dogSubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into serviceReservation_table (user_email, reservation_pet, " +
                    "reservation_date, reservation_dogSize, reservation_bath, reservation_cut, " +
                    "reservation_dogAroma, reservation_dogMassage, reservation_tick, reservation_sciCut, " +
                    "reservation_detangling, reservation_price) values (@email,'dog',@date,@dogSize,@bath,@cut," +
                    "@dogAroma,@dogMassage,@tick,@sciCut,@detangling,@price)", con);
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.Parameters.AddWithValue("@date", ReservationDate.Text.ToString());
                cmd.Parameters.AddWithValue("@dogSize", dogSizeDDL.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@bath", dogBathCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@cut", dogCutCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@dogAroma", dogAromaCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@dogMassage", dogMassageCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@tick", dogTickCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@sciCut", dogSciCutCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@detangling", dogDetanglingCb.Checked.ToString());
                cmd.Parameters.AddWithValue("@price", price.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/ViewReservation.aspx");
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in dogSubmitButton database connection" + ex);
            }
        }
        public void initialiseHotelForm(String imgUrl)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                if (imgUrl == @"images/petHotelDogBasic.jpg")
                {
                    petTypeL.Text = "Dog";
                    hotelTypeL.Text = "Basic";
                    hotelTypeRoomL.Text = " Room";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Dog' and hotel_type='Basic'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
                if (imgUrl == @"images/petHotelDogDeluxe.jpg")
                {
                    petTypeL.Text = "Dog";
                    hotelTypeL.Text = "Deluxe";
                    hotelTypeRoomL.Text = " Room";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Dog' and hotel_type='Deluxe'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
                if (imgUrl == @"images/petHotelDogRoyal.jpg")
                {
                    petTypeL.Text = "Dog";
                    hotelTypeL.Text = "Royal";
                    hotelTypeRoomL.Text = " Suite";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Dog' and hotel_type='Royal'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
                if (imgUrl == @"images/petHotel2.jpg")
                {
                    petTypeL.Text = "Cat";
                    hotelTypeL.Text = "Basic";
                    hotelTypeRoomL.Text = " Room";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Cat' and hotel_type='Basic'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
                if (imgUrl == @"images/petHotelCatDeluxe.jpg")
                {
                    petTypeL.Text = "Cat";
                    hotelTypeL.Text = "Deluxe";
                    hotelTypeRoomL.Text = " Room";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Cat' and hotel_type='Deluxe'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
                if (imgUrl == @"images/petHotelCatRoyal.jpg")
                {
                    petTypeL.Text = "Cat";
                    hotelTypeL.Text = "Royal";
                    hotelTypeRoomL.Text = " Suite";
                    SqlCommand cmd = new SqlCommand("SELECT hotel_price from petHotel_table where hotel_pet='Cat' and hotel_type='Royal'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            priceRateL.Text = dr["hotel_price"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error pet hotel database conenction" + ex);
            }
        }
        protected void hotelSubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into hotelReservation_table (user_email, to_date, from_date, " +
                    "hotel_pet, hotel_type, price) values (@email,@toDate,@fromDate,@hotelPet,@hotelType,@price)", con);
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.Parameters.AddWithValue("@toDate", HotelCalendar.SelectedDates[HotelCalendar.SelectedDates.Count - 1].ToShortDateString());
                cmd.Parameters.AddWithValue("@fromDate", Session["date1"].ToString());
                cmd.Parameters.AddWithValue("@hotelPet", petTypeL.Text.ToString());
                cmd.Parameters.AddWithValue("@hotelType", hotelTypeL.Text.ToString());
                cmd.Parameters.AddWithValue("@price", price.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/ViewReservation.aspx");
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in hotelSubmitBtn database connection" + ex);
            }
        }
        public void CheckHotelPrice()
        {
            DateTime fromDate = Convert.ToDateTime(Session["date1"].ToString());
            DateTime toDate = HotelCalendar.SelectedDates[HotelCalendar.SelectedDates.Count - 1];
            int TotalDays = (toDate - fromDate).Days;
            ServicePrice.Visible = true;
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select hotel_price from petHotel_table where hotel_pet='" + petTypeL.Text + "' and hotel_type='" + hotelTypeL.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        price = TotalDays * int.Parse(dr["hotel_price"].ToString());
                        ServicePrice.Text = "<b style='color: red; font-size:2em;' > Reservation Price: RM" + price + "</b>";
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in CheckHotelPrice()method database connection" + ex);
            }
        }
        protected void HotelCalendar_SelectionChanged(object sender, EventArgs e)
        {
            if (Session["date1"] == null)
            {
                Session["date1"] = HotelCalendar.SelectedDate.ToShortDateString();
                hotelSubmitBtn.Visible = false;
            }
            else
            {
                hotelSubmitBtn.Visible = true;
                DateTime fromDate = Convert.ToDateTime(Session["date1"].ToString());
                DateTime toDate = Convert.ToDateTime(HotelCalendar.SelectedDate);
                if (toDate == fromDate || fromDate >= toDate)
                {
                    ServicePrice.Visible = false;
                    hotelSubmitBtn.Visible = false;
                    HotelCalendar.SelectedDates.Clear();
                    Session["date1"] = null;
                }
                else
                {
                    HotelCalendar.SelectedDates.SelectRange(fromDate, toDate);
                    calcPrice();
                }
            }
        }
        protected void HotelCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }

        protected void ReservationDate_TextChanged(object sender, EventArgs e)
        {
            calcPrice();
        }
    }
}