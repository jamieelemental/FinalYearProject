using System;
using System.Web.UI;

namespace BootstrapLearningExperience
{
    public partial class _Six : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFinished_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Initiate";
            Response.Redirect("/Begin/Finished.aspx", true);
        }
    }
}