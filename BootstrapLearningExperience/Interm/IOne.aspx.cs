using Microsoft.AspNet.Identity;
using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace BootstrapLearningExperience
{
    public partial class IOne : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserCode"] != null)
                {
                    this.inpt.Text = Session["UserCode"].ToString();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["UserCode"] = this.inpt.Text;
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Semi-Pro";
            Connections.UpdateUserRank(Context.User.Identity.GetUserName().ToString(), "Semi-Pro");
            Response.Redirect("/Advanced/AOne.aspx");
        }
    }
}