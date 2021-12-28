using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Comments : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string MealID="";
        protected void Page_Load(object sender, EventArgs e)
        {
            MealID = Request.QueryString["Meal_Id"];
            SqlCommand cmd6 = new SqlCommand("Select Meal_Name From Table_Meals where Meal_Id=@t1", cnt.connect());// [0]-cı index Meal_Id-ə bərabərdir.
            cmd6.Parameters.AddWithValue("@t1", MealID);
            SqlDataReader dr = cmd6.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = "Yeməyin adı:"+dr[0].ToString();
            }
            cnt.connect().Close();
            //Comment section
            SqlCommand cmd7 = new SqlCommand("Select *From Table_Comment where Meal_Id=@p1", cnt.connect());
            cmd7.Parameters.AddWithValue("@p1", MealID);
            SqlDataReader dr3 = cmd7.ExecuteReader();
            DataList2.DataSource = dr3;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Şərhin əlavə olunması.
                SqlCommand cmd8 = new SqlCommand("insert into Table_Comment(Comment_Name_Surname,Comment_Mail,Comment_Content,Meal_Id)values(@p1,@p2,@p3,@p4)", cnt.connect());
                cmd8.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd8.Parameters.AddWithValue("@p2", TextBox2.Text);
                cmd8.Parameters.AddWithValue("@p3", TextBox3.Text);
                cmd8.Parameters.AddWithValue("@p4", MealID);
                cmd8.ExecuteNonQuery();
                cnt.connect().Close();
                Response.Write("Şərhiniz üçün təşəkkür edirik");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
        }
    }
}
