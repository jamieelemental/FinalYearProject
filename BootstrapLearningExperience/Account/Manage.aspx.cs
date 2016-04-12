using System;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace BootstrapLearningExperience.Account
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class Manage : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        protected void Page_Load()
        {
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
                        : String.Empty;
                    successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>(); //Get User manager object
            string userEmail = Context.User.Identity.GetUserName().ToString(); //Get Email address of current user.
            var user = manager.FindByEmail(userEmail); //Use manager object to extract user object. 

            if (user != null)
            {
                manager.Delete(user); //Delete user object from Owin Authentication.
                Connections.DeleteUser(userEmail); //Remove user details from MY database.
                Request.GetOwinContext().Authentication.SignOut(); //Sign out from Owin Authentication.
                Response.Redirect("/Default.aspx"); //Redirect user to default page. 
            }
            else
            {
                Response.Write("Error");
            }
        }       
    }
}