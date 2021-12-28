using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Mess_Show : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string Connect_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Connect_ID = Request.QueryString["Connect_Id"];
            SqlCommand cmd1 = new SqlCommand("Select *From Table_Connect where Connect_Id=@p1", cnt.connect());
            cmd1.Parameters.AddWithValue("@p1", Connect_ID);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                TextBox1.Text = dr1[1].ToString();
                TextBox2.Text = dr1[2].ToString();
                TextBox4.Text = dr1[3].ToString();
                TextBox3.Text = dr1[4].ToString();
            }
            cnt.connect().Close();
        }
    }
}