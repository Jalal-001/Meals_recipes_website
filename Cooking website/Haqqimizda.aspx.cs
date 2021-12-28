using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Haqqimizda : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd10 = new SqlCommand("Select *From Table_About", cnt.connect());
            SqlDataReader drr = cmd10.ExecuteReader();
            DataList2.DataSource = drr;
            DataList2.DataBind();
            cnt.connect().Close();
        }
    }
}