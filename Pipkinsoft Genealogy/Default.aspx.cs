using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pipkinsoft_Genealogy
{
    public partial class Default : System.Web.UI.Page
    {
        public string Alert = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Alert = "";

            if (Page.IsValid)
            {
                WebClient client = new WebClient();
                
                string response = client.DownloadString(
                    string.Format(
                        "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}&remoteip={2}",
                        "6LctkgMTAAAAAAEuONLEOg6dQ5nX5B7Of_LYbcmk",
                        Request["g-recaptcha-response"],
                        Request.UserHostAddress
                        ));

                if (response.Contains("\"success\": true"))
                {
                    using (MailMessage email = new MailMessage())
                    {
                        email.From = new MailAddress("support@pipkinsoft.com", "Pipkinsoft Support");
                        email.To.Add(new MailAddress("ancestry@pipkinsoft.com", "Pipkinsoft Ancestry"));
                        email.Subject = "New Tree Request";
                        email.Body =
                            "Name: " + Name.Text + "\r\n\r\n" +
                            "Email: " + Email.Text + "\r\n\r\n" +
                            "Phone: " + Phone.Text;

                        SmtpClient smtp = new SmtpClient();
                        smtp.EnableSsl = true;
                        smtp.Send(email);
                        smtp.Dispose();
                    }

                    Alert = "Your submission has been sent successfully.";
                    Name.Text = "";
                    Email.Text = "";
                    Phone.Text = "";
                    return;
                }
                else
                {
                    cvCaptcha.IsValid = false;
                }
            }

            Alert = "There were some issues with your submission.  Please review the form and re-submit.";
        }
    }
}