using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_About : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("Select *From Table_About", cnt.connect());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                Panel1.Visible = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("Update Table_About set About_Content=@p1", cnt.connect());
            cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd1.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Məlumatlar uğurla yeniləndi");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}