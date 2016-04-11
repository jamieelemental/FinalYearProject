using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using BootstrapLearningExperience.Models;
using System.Data.SqlClient;

namespace BootstrapLearningExperience.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, EmailConfirmed = true };
            IdentityResult result = manager.Create(user, Password.Text);
            bool register = RegisterUser(Email.Text);

            if (result.Succeeded)
            {
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }

        protected bool RegisterUser(string Email)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand addUser = new SqlCommand();
                addUser.CommandText = "INSERT INTO Users.dbo.[Table] (usrEmail, usrRank) VALUES('" + Email + "', 'Novice')";
                addUser.Connection = con;

                con.Open();
                addUser.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                con.Close();
                return false;
            }
        }
    }
}