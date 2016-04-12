using Microsoft.AspNet.Identity;
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
            Session["Rank"] = "Initiate"; //Update users rank in session.
            string userEmail = Context.User.Identity.GetUserName().ToString(); //Get users email

            if (userEmail != null)
            {
                Connections.UpdateUserRank(userEmail, "Initiate"); //Update users rank stored in the database.
            }

            Response.Redirect("/Begin/Finished.aspx", true); //Redirect to the next page.
        }
    }
}