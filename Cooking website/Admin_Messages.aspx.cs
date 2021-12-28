using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Messages : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            SqlCommand cmd1 = new SqlCommand("Select *From Table_Connect", cnt.connect());
            SqlDataReader dr = cmd1.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnt.connect().Close();
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