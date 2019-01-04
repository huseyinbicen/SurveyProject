using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            SurveyContext ctx = new SurveyContext();

            var q1 = from p in ctx.Users
                     where p.eMail == txt_Mail.Text.ToString()
                     select p;
            
            if (q1.Any())
            {
                var q2 = ctx.Users.Where(x => x.eMail == txt_Mail.Text.ToString()).FirstOrDefault();

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(txt_Mail.Text.ToString());
                mail.From = new MailAddress("anketistan72@gmail.com", "Anketistan", System.Text.Encoding.UTF8);
                mail.Subject = "Password forgotten || Anketistan";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "<strong>Kullanıcı Adı = </strong> " + q2.Username + " <br/> <strong>Şifre = </strong>  " + q2.Password.ToString() + "<br/><strong> Bizi Tercih Ettiğiniz için teşekürler.</strong> <br/> <strong>Anketistan</strong>";
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
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Başarıyla Gönderildi... E-Postanızı Kontrol Ediniz');if(alert){ window.location='Default.aspx';}</script>");
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
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Gönderme Başarısız...');if(alert){ window.location='ForgetPassword.aspx';}</script>");
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('Böyle bir mail bulunamadı.');</script>");
            }
        }
    }
}