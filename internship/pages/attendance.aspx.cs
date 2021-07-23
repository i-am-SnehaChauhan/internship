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
        int a;
        string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        string select;
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(connectionString);
            con.Open();
            MySqlCommand com = new MySqlCommand("select traineename from train", con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataTextField = ds.Tables[0].Columns["traineename"].ToString();
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();
        }
        protected void Check(object sender, EventArgs e)
        {
            select = DropDownList1.SelectedValue.Trim();
            using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
            {
                sqlCon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("select EID,traineesno from " + select, sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
        }

        protected void Submit(object sender, EventArgs e)
        {
            using (MySqlConnection sqlCon = new MySqlConnection(connectionString))
            {
                sqlCon.Open();
                MySqlCommand com = new MySqlCommand("UPDATE " + select + " SET `attendance` = "+ a +"WHERE EID ;", sqlCon);
            }
        }

        protected void present_CheckedChanged(object sender, EventArgs e)
        {
            a = 1;
        }

        protected void absent_CheckedChanged(object sender, EventArgs e)
        {
            a = 1;
        }
    }
}