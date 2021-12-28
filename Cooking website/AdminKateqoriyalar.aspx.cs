using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class AdminKateqoriyalar : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string id ="";
        string Emeliyyat ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Category_Id"];
                Emeliyyat = Request.QueryString["Emeliyyat"];
            }
            //Kateqoriya Silme
            if (Emeliyyat == "sil")
            {
                SqlCommand delete = new SqlCommand("Delete Table_Category where Category_Id=@p1",cnt.connect());
                delete.Parameters.AddWithValue("@p1", id);
                delete.ExecuteNonQuery();
                cnt.connect().Close();          
            }
            SqlCommand command1 = new SqlCommand("Select *From Table_Category", cnt.connect());
            SqlDataReader reader = command1.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            cnt.connect().Close();
            Panel2.Visible = false;
            Panel4.Visible = false;    
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand command2 = new SqlCommand("Insert into Table_Category(Category_Name)values(@p1)", cnt.connect());
            command2.Parameters.AddWithValue("@p1", TextBox1.Text);
            command2.ExecuteNonQuery();
            Response.Write("Kateqoriya əlavə edildi");
            TextBox1.Text = "";           
        }
    }
}
