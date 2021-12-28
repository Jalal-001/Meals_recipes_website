using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        Sqlconnect connect1 = new Sqlconnect();//class-a görə obyekt yaratmaq
        //SqlConnection cnt = new SqlConnection(@"Data Source=DESKTOP-0ETLVJF;Initial Catalog=Cooking_recipe;Integrated Security=True"); 
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd1 = new SqlCommand("select * From Table_Category", connect1.connect());
            SqlDataReader read1 = cmd1.ExecuteReader();
            DataList1.DataSource = read1;
            DataList1.DataBind();

        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}