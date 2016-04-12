using System;
using System.Data.SqlClient;

namespace BootstrapLearningExperience
{
    public static class Connections
    {
        public static string getRank(string userEmail)
        {
            if (userEmail != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

                try
                {
                    SqlCommand getUser = new SqlCommand();
                    getUser.CommandText = "SELECT usrRank FROM Users.dbo.[Table] WHERE usrEmail = '" + userEmail + "'";
                    getUser.Connection = con;

                    con.Open();
                    string rank = getUser.ExecuteScalar().ToString();
                    con.Close();
                    return rank;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return "Novice";
                }
            }

            else {
                return "Novice";
            }
        }

        public static bool UpdateUserRank(string Email, string Rank)
        {//Connect to the local database and update the rank for the stored user.
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand updateUser = new SqlCommand();
                updateUser.CommandText = "UPDATE Users.dbo.[Table] SET usrRank = '" + Rank + "' WHERE usrEmail = '" + Email + "'";
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

        public static bool RegisterUser(string userEmail)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Initial Catalog=Users;Integrated Security=True";

            try
            {
                SqlCommand addUser = new SqlCommand();
                addUser.CommandText = "INSERT INTO Users.dbo.[Table] (usrEmail, usrRank) VALUES('" + userEmail + "', 'Novice')";
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

        public static bool DeleteUser(string Email)
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