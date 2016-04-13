using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using System.Net;
using System.Text;
using System.IO;

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
                    this.inpt.Text = Session["UserCode"].ToString(); //If users code is saved in session, set it in the input text box.
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["UserCode"] = this.inpt.Text; //Store users code in session.
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Semi-Pro"; //Set users new rank in session.
            Connections.UpdateUserRank(Context.User.Identity.GetUserName().ToString(), "Semi-Pro"); //Update users rank in database.
            Response.Redirect("/Advanced/AOne.aspx"); //Redirect to next page.
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            WebRequest request = WebRequest.Create("https://validator.w3.org/nu/?out=gnu");
            request.ContentType = "text/html; charset=UTF-8";
            request.Method = "POST";

            string prePostData = "<!DOCTYPE html><html><head><title>Users Code</title><meta charset = \"utf-8\" /><script src = \"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\" ></script><script src = \"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" ></script><link href = \"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel = \"stylesheet\" /></head><body>";
            string postData = prePostData + this.inpt.Text + "</body></html>";
            byte[] byteArray = Encoding.UTF8.GetBytes(postData);
            request.ContentLength = byteArray.Length;
            Stream dataStream = request.GetRequestStream();
            dataStream.Write(byteArray, 0, byteArray.Length);
            dataStream.Close();

            WebResponse response = request.GetResponse();
            Console.WriteLine(((HttpWebResponse)response).StatusDescription);
            dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string responseFromServer = reader.ReadToEnd();
            Console.WriteLine(responseFromServer);
            reader.Close();
            dataStream.Close();
            response.Close();

            if (responseFromServer == "")
            {
                validationResponse.Text = "Valid HTML, congratulations!";
            }
            else
            {
                validationResponse.Text = responseFromServer;
            }
        }
    }
}