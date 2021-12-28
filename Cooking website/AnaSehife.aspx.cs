using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class AnaSehife : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command4 = new SqlCommand("Select *From Table_Meals", cnt.connect());
            SqlDataReader dr1 = command4.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
        }
    }
}