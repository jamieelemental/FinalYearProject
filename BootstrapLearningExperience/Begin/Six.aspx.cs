using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace BootstrapLearningExperience
{
    public partial class _Six : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFinished_Click(object sender, EventArgs e)
        {
            Session["Rank"] = "Initiate";
            string userEmail = Context.User.Identity.GetUserName().ToString();

            if (userEmail != null)
            {
                UpdateUser(userEmail);
            }

            Response.Redirect("/Begin/Finished.aspx", true);
        }

        protected bool UpdateUser(string Email)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand updateUser = new SqlCommand();
                updateUser.CommandText = "UPDATE Users.dbo.[Table] SET usrRank = 'Initiate' WHERE usrEmail = '" + Email + "'";
                updateUser.Connection = con;

                con.Open();
                updateUser.ExecuteNonQuery();
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