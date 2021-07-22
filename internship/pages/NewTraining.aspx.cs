using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.pages
{
    public partial class NewTraining : System.Web.UI.Page
    {
        string connectionString = @"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        protected void save(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("newtraining", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_trainername", trainername.Text);
                    sqlCmd.Parameters.AddWithValue("_trainingname", trainingname.Text);
                    sqlCmd.Parameters.AddWithValue("_traineremail", traineremail.Text);
                    sqlCmd.Parameters.AddWithValue("_trainingdesc", trainingdesc.Text);
                    sqlCmd.Parameters.AddWithValue("_trainstart", datefrom.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("_trainend", datetill.Text.ToString());
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Text = "Done";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string comm = "CREATE TABLE" +trainingname.Text +"(  `date` date);";
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(comm, conn);
                cmd.ExecuteNonQuery();
            }
        }
    }
}