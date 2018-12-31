using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            if (IsvalidUser(username.Text, Password.Text))
            {
                Session["Username"] = username.Text;
                Session["Login_Station"] = "OK";

                HttpCookie cerez = new HttpCookie("CookieAktar");
                cerez["Username"] = username.Text;
                cerez.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(cerez);

                Response.Redirect("Account/Home.aspx");

            }
            else
            {
                lbl_Message.Text = "Giriş Başarısız, Lütfen Tekrar Deneyin !!!";
                lbl_Message.ForeColor = System.Drawing.Color.PaleVioletRed;
            }
        }

        private bool IsvalidUser(string userName, string password)
        {
            SurveyContext ctx = new SurveyContext();

            var q1 = from p in ctx.Users
                     where p.Username == userName
                     && p.Password == password
                     select p;

            Session["Id"] = ctx.Users.Where(x => x.Username == userName && x.Password == password).FirstOrDefault().Id;

            if (q1.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}