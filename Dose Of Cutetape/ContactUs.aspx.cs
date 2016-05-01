using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;

namespace Dose_Of_Cutetape
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential userpassword = new System.Net.NetworkCredential();
            userpassword.UserName = "doseofcutetape@gmail.com";
            userpassword.Password="Admin1cb";

            smtpClient.Credentials = userpassword;

            SmtpClient smtp = new SmtpClient();
            MailMessage msg = new MailMessage("doseofcutetape@gmail.com", "doseofcutetape@gmail.com");
            msg.Subject = txtsubject.Text;
            msg.Body = TextBox1.Text;
            
            try
            {
                smtpClient.Send(msg);
                litresult.Text = "<p>Thank You! Your mail has been send!</p>";
            }
            catch (Exception ex)
            {
                litresult.Text = "<p>Send failed! Please try again.</p>";
            }

            TextBox1.Text = "";
        }
    }
}