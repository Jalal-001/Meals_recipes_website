using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Cooking_website
{
    public partial class Admin_Offer : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            //Təstiqlənməyən təkliflərin qeydi
            SqlCommand cmd = new SqlCommand("Select *From Table_Offer where Recipe_Status=0", cnt.connect());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnt.connect().Close();
            Panel1.Visible = false;

            //Təstiq olunmuş təkliflərin qeydi
            SqlCommand cmd1 = new SqlCommand("Select *From Table_Offer where Recipe_Status=1", cnt.connect());
            SqlDataReader dr1= cmd1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
            cnt.connect().Close();            
            Panel3.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}