using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tangzhenyuShySharkWebApp.NA
{
	public partial class ManageUsers : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnAddSubmit_Click(object sender, EventArgs e)
        {
			string uesrname, password, role;
			int selection;
			role = lstAddRole.SelectedValue;
			uesrname = txtAddUserName.Text;
            password = txtAddPassword.Text;
            selection = lstAddRole.SelectedIndex;

            //get conntection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();
            string queryString = "Select UserName, Password,role from dtUsers where UserName='" + uesrname + "'";

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand(queryString, conn);
            DataSet ds1 = new DataSet();
            adapter.Fill(ds1, "dtUsers");
            if (ds1.Tables["dtUsers"].Rows.Count == 0)
            {
                string insertQuery = "INSERT INTO [dtUsers] ([UserName], [Password], [role]) VALUES ('"+uesrname+"','"+password+"',"+role+"')";
                SqlCommand insertCommand = new SqlCommand(insertQuery, conn);
                insertCommand.ExecuteNonQuery();
            }
            else
            {
                lblMessage.Text = "The username already exists.Please try another user name";
                return;
            }

        }

        protected void btnDelDelete_Click(object sender, EventArgs e)
        {
            string uesrname = txtDelUserName.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();
            if (uesrname == "" || uesrname == null)
            {
                lblMessage.Text = "Please specify a valid username";
            }
            else
            {
                string queryString = "Select UserName, Password,role from dtUsers where UserName='" + uesrname + "'";
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = new SqlCommand(queryString, conn);
                DataSet ds1 = new DataSet();
                adapter.Fill(ds1, "dtUsers");
                if(ds1.Tables["dtUsers"].Rows.Count == 0)
                {
                    lblMessage.Text = "The username does not exist";
                    return;
                }
                else
                {
                    string queryString1 = "DELETE FROM [dtUsers] WHERE UserName='" + uesrname + "'";
                    SqlCommand deleteCommand = new SqlCommand(queryString1, conn);
                    deleteCommand.ExecuteNonQuery();
                    conn.Close();
                    lblMessage.Text = "The user has been deleted successfully";
                    txtDelUserName.Text = "";
                }

            }
        }
    }
}