using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.accounts
{
    public partial class Register : System.Web.UI.Page
    {
        string connectionString = @"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        string level = "trainee";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void registration(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("RegisterNew", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_email", Email.Text);
                    sqlCmd.Parameters.AddWithValue("_password", Password.Text);
                    sqlCmd.Parameters.AddWithValue("_level", level);
                    sqlCmd.Parameters.AddWithValue("_name", name.Text);
                    sqlCmd.Parameters.AddWithValue("_phonenumber", phonenumber.Text);
                    sqlCmd.ExecuteNonQuery();
                    ErrorMessage.Text = "Done";
                }
            }
            catch (Exception ex)
            {
                ErrorMessage.Text = ex.Message;
            }
        }
    }
}