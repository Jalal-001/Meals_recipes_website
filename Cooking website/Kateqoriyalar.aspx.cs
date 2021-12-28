using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Kateqoriyalar : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string CategoryID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryID = Request.QueryString["Category_Id"];
            SqlCommand cmd11 = new SqlCommand("Select *From Table_Meals where Category_Id=@p1", cnt.connect());
            cmd11.Parameters.AddWithValue("@p1", CategoryID);
            SqlDataReader drr2 = cmd11.ExecuteReader();
            DataList2.DataSource = drr2;
            DataList2.DataBind();
        }
    }
}