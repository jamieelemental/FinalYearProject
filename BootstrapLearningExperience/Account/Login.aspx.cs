using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity.Owin;

namespace BootstrapLearningExperience.Account
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);
                
                //Act on the results of log in check. 
                switch (result)
                {
                    case SignInStatus.Success:
                        Session["Rank"] = Connections.getRank(Email.Text); //Set users rank.
                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response); //Return user to the page they were on before log in.                     
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Invalid login attempt"; //Error message.
                        ErrorMessage.Visible = true; //Make error visible. 
                        break;
                }
            }
        }
    }
}