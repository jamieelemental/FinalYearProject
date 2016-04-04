using System;

namespace BootstrapLearningExperience.Advanced
{
    public partial class ATask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserCodeAdv"] != null)
                {
                    this.inpt.Text = Session["UserCodeAdv"].ToString();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["UserCodeAdv"] = this.inpt.Text;
        }
    }
}