using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        SurveyContext ctx;
        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new SurveyContext();
            int id = Convert.ToInt32(Session["Id"].ToString());
            var getUser = ctx.Users.Where(x => x.Id == id).FirstOrDefault();

            txt_Username.Text = getUser.Username;
            txt_Mail.Text = getUser.eMail;
            txt_NameSurname.Text = getUser.NameSurname;
            bool gender = (bool)getUser.Gender;
            if(gender != null)
            {
                if (gender)
                {
                    rb_Male.Checked = true;
                    rb_Female.Checked = false;
                }
                else
                {
                    rb_Male.Checked = false;
                    rb_Female.Checked = true;
                }
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            ctx = new SurveyContext();
            int id = Convert.ToInt32(Session["Id"].ToString());
            var getUser = ctx.Users.Where(x => x.Id == id).FirstOrDefault();

            if (getUser.Password == txt_oldPassword.Text)
            {
                getUser.NameSurname = txt_NameSurname.Text;
                getUser.eMail = txt_Mail.Text;
                if (rb_Male.Checked)
                {
                    getUser.Gender = true;
                }
                else
                {
                    getUser.Gender = false;
                }

                if ((txt_NewPassword != null && txt_ConfirmNewPassword.Text != null) && (txt_NewPassword.Text == txt_ConfirmNewPassword.Text))
                {
                    getUser.Password = txt_NewPassword.Text;
                    CustomValidator1.ErrorMessage = "Şifreniz ve Bilgileriniz Güncellenmiştir. Teşekkürler";
                }

                ctx.SaveChanges();
            }

            else
            {
                CustomValidator1.ErrorMessage = "Bilgileriniz Güncellenmiştir. Teşekkürler";
            }

            
        }
    }
}