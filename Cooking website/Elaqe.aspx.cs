using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Elaqe : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd9 = new SqlCommand("insert into Table_Connect(Connect_Name_Surname,Connect_Title,Connect_Mail,Connect_content)values(@p1,@p2,@p3,@p4)", cnt.connect());
            cmd9.Parameters.AddWithValue("@p1", TextBox2.Text);
            cmd9.Parameters.AddWithValue("@p2", TextBox3.Text);
            cmd9.Parameters.AddWithValue("@p3", TextBox4.Text);
            cmd9.Parameters.AddWithValue("@p4", TextBox5.Text);
            cmd9.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Müraciətiniz qeydə alındı");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
    }
}