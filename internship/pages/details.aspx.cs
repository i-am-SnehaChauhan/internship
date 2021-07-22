using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace internship.pages
{
    public partial class details : System.Web.UI.Page
    {
        string connectionString = @"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        protected void save(object sender, EventArgs e)
        {
            int count;
            using (var conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                using (var cmd = new MySqlCommand("SELECT COUNT(*) FROM test", conn))
                {
                    count = Convert.ToInt32(cmd.ExecuteScalar());
                    count++;
                }
            }
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {
                    serialnumber.Text = financialyear.SelectedValue + count;
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("TraineeAdd", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_traineename", traineename.Text);
                    sqlCmd.Parameters.AddWithValue("_traineenumber", traineenumber.Text);
                    sqlCmd.Parameters.AddWithValue("_traineeemail", traineeemail.Text);
                    sqlCmd.Parameters.AddWithValue("_traineeresume", traineeresume.Text);
                    sqlCmd.Parameters.AddWithValue("_traineeyear", Convert.ToInt32(financialyear.SelectedValue));
                    sqlCmd.Parameters.AddWithValue("_traineedescription", trainingdesc.Text);
                    sqlCmd.Parameters.AddWithValue("_trainstart", datefrom.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("_trainend", datetill.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("_traineesno", serialnumber.Text);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Text = "Done";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
        protected void update(object sender, EventArgs e)
        {
            using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
            {
                sqlCon.Open();
                MySqlCommand sqlCmd = new MySqlCommand("TraineeUpdate", sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                if (serialnumber.Text != null)
                {
                    sqlCmd.Parameters.AddWithValue("_traineesno", serialnumber.Text);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Text = "Updated";
                }
                else
                {
                    lblMessage.Text = "Nothing selected";
                }
            }
        }
        protected void delete(object sender, EventArgs e)
        {
            using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
            {
                sqlCon.Open();
                MySqlCommand sqlCmd = new MySqlCommand("TraineeDelete", sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("_traineesno", serialnumber.Text);
                sqlCmd.ExecuteNonQuery();
                lblMessage.Text = "Deleted";
            }
        }
        protected void view(object sender, EventArgs e)
        {
            using (MySqlConnection sqlCon = new MySqlConnection(@"Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;"))
            {
                sqlCon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("TraineeView", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                gvtrainee.DataSource = dtbl;
                gvtrainee.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}