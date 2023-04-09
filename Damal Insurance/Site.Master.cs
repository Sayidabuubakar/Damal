using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Damal_Insurance;

namespace Damal_Insurance
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Utils.Users.IsUserLoggedIn())
            {
                WelcomeMessage.Text = "Hello, " + Utils.Users.getCurrentUser().Username;
                WelcomeMessage.Visible = true;
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Utils.Users.UserLogout();
            Response.Redirect("SignIn.aspx");
        }
    }
}