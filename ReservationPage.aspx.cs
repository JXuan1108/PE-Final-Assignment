using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class ReservationPage : System.Web.UI.Page
    {

        List<int> dogBathList = new List<int> { 75, 95, 125, 165};
        List<int> dogCutList = new List<int> { 55, 75, 105, 145};
        List<int> dogAromaList = new List<int> { 35, 55, 75, 95 };
        List<int> dogMassageList = new List<int> { 15, 20, 25, 35 };

        int price=0;

        protected void Page_Load(object sender, EventArgs e)
        {
            hideForm();

            if (!IsPostBack)
            {

            }
            else
            {

            }

            if (Session["SelectedPetService"].ToString() != null)
            {
                string imgUrl = Session["SelectedPetService"].ToString();
                servicePricesImgHolder.ImageUrl = imgUrl;

                if (imgUrl == @"images/dogGroomPrice.jpg")
                    dogForm.Visible = true;
                else
                    catForm.Visible = true;
            }

            calcPrice();

        }

        private void calcPrice()
        {
            int SelectedIndex = int.Parse(dogSizeDDL.SelectedValue);

            CheckDogServicePrice(SelectedIndex);
            CheckCatServicePrice();
            ServicePrice.Text = "RM"+price;
        }

        private void hideForm()
        {
            dogForm.Visible = false;
            catForm.Visible = false;
        }

        private void CheckDogServicePrice(int SelectedIndex)
        {
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
        }

        protected void catSubmitBtn_Click(object sender, EventArgs e)
        {
           //database conn
        }

        protected void dogSubmitBtn_Click(object sender, EventArgs e)
        {
            //database conn
        }
    }
}