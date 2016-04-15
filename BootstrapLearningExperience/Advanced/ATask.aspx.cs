using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;

namespace BootstrapLearningExperience.Advanced
{
    public partial class ATask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //If the page is not reloading a postback, try load in the session stored user code (if it exists).
            if (!IsPostBack)
            {
                if (Session["UserCodeAdv"] != null)
                {
                    this.inpt.Text = Session["UserCodeAdv"].ToString();
                }
                else
                {
                    this.inpt.Text = System.IO.File.ReadAllText(Server.MapPath("AExampleStriped.html")); //If no user code saved, load in the task code.
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Save users code in the session.
            Session["UserCodeAdv"] = this.inpt.Text; //store the users code in a session variable. 
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            //Used to send the user a HTML file as a download rather than a webpage.
            HttpResponse Response = HttpContext.Current.Response;
            Response.ContentType = "application/html";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Example.html");
            Response.TransmitFile(Server.MapPath("AExampleStriped.html"));
            Response.Flush();
            Response.End();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            WebRequest request = WebRequest.Create("https://validator.w3.org/nu/?out=gnu");
            request.ContentType = "text/html; charset=UTF-8";
            request.Method = "POST";

            string postData = this.inpt.Text;
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