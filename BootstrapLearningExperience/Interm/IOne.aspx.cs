using System;
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
    }
}