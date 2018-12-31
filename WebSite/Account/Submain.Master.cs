using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.Account
{
    public partial class Submain : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Station"] == "OK")
            {
                lbl_Username.Text = String.Format("Hoşgeldiniz :) {0}", Session["Username"].ToString());

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("~/Default.aspx");
            Session["Login_Station"] = "";
        }
    }
}