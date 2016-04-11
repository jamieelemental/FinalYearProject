using System;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using BootstrapLearningExperience.Models;
using System.Data.SqlClient;

namespace BootstrapLearningExperience.Account
{
    public partial class Manage : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        protected void Page_Load()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            if (!IsPostBack)
            {
                ChangePassword.Visible = true;

                // Render success message
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // Strip the query string from action
                    Form.Action = ResolveUrl("~/Account/Manage");

                    SuccessMessage =
                        message == "ChangePwdSuccess" ? "Your password has been changed."
                        : message == "SetPwdSuccess" ? "Your password has been set."
                        : message == "RemoveLoginSuccess" ? "The account was removed."
                        : message == "AddPhoneNumberSuccess" ? "Phone number has been added"
                        : message == "RemovePhoneNumberSuccess" ? "Phone number was removed"
                        : String.Empty;
                    successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            string userEmail = Context.User.Identity.GetUserName().ToString();
            var user = manager.FindByEmail(userEmail);

            if (user != null)
            {
                manager.Delete(user);
                deleteUser(userEmail);
                Request.GetOwinContext().Authentication.SignOut();
                Response.Redirect("/Default.aspx");
            }
            else
            {
                Response.Write("Error");
            }
        }

        private bool deleteUser(string Email)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand addUser = new SqlCommand();
                addUser.CommandText = "DELETE FROM Users.dbo.[Table] WHERE usrEmail = '" + Email + "'";
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