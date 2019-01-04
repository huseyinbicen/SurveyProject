using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite
{
    public partial class AnswerSurvey : System.Web.UI.Page
    {
        string key = "";
        SurveyContext ctx;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["Key"] != "")
            {
                key = Request.QueryString["Key"].ToString();
            }


            ctx = new SurveyContext();

            var q1 = ctx.Surveys.Where(x =>  x.KeyOfSurvey.Equals(key)).FirstOrDefault();

            lbl_Question.Text = q1.Question.ToString();
            rb_1.Text = q1.Op1.ToString();
            rb_2.Text = q1.Op2.ToString();
            
        }

        protected void btn_Cevap_Click(object sender, EventArgs e)
        {
            ctx = new SurveyContext();

            string isim = txt_Name.Text;
            string eMail = txt_Mail.Text;
            string answer;

            if (rb_1.Checked) { answer = rb_1.Text; }
            else if (rb_2.Checked) { answer = rb_2.Text; }
            else {answer = ""; }

            var q2 = ctx.Surveys.Where(x => x.KeyOfSurvey.Equals(key)).FirstOrDefault();

            if (!answer.Equals(""))
            {
                var newAnswer = new Answer()
                {
                    Name = isim,
                    Email = eMail,
                    Answer1 = answer,
                    SurveyKey = key,
                    User_Id = q2.User_Id,
                    Question = q2.Question
                };

                ctx.Answers.Add(newAnswer);
                ctx.SaveChanges();
                Response.Write("<script language=javascript>alert('Ankete Katıldığınız için Teşekkür Ederiz :) ');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Başarısız! Seçeneği seçmediniz. :) ');</script>");
            }

            txt_Mail.Text = "";
            txt_Name.Text = "";
        }
    }
}