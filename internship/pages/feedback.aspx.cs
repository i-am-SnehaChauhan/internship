using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.pages
{
    public partial class feedback : System.Web.UI.Page
    {
        string connectionString = @"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["loggedIn"] == true)
            {
                Response.Redirect("~/accounts/login.aspx");
            }
        }
        protected void submit(object sender, EventArgs e)
        {
                    MySqlConnection sqlCon = new MySqlConnection(connectionString);
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_sno",  serialnumber.Text);
                    sqlCmd.Parameters.AddWithValue("_feedback", feed.Text);
                    sqlCmd.ExecuteNonQuery();
        }
    }
}