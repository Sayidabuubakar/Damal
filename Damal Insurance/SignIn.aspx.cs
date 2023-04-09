using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Damal_Insurance;

namespace Damal_Insurance
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Text1.Text = string.Empty;
                Text2.Text = string.Empty;
            }
            if (Utils.Users.IsUserLoggedIn())
            {
                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = Text1.Text;
            string password = Text2.Text;

            bool isAuthenticated = Utils.Users.AuthenticateUser(username, password);

            if (isAuthenticated)
            {
                Response.Redirect("Dashboard.aspx");
                Session["User"] = username;
            }
            else
            {
                LoginErrorLabel.Text = "Invalid Username or Password";
                LoginErrorLabel.Visible = true;
            }
        }
    }
}