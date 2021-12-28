using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class GununYemeyi : System.Web.UI.Page
    {
        Sqlconnect connect2 = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command2 = new SqlCommand("Select *From Table_Meals where Meal_Confirmation=1", connect2.connect());
            SqlDataReader read2 = command2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();
        }
        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}