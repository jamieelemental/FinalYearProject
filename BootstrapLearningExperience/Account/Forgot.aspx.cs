using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using BootstrapLearningExperience.Models;

namespace BootstrapLearningExperience.Account
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Checks if email address is valid, and either tells the user that the account doesn't exist, or shows an email sent message.
        //Never got configured, so no email actually gets sent out. 
        protected void Forgot(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindByName(Email.Text);
                if (user == null || !manager.IsEmailConfirmed(user.Id))
                {
                    FailureText.Text = "The user either does not exist or is not confirmed.";
                    ErrorMessage.Visible = true; //Shows user the warning above.
                    return;
                }
                
                loginForm.Visible = false; //Hides email form.
                DisplayEmail.Visible = true; //Shows email sent message. (No EMail is actually sent).
            }
        }
    }
}