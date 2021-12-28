using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Comments_Update : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect(); 
        string Comment_Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Təstiqlənməyən Şərhləri yeniləmək üçün mətin qutularına yazdırmaq.
            Comment_Id = Request.QueryString["Comment_Id"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd1 = new SqlCommand("Select Comment_Name_Surname,Comment_Mail,Comment_Content,Meal_Name From Table_Comment inner join Table_Meals on Table_Meals.Meal_Id=Table_Comment.Meal_Id where Comment_Id=@p1", cnt.connect());
                //Burada digər parametrlərlə yanaşı "Meal_Name"parametrini gətirməsi üçün inner join komandası ist olundu.Beləki "Meal_Name"-dəyərini  "Table_Meals" və "Table_Comment"-dəki"Meal_Id"-yə görə gətirir.
                cmd1.Parameters.AddWithValue("@p1", Comment_Id);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    TextBox1.Text = dr1[0].ToString();
                    TextBox2.Text = dr1[1].ToString();
                    TextBox3.Text = dr1[2].ToString();
                    TextBox4.Text = dr1[3].ToString();
                }
            }
            cnt.connect().Close();  
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Təstiqlənməyən Şərhlərin yenilənərək Təstiqlənən Şərhlərə əlavə edilməsi.
            SqlCommand cmd2 = new SqlCommand("Update Table_Comment set Comment_Content=@p1,Comment_Confirmation=@p2 where Comment_Id=@p3", cnt.connect());
            cmd2.Parameters.AddWithValue("@p1", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@p2", "True");
            cmd2.Parameters.AddWithValue("@p3", Comment_Id);
            cmd2.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Şərh Uğurla yeniləndi");
        }
    }
}