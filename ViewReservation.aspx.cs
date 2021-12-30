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
    public partial class ViewReservation : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkLogin();
            }

            getReservationList();


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

        public void getReservationList()
        {
            try
            {
                //dog reservation table
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from serviceReservation_table where reservation_pet = 'dog' and user_email = '" + Session["email"].ToString() +"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                String services;
                List<String> serviceList = new List<string>();
                DataTable dt = new DataTable();
                if (dr.HasRows)
                {

                    dogTable.Visible = true;

                    dt.Columns.Add("Date");
                    dt.Columns.Add("Size");
                    dt.Columns.Add("Services");
                    dt.Columns.Add("Price");
                    dt.Columns.Add("Id");
                    dt.NewRow();
                    while (dr.Read())
                    {
                        serviceList.Clear();
                        serviceList.Add(dr["reservation_bath"].ToString());
                        serviceList.Add(dr["reservation_cut"].ToString());
                        serviceList.Add(dr["reservation_dogAroma"].ToString());
                        serviceList.Add(dr["reservation_dogMassage"].ToString());
                        serviceList.Add(dr["reservation_tick"].ToString());
                        serviceList.Add(dr["reservation_sciCut"].ToString());
                        serviceList.Add(dr["reservation_detangling"].ToString());
                        services = getDogServices(serviceList);

                        String dogSize = "";
                        int size = int.Parse(dr["reservation_dogSize"].ToString());
                        switch (size)
                        {
                            case 0:
                                dogSize = "Small";
                                break;
                            case 1:
                                dogSize = "Medium";
                                break;
                            case 2:
                                dogSize = "Large";
                                break;
                            case 3:
                                dogSize = "Ex-Large";
                                break;
                        }
                        dt.Rows.Add(dr["reservation_date"].ToString(), dogSize, services, dr["reservation_price"].ToString(), dr["reservation_id"].ToString());
                    }
                }
                else
                    dogTable.Visible = false;

                    

                dogDatalist.DataSource = dt;
                dogDatalist.DataBind();
                con.Close();

                //cat reservation table
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd1 = new SqlCommand("SELECT * from serviceReservation_table where reservation_pet = 'cat' and user_email = '" + Session["email"].ToString() + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                String services1;
                List<String> serviceList1 = new List<string>();
                DataTable dt1 = new DataTable();
                if (dr1.HasRows)
                {
                    catTable.Visible = true;
                    dt1.Columns.Add("Date");
                    dt1.Columns.Add("Services");
                    dt1.Columns.Add("Price");
                    dt1.Columns.Add("Id");
                    dt1.NewRow();
                    while (dr1.Read())
                    {
                        serviceList1.Clear();
                        serviceList1.Add(dr1["reservation_bath"].ToString());
                        serviceList1.Add(dr1["reservation_cut"].ToString());
                        serviceList1.Add(dr1["reservation_tick"].ToString());
                        serviceList1.Add(dr1["reservation_sciCut"].ToString());
                        serviceList1.Add(dr1["reservation_detangling"].ToString());
                        services1 = getCatServices(serviceList1);

                        dt1.Rows.Add(dr1["reservation_date"].ToString(), services1, dr1["reservation_price"].ToString(), dr1["reservation_id"].ToString());
                    }
                }
                else
                    catTable.Visible = false;
                
                catDatalist.DataSource = dt1;
                catDatalist.DataBind();
                con.Close();

                //hotel reservation table
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd2 = new SqlCommand("SELECT * from hotelReservation_table where user_email = '" + Session["email"].ToString() + "'", con);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataTable dt2 = new DataTable();
                if (dr2.HasRows)
                {
                    hotelTable.Visible = true;
                    dt2.Columns.Add("ToDate");
                    dt2.Columns.Add("FromDate");
                    dt2.Columns.Add("HotelPet");
                    dt2.Columns.Add("HotelType");
                    dt2.Columns.Add("Price");
                    dt2.Columns.Add("Id");
                    dt2.NewRow();
                    while (dr2.Read())
                    {
                        dt2.Rows.Add(dr2["to_date"].ToString(), dr2["from_date"].ToString(), dr2["hotel_pet"].ToString(), dr2["hotel_type"].ToString(), dr2["price"].ToString(), dr2["hotelreservation_id"].ToString());
                    }
                }
                else
                    hotelTable.Visible = false;
                hotelDatalist.DataSource = dt2;
                hotelDatalist.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error" + ex);
            }

            if (dogTable.Visible == false && catTable.Visible == false && hotelTable.Visible == false)
                emptyResDiv.Visible = true;
        }

        public String getDogServices(List<String> serviceList)
        {
            String services="";
            String[] service = {"Bath","Cut","Aromatherapy System","Aroma Oil Massage","Tick Treatment","Scissor Cut","Detangling"};
            List<String> selected = new List<string>();
            
            for(int i=0;i<serviceList.Count;i++)
            {
                if (serviceList[i].Equals("True"))
                {
                    selected.Add(service[i]);
                }
            }

            for(int i=0; i<selected.Count; i++)
            {
                if (i == (selected.Count - 1))
                    services += selected[i];
                else
                    services += selected[i] + " / ";
            }

            return services;
        }

        public String getCatServices(List<String> serviceList)
        {
            String services = "";
            String[] service = { "Bath", "Cut", "Tick Treatment", "Scissor Cut", "Detangling" };
            List<String> selected = new List<string>();

            for (int i = 0; i < serviceList.Count; i++)
            {
                if (serviceList[i].Equals("True"))
                {
                    selected.Add(service[i]);
                }
            }

            for (int i = 0; i < selected.Count; i++)
            {
                if (i == (selected.Count - 1))
                    services += selected[i];
                else
                    services += selected[i] + " / ";
            }

            return services;
        }

        protected void dogDatalist_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                HiddenField hf = (HiddenField)(e.Item.FindControl("HiddenFieldDogId"));

                SqlCommand cmd = new SqlCommand("delete from serviceReservation_table where reservation_id = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(hf.Value));
                cmd.ExecuteNonQuery();
                con.Close();
                getReservationList();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error" + ex);
            }
        }

        protected void catDatalist_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                HiddenField hf = (HiddenField)(e.Item.FindControl("HiddenFieldCatId"));

                SqlCommand cmd = new SqlCommand("delete from serviceReservation_table where reservation_id = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(hf.Value));
                cmd.ExecuteNonQuery();
                con.Close();
                getReservationList();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error" + ex);
            }
        }

        protected void hotelDatalist_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                HiddenField hf = (HiddenField)(e.Item.FindControl("HiddenFieldHotelId"));

                SqlCommand cmd = new SqlCommand("delete from hotelReservation_table where hotelreservation_id = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(hf.Value));
                cmd.ExecuteNonQuery();
                con.Close();
                getReservationList();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error" + ex);
            }
        }

    }
}