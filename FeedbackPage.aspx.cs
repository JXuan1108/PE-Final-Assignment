using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace PE_Final_Assignment
{
    public partial class FeedbackPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitPassword_Click(object sender, EventArgs e)
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
                message.Subject = "Paws N' Claws Feedback/Reviews";

                message.Body = "Details of Feedback / Reviews for Paws N' Claws: " + Environment.NewLine + "Name: " + name.Text + Environment.NewLine + "Contact Number: " + contact.Text
                    + Environment.NewLine + "Email Address: " + email.Text + Environment.NewLine + "Feedback/Review: " + feedbackText.Text + Environment.NewLine + "Rating: " + Request.Form["star"].ToString();
                message.IsBodyHtml = false;

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