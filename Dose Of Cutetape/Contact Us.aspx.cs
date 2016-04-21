using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Dose_Of_Cutetape
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        private object mail;
        private object client;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            if (IsValid!)
            {
                return;
            }
            else
            { 
               
            SmtpClient client = new SmtpClient();
            //set the smtp client
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            formPH.Visible = false;
            successPH.Visible = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "dosoofcutetape@gmail.com";
            userpass.Password = "admin123";

            client.Credentials = userpass;

            //MailMessage msg = new MailMessage ()
            //CreateChildControls new email from REPLACE_WIH_USER @gmail.com

            MailMessage msg = new MailMessage("doseofcutetape@gmail.com", "doseofcutetape@gmail.com);

            //set subject of the msg $n set the body using the text form textbox
            msg.Subject = "A new email from the website";
            msg.Body = TextBox1.Text;
            }
            //send the message
            try
            {
                client.Submit();
                litresult.Text = "<p>Your Message successfully send</p>";
            }
            catch  (Exception ex)
            {
                litresult.Text = "<p>Send Failed</p>";
            }
        }
             
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
           

        }
    }
}