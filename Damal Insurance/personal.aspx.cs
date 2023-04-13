using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Damal_Insurance
{
    public partial class personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            allData();

        }
        private void allData()
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-4L6Q6IM;Initial Catalog=DamalDB;Integrated Security = true;");
            string sql = "SELECT Id, Name, Nationality, DOB, Telephone, Address, Occupation, Email, Location FROM PersonalInfo";
            SqlCommand command = new SqlCommand(sql, connection);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            var list = dt;

            if (dt.Rows.Count <= 0)
            {
                return;

            }
            gvList.DataSource = list;
            gvList.DataBind();

            gvList.UseAccessibleHeader = true;
            gvList.HeaderRow.TableSection = TableRowSection.TableHeader;
            gvList.FooterRow.TableSection = TableRowSection.TableFooter;


            adapter.Dispose();
            command.Dispose();
            connection.Dispose();
        }
    }
}