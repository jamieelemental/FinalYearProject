using Microsoft.AspNet.Identity;
using System;
using System.Data.SqlClient;
using System.Web.UI;

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
                    this.inpt.Text = Session["UserCode"].ToString();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["UserCode"] = this.inpt.Text;
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Semi-Pro";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            string userEmail = Context.User.Identity.GetUserName().ToString();
            try
            {
                SqlCommand updateUser = new SqlCommand();
                updateUser.CommandText = "UPDATE Users.dbo.[Table] SET usrRank = 'Semi-Pro' WHERE usrEmail = '" + userEmail + "'";
                updateUser.Connection = con;

                con.Open();
                updateUser.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }

            Response.Redirect("/Advanced/AOne.aspx");
        }
    }
}