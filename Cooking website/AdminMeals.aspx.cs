using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class AdminMeals : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("Select *From Table_Meals", cnt.connect());
            SqlDataReader dr = cmd1.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnt.connect().Close();
            Panel1.Visible = false;
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