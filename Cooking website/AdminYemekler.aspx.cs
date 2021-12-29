using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class AdminYemekler : System.Web.UI.Page
    {
        string id = "";
        string Emeliyyat = "";
        Sqlconnect cnt = new Sqlconnect(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            //Yeməkləri görüntüləmək
            SqlCommand command4 = new SqlCommand("Select *From Table_Meals", cnt.connect());
            SqlDataReader drr4 = command4.ExecuteReader();
            DataList1.DataSource = drr4;
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel3.Visible = false;

            //Kateqoriyaları DropDownList1-ə əlavə etmək

            if (Page.IsPostBack == false)//Kateqoriyanın uyğun id dəyərə görə seçilə bilməsi üçün istifadə olundu.(təkrarlanmaması üçün)
            {
                id = Request.QueryString["Meal_Id"];
                Emeliyyat = Request.QueryString["Emeliyyat"];
                SqlCommand command5 = new SqlCommand("Select *From Table_Category", cnt.connect());
                SqlDataReader drr5 = command5.ExecuteReader();
                DropDownList1.DataTextField = "Category_Name";//"Category_Name"-də olan dəyərləri hansı ki aşağıdakı İD-yə bərəbər olanı
                DropDownList1.DataValueField = "Category_Id";//İd-yə uyğun dəyərləri çəkmək.
                DropDownList1.DataSource = drr5;
                DropDownList1.DataBind();// DropDownList1 DataList-i əvəz edir.
            }
            //Yemək Silmək
            if (Emeliyyat == "Delete")
            {
                SqlCommand command_delete = new SqlCommand("Delete From Table_Meals where Meal_Id=@p1", cnt.connect());
                command_delete.Parameters.AddWithValue("@p1", id);
                command_delete.ExecuteNonQuery();
                cnt.connect().Close();

                //Database-də uyğun yemək sayının azaldılması.
                SqlCommand command_minus = new SqlCommand("Update Table_Category set Category_Numeral=Category_Numeral-1 where Category_Id=@k1", cnt.connect());
                command_minus.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
                command_minus.ExecuteNonQuery();
                cnt.connect().Close();
                Response.Write("Silmə əməliyyatı uğurla başa çatdı");
            }   
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //Yemək əlavə etmək
            SqlCommand command6 = new SqlCommand("Insert into Table_Meals(Meal_Name,Meal_Content,Meal_recipe,Category_Id)values(@p1,@p2,@p3,@p4)", cnt.connect());
            command6.Parameters.AddWithValue("@p1", TextBox2.Text);
            command6.Parameters.AddWithValue("@p2", TextBox3.Text);
            command6.Parameters.AddWithValue("@p3", TextBox5.Text);
            command6.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command6.ExecuteNonQuery();
            cnt.connect().Close();
            //Response.Write("Məlumatlar uğurla əlavə edildi");

            //Database-də uyğun yemək sayının artırılması.
            SqlCommand commandplus = new SqlCommand("Update Table_Category set Category_Numeral=Category_Numeral+1 where Category_Id=@p1", cnt.connect());
            commandplus.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            commandplus.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Məlumatlar uğurla əlavə edildi");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}