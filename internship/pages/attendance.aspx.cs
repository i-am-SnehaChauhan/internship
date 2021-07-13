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
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;");
            con.Open();
            MySqlDataAdapter sqlDa = new MySqlDataAdapter("select traineesno from train", con);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            GridView1.DataSource = dtbl;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=training;Uid=root;Pwd=Mysql@123;");
            con.Open();
            MySqlCommand sqlCmd = new MySqlCommand("addattendance", con);
            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("_trainesno", GridView1.Rows[0]);
            sqlCmd.Parameters.AddWithValue("_present", '1');

        }
    }
}