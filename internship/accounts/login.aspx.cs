using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.accounts
{
    public partial class login : System.Web.UI.Page
    {
        string connectionString = @"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void logIn(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("login", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_email", Email.Text);
                    sqlCmd.Parameters.AddWithValue("_password", Password.Text);
                    MySqlDataAdapter sda = new MySqlDataAdapter(sqlCmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    sqlCmd.ExecuteNonQuery();
                    if (dt.Rows.Count > 0)
                    {
                        FailureText.Text = "Done";
                        ErrorMessage.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                FailureText.Text = ex.Message;
                ErrorMessage.Visible = true;
            }
        }
    }
}