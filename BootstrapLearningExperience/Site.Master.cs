using System;
using System.IO;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;


namespace BootstrapLearningExperience
{
    //The contents of this class has not been entirely written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data/")); //Set the database path. Mapping the path reletive to the server.
            versionInfo();
            getRank();
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        private void versionInfo()
        {
            Session["VersionNo"] = findFiles().ToString(); //Set Version 'number' in the session (date).
        }

        private List<String> DirSearch(string sDir)
        {//Searches all folders of the website, and creates a list of all files.

            List<String> files = new List<String>();
            string txtFiles = "";
            try
            {
                foreach (string file in Directory.GetFiles(sDir))
                {
                    files.Add(file);
                }
                foreach (string dir in Directory.GetDirectories(sDir))
                {
                    files.AddRange(DirSearch(dir));
                }
            }
            catch (System.Exception exc)
            {
                txtFiles += "\r\n" + exc.Message;
            }
            return files;
        }

        private DateTime findFiles()
        {//searches through list of files to find the most recently editied file. This will give us the date the website was last updated. 
            string exePath = System.Reflection.Assembly.GetExecutingAssembly().Location;
            string exeDir = System.IO.Path.GetDirectoryName(exePath);
            DirectoryInfo binDir = System.IO.Directory.GetParent(exeDir);

            DirectoryInfo dir = new DirectoryInfo(binDir.ToString());
            Console.WriteLine(dir.ToString());

            string TopDIR = dir.ToString();
            List<String> files = DirSearch(TopDIR);

            DateTime lastModified = new DateTime(1990, 1, 1);

            if (files.Count != 0)
            {
                foreach (string file in files)
                {
                    DateTime fileEditDate = new FileInfo(file).LastWriteTime;

                    if (fileEditDate > lastModified)
                    {
                        lastModified = fileEditDate;
                    }
                }
            }
            return lastModified;
        }

        private void getRank()
        {
            //Get the users rank from the databse if they are signed in. If not, set their rank to Novice.
            if (Session["Rank"] == null)
            {
                if (Context.User.Identity.GetUserName().ToString() != null)
                {
                    string res = Connections.getRank(Context.User.Identity.GetUserName().ToString());
                    if (res != "error")
                    {
                        Session["Rank"] = res;
                    }
                    else
                    {
                        Session["Rank"] = "Novice";
                    }
                }
                else
                {
                    Session["Rank"] = "Novice";
                }
            }
        }
    }
}