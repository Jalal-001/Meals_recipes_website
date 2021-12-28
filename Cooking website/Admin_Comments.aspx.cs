using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Comments : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            //Təstiqlənən Şərhlər
            SqlCommand cmd = new SqlCommand("Select *From Table_Comment where Comment_Confirmation=1", cnt.connect());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnt.connect().Close();
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Təstiqlənməyən Şərhlər
            SqlCommand cmd1 = new SqlCommand("Select *From Table_Comment where Comment_Confirmation=0", cnt.connect());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
            cnt.connect().Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void Button5_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}