using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            using (var ctx = new SurveyContext())
            {
                var q1 = from p in ctx.Users
                         where p.eMail == txt_eMail.Text
                         || p.Username == txt_Username.Text
                         select p;

                if (q1.Any())
                {
                    Response.Write("<script language=javascript>alert('Daha önce böyle bir kayıt almıştık. Lütfen E-Posta veya Username değiştiriniz.');</script>");
                }
                else
                {
                    var newUser = new User()
                    {
                        NameSurname = txt_NameSurname.Text,
                        Username = txt_Username.Text,
                        eMail = txt_eMail.Text,
                        Password = txt_Password.Text,
                        DateOfJoin = DateTime.Now
                    };
                    ctx.Users.Add(newUser);
                    ctx.SaveChanges();
                }
                
            }

            ClearBox();
            Response.Write("<script language=javascript>alert('Başarı ile kaydınız alındı.');</script>");
            Response.Redirect("Login.aspx");
        }

        public void ClearBox()
        {
            txt_Username.Text = string.Empty;
            txt_NameSurname.Text = string.Empty;
            txt_eMail.Text = string.Empty;
        }
    }
}