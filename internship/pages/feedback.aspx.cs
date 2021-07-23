using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internship.pages
{
    public partial class feedback : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(connectionString);
            con.Open();
            MySqlCommand com = new MySqlCommand("SELECT traineename FROM train;", con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataTextField = ds.Tables[0].Columns["traineename"].ToString();
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();
        }
        protected void submit(object sender, EventArgs e)
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
    }
}