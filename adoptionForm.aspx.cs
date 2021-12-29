using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class adoptionForm : System.Web.UI.Page
    {
        List<String> info;

        protected void Page_Load(object sender, EventArgs e)
        {
            info = (List<String>)Session["petInfo"];

            if (Session["petInfo"] == null)
            {
                Response.Redirect("~/petAdoption.aspx");
            }
        }

        protected void submitForm_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage();
                //Add your email address to the recipients
                message.To.Add(new MailAddress("PawsNClaws578@gmail.com"));
                //Configure the address we are sending the mail from **- NOT SURE IF I NEED THIS OR NOT?**
                MailAddress address = new MailAddress("PawsNClaws578@gmail.com");
                message.From = address;
                //Append their name in the beginning of the subject
                message.Subject = "Paws N' Claws Adoption Request";

                string mailbody = "Details of Adoption Request for Paws N' Claws: " + "<br/>" + "Name: " + name.Text + "<br/>" + "Contact Number: " + contact.Text
                    + "<br/>" + "Email Address: " + email.Text + "<br/>" + "Reason: " + reasonText.Text + "<br/><br/>" + "Pet Details:" + "<br/>" +
                    "<img src=\"cid:petImage\" width='300' height='300'>"+ "<br/>" + "Breed: " + info[1] + "<br/>"  + "Gender: " + info[2] + "<br/>" + "Age: " + info[3] +
                    "<br/>" + "Size: " + info[4] + "<br/>" + "Colour: " + info[5] + "<br/>" + "Vaccinated: " + info[6] + "<br/>" + "Dewormed: " + info[7] + "<br/>" + "Condition: " + info[8];

                AlternateView AlternateView_Html = AlternateView.CreateAlternateViewFromString(mailbody, null, System.Net.Mime.MediaTypeNames.Text.Html);
                // Create a LinkedResource object and set Image location path and Type
                LinkedResource petImg = new LinkedResource(Server.MapPath(info[0]), MediaTypeNames.Image.Jpeg);
                petImg.ContentId = "petImage";
                AlternateView_Html.LinkedResources.Add(petImg);
                message.AlternateViews.Add(AlternateView_Html);
                message.Body = mailbody;

                message.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("PawsNClaws578@gmail.com", "PawsNClaws+578+");
                client.Send(message);

                Response.Write("<script>alert('Thank you for your feedback!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}