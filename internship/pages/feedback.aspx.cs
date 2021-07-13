using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.pages
{
    public partial class feedback : System.Web.UI.Page
    {
        string connectionString = "Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;";
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(connectionString);
            con.Open();
            MySqlCommand com = new MySqlCommand("SELECT traineesno FROM train;", con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataTextField = ds.Tables[0].Columns["traineesno"].ToString();
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();
        }
        protected void submit(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
                {
                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("feedback", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_feedback", feed.Text);
                    sqlCmd.Parameters.AddWithValue("_traineesno", DropDownList1.SelectedValue);
                    sqlCmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}