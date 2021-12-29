using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Yemekler_Yenile : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Meal_Id"];
            if (Page.IsPostBack == false)
            {
                // mətin qutularına məlumatları yazdırmaq/Sonradan güncəlləmək üçün.
                SqlCommand command7 = new SqlCommand("Select *From Table_Meals where Meal_Id=@p1", cnt.connect());
                command7.Parameters.AddWithValue("@p1", id);
                SqlDataReader dreader = command7.ExecuteReader();
                while (dreader.Read())
                {
                    TextBox1.Text = dreader[1].ToString();
                    TextBox2.Text = dreader[2].ToString();
                    TextBox3.Text = dreader[3].ToString();
                    DropDownList1.SelectedValue = dreader[7].ToString();
                }
            }
            cnt.connect().Close();
            //DropDownList1-ə kateqoriyaları əlavə etmək
            if (Page.IsPostBack == false)
            {
                SqlCommand command9 = new SqlCommand("Select *From Table_Category", cnt.connect());
                SqlDataReader dreader2 = command9.ExecuteReader();
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_Id";
                DropDownList1.DataSource = dreader2;
                DropDownList1.DataBind();
            }
            cnt.connect().Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Yeməklərin update olunması
            FileUpload1.SaveAs(Server.MapPath("/İmages/" + FileUpload1.FileName));  //
            SqlCommand command8 = new SqlCommand("Update Table_Meals set Meal_Name=@p1,Meal_Content=@p2,Meal_recipe=@p3,Category_Id=@p4,Meal_Image=@p5 where Meal_Id=@p6", cnt.connect());
            command8.Parameters.AddWithValue("@p1", TextBox1.Text);
            command8.Parameters.AddWithValue("@p2", TextBox2.Text);
            command8.Parameters.AddWithValue("@p3", TextBox3.Text);
            command8.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command8.Parameters.AddWithValue("@p5", "~/İmages/"+FileUpload1.FileName);
            command8.Parameters.AddWithValue("@p6", id);
            command8.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Məlumatlar uğurla yeniləndi");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Bütün yeməklərin durumunu False etdik.
            SqlCommand command_uptade = new SqlCommand("Update Table_Meals set Meal_Confirmation=0", cnt.connect());
            command_uptade.ExecuteNonQuery();
            cnt.connect().Close();

            //"Admin_Meals"-dən seçilmiş yeməyin "id" dəyərinə görə durumu "true" etdik və günün yeməyinə çevrildi.
            //"Select *From Table_Meals where Meal_Confirmation=1"---Günün yeməyi səhifəsindəki komanda
            SqlCommand command_update1 = new SqlCommand("Update Table_Meals set Meal_Confirmation=1 where Meal_Id=@p1", cnt.connect());
            command_update1.Parameters.AddWithValue("@p1", id);
            command_update1.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Təyin edildi!");

        }
    }
}