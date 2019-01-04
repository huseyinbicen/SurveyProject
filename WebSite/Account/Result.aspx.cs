using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Database;

namespace WebSite.Account
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SurveyContext ctx = new SurveyContext();

            int id = Convert.ToInt32(Session["Id"]);
            var q1 = ctx.Answers.Where(x => x.User_Id == id).ToList();
            var q3 = ctx.Surveys.Where(x => x.User_Id == id).ToList();


            int index = 0;

            int yess = 0;
            int noo = 0;

            DataTable dt = new DataTable();

            dt.Columns.AddRange(new DataColumn[4]
            {
                new DataColumn("Question", typeof(string)),
                new DataColumn("Op1", typeof(string)),
                new DataColumn("Op2",typeof(string)),
                new DataColumn("NumOfAnswer",typeof(string))
            });


            foreach (var item in q3)
            {
                foreach (var item2 in q1)
                {
                    if (item.KeyOfSurvey.Equals(item2.SurveyKey))
                    {
                        index++;
                        if (item2.Answer1.Equals(item.Op1.ToString()))
                        {
                            yess++;
                        }
                        else
                        {
                            noo++;
                        }
                    }
                }

                string forOP1 = item.Op1.ToString() + " = %" + (int)((100 / index) * yess);
                string forOP2 = item.Op2.ToString() + " = %" + (int)((100 / index) * noo);

                dt.Rows.Add(item.Question.ToString(), forOP1, forOP2, index.ToString());

                index = 0;
                yess = 0;
                noo = 0;
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}