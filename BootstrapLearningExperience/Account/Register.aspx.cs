using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using BootstrapLearningExperience.Models;

namespace BootstrapLearningExperience.Account
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class Register : Page
    {
        //Register new user.
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, EmailConfirmed = true };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                Connections.RegisterUser(Email.Text); //Register user in MY database.
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false); //Authenticate user.
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response); //Redirect user to the page they were on before registering.
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}