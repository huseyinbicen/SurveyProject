using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add("huseynbicen@gmail.com");
            mail.From = new MailAddress("anketistan72@gmail.com", "Anketistan", System.Text.Encoding.UTF8);
            mail.Subject = "Concant Page || Anketistan";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            string body = "From: " + txt_Name.Text + "\n";
            body += "Email: " + txt_Mail.Text + "\n";
            body += "Phone: " + txt_Phone.Text + "\n";
            body += "Question: \n" + txt_Message.Text + "\n";
            mail.Body = body.ToString();
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("anketistan72@gmail.com", "Hb.123456");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                Page.RegisterStartupScript("UserMsg", "<script>alert('Başarıyla Gönderildi... Teşekkürler');if(alert){ window.location='Default.aspx';}</script>");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                Page.RegisterStartupScript("UserMsg", "<script>alert('Gönderme Başarısız...');if(alert){ window.location='Contact.aspx';}</script>");
            }
        }
    }
}