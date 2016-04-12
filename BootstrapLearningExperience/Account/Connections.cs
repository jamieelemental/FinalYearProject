using System;
using System.Data.SqlClient;
using System.Configuration;

namespace BootstrapLearningExperience
{
    public static class Connections
    {      
        //Gets users stored rank from the database.
        public static string getRank(string userEmail)
        {
            if (userEmail != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString; //ConnectionString stored in web.config.

                try
                {
                    SqlCommand getUser = new SqlCommand();
                    getUser.CommandText = "SELECT usrRank FROM Users.dbo.[Table] WHERE usrEmail = '" + userEmail + "'"; //SQL Query
                    getUser.Connection = con;

                    con.Open();
                    string rank = getUser.ExecuteScalar().ToString(); //Gets first value, in this query only one value is returned.
                    con.Close();
                    return rank;
                }
                catch (Exception)
                {
                    con.Close(); //Just incase, close the connection
                    return "Novice";
                }
            }

            else {
                return "Novice";
            }
        }
                
        // Updates the users rank stored in the database.
        public static bool UpdateUserRank(string Email, string Rank)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString; //ConnectionString from web.config.

            try
            {
                SqlCommand updateUser = new SqlCommand();
                updateUser.CommandText = "UPDATE Users.dbo.[Table] SET usrRank = '" + Rank + "' WHERE usrEmail = '" + Email + "'"; //SQL Query
                updateUser.Connection = con;

                con.Open();
                updateUser.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception)
            {
                con.Close(); //Just incase, close the connection
                return false;
            }
        }

        //Stores details of a new user in the database.
        public static bool RegisterUser(string userEmail)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString; //ConnectionString from web.config.

            try
            {
                SqlCommand addUser = new SqlCommand();
                addUser.CommandText = "INSERT INTO Users.dbo.[Table] (usrEmail, usrRank) VALUES('" + userEmail + "', 'Novice')"; //SQL Query
                addUser.Connection = con;

                con.Open();
                addUser.ExecuteNonQuery(); //Non-query as no results returned.
                con.Close();
                return true;
            }
            catch (Exception)
            {
                con.Close(); //Close the connection to be safe.
                return false;
            }
        }

        //Remove a users details from the database.
        public static bool DeleteUser(string Email)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString; //ConnectionString from web.config

            try
            {
                SqlCommand addUser = new SqlCommand();
                addUser.CommandText = "DELETE FROM Users.dbo.[Table] WHERE usrEmail = '" + Email + "'"; //SQL Query
                addUser.Connection = con;

                con.Open();
                addUser.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception)
            {
                con.Close(); //Close conenction to be safe.
                return false;
            }
        }
    }
}