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
    public partial class Share : System.Web.UI.Page
    {

        string Key;

        protected void Page_Load(object sender, EventArgs e)
        {
            SurveyContext ctx = new SurveyContext();

            int id = Convert.ToInt32(Session["Id"]);
            var q1 = ctx.Surveys.Where(x => x.User_Id == id).ToList();

            DataTable dt = new DataTable();

            dt.Columns.AddRange(new DataColumn[4] 
            {
                new DataColumn("numara", typeof(string)),
                new DataColumn("soru", typeof(string)),
                new DataColumn("lifetime",typeof(string)),
                new DataColumn("weburl",typeof(string))
            });

            foreach (var item in q1)
            {
                string url = string.Format("http://{0}/AnswerSurvey.aspx?Key={1}", HttpContext.Current.Request.Url.Authority,item.KeyOfSurvey);

                dt.Rows.Add(item.Id.ToString(), item.Question.ToString(), item.LifeTime.ToString(), url);
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        
    }
}