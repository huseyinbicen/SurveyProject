using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite.Account
{
    public partial class Create : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_AnketOlustur_Click(object sender, EventArgs e)
        {
            try
            {
                using (var ctx = new SurveyContext())
                {
                    var newSurvey = new Survey()
                    {
                        Question = txt_Question.Text,
                        Op1 = txt_Op1.Text,
                        Op2 = txt_Op2.Text,
                        DateOFCreat = DateTime.Now,
                        LifeTime = Convert.ToInt32(DDL_Sure.SelectedItem.Value.ToString()),
                        Type = DDL_Type.SelectedItem.Text,
                        KeyOfSurvey = RandomString(),
                        User_Id = Convert.ToInt32(Session["Id"].ToString())
                    };
                    ctx.Surveys.Add(newSurvey);
                    ctx.SaveChanges();
                }
                Response.Write("<script language=javascript>alert('Anketiniz Başarı ile Eklendi. Lütfen Paylaş Kısmına bakınız.');</script>");

                txt_Op1.Text = string.Empty;
                txt_Op2.Text = string.Empty;
                txt_Question.Text = string.Empty;
            }
            catch (Exception hata)
            {
                Response.Write(string.Format("<script language=javascript>alert({0});</script>",hata.Message));
            }
        }

        Random rand = new Random();
        
        private string RandomString()
        {
            const string pool = "abcdefghijklmnopqrstuvwxyz0123456789";
            var builder = new StringBuilder();

            for (var i = 0; i < 10; i++)
            {
                var c = pool[rand.Next(0, pool.Length)];
                builder.Append(c);
            }

            return builder.ToString();
        }
    }
}