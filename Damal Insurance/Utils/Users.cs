using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Damal_Insurance.Utils
{
    public class Users
    {
        public class User
        {
            public int ID { get; set; }
            public string Username { get; set; }
            public string Password { get; set; }
            public string Role { get; set; }
            public DateTime Created { get; set; }
        }

        public static void UserSignUp(string username, string password, string role)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DamalConString"].ConnectionString;

            // Define the INSERT query
            string query = "INSERT INTO Users (Username, Password, Role) VALUES (@Username, @Password, @Role)";

            // Create a new SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a new SqlCommand object
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add the parameters to the command
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Role", role);

                    // Open the connection
                    connection.Open();

                    // Execute the INSERT query
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // The user was successfully added to the database
                        Console.WriteLine("User {0} created successfully", username);
                    }
                    else
                    {
                        // There was an error adding the user to the database
                        Console.WriteLine("Error creating user {0}", username);
                    }
                }
            }
        }

        public static User getCurrentUser()
        {
            if (HttpContext.Current.Session["User"] != null)
            {
                return (User)HttpContext.Current.Session["User"];
            }
            else { return null; }
        }

        // Authentication Method
        public static bool AuthenticateUser(string username, string password)
        {
            bool isAuthenticated = false;

            string connectionString = ConfigurationManager.ConnectionStrings["DamalConString"].ConnectionString;

            string query = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();

                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    isAuthenticated = true;

                    // Retrieve user information from database and store it in session
                    query = "SELECT * FROM Users WHERE Username=@Username AND Password=@Password";

                    command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Store user information in session
                            HttpContext.Current.Session["User"] = new User
                            {
                                ID = (int)reader["ID"],
                                Username = reader["Username"].ToString(),
                                Role = reader["Role"].ToString(),
                            };
                        }
                    }
                }
            }

            return isAuthenticated;
        }
        // logout method
        public static void UserLogout()
        {
            HttpContext.Current.Session["User"] = null;

        }
        public static bool IsUserLoggedIn()
        {
            if (HttpContext.Current.Session["User"] != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }

}