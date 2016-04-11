using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity.Owin;
using System.Data.SqlClient;

namespace BootstrapLearningExperience.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            ForgotPasswordHyperLink.NavigateUrl = "Forgot";
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);
                

                switch (result)
                {
                    case SignInStatus.Success:
                        getRank(Email.Text);
                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);                        
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                        Request.QueryString["ReturnUrl"],
                                                        RememberMe.Checked),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Invalid login attempt";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }

        private void getRank(string email)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand getUser = new SqlCommand();
                getUser.CommandText = "SELECT usrRank FROM Users.dbo.[Table] WHERE usrEmail = '" + email + "'";
                getUser.Connection = con;

                con.Open();
                Session["Rank"] = getUser.ExecuteScalar().ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
                Session["Rank"] = "Failed";
            }
        }
    }
}