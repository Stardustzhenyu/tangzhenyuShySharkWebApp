using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tangzhenyuShySharkWebApp
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrRole"] == null)
            {
                Response.Redirect("default.aspx");
            }
            if(!(Session["usrRole"].ToString() == "Admin") )
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                Label1.Text = "Changing Password for " + Session["usrName"].ToString();
            }

        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
                conn.Open();
                string updateSql = "UPDATE dtUsers SET Password = @Password, PasswordChanged = '1' WHERE (UserName = @original_username)";
                SqlCommand updateCommand = new SqlCommand(updateSql, conn);
                updateCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
                updateCommand.Parameters.AddWithValue("@original_username", Session["usrName"]);
                updateCommand.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/NA/ManageUsers.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "Error: " + ex.Message;
            }
        }
    }
}