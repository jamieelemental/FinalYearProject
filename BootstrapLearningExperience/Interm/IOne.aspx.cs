using System;
using System.Web.UI;
using Microsoft.AspNet.Identity;

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
                    this.inpt.Text = Session["UserCode"].ToString(); //If users code is saved in session, set it in the input text box.
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["UserCode"] = this.inpt.Text; //Store users code in session.
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Semi-Pro"; //Set users new rank in session.
            Connections.UpdateUserRank(Context.User.Identity.GetUserName().ToString(), "Semi-Pro"); //Update users rank in database.
            Response.Redirect("/Advanced/AOne.aspx"); //Redirect to next page.
        }
    }
}