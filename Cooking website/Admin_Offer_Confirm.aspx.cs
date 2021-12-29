using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Offer_Update : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Mətin qutularına Təkliflərin yazılması Qeyd:Kateqoriyaların yazdırılmasında problem var.
            ID = Request.QueryString["Recipe_Id"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select *From Table_Offer where Recipe_Id=@p1", cnt.connect());
                cmd.Parameters.AddWithValue("@p1", ID);
                SqlDataReader drr = cmd.ExecuteReader();
                while (drr.Read())
                {
                    TextBox1.Text = drr[1].ToString();
                    TextBox2.Text = drr[2].ToString();
                    TextBox3.Text = drr[3].ToString();
                    TextBox4.Text = drr[5].ToString();
                    TextBox5.Text = drr[6].ToString();
                }
                cnt.connect().Close();
                //Kateqoriyaların DropDownList1-ə köçürülməsi.
                SqlCommand command9 = new SqlCommand("Select *From Table_Category", cnt.connect());
                SqlDataReader dreader2 = command9.ExecuteReader();
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_Id";
                DropDownList1.DataSource = dreader2;
                DropDownList1.DataBind();
            }       
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Click olunan zaman Təklifin statusu yenilənərək true olur
            SqlCommand cmd2 = new SqlCommand("Update Table_Offer set Recipe_Status=1 where Recipe_Id=@p1", cnt.connect());
            cmd2.Parameters.AddWithValue("@p1", ID);
            cmd2.ExecuteNonQuery();
            cnt.connect().Close();
            
            try
            {
                //Statusu true olan təklif Yeməklər cədvəlinə göndərilir.
                FileUpload1.SaveAs(Server.MapPath("/İmages/" + FileUpload1.FileName));//Şəklin database-ə əlavə edilməsi
                SqlCommand cmd_insert = new SqlCommand("Insert into Table_Meals(Meal_Name,Meal_Content,Meal_Recipe,Meal_Image,Category_Id)values(@p1,@p2,@p3,@p4,@p5)", cnt.connect());
                cmd_insert.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd_insert.Parameters.AddWithValue("@p2", TextBox2.Text);
                cmd_insert.Parameters.AddWithValue("@p3", TextBox3.Text);
                cmd_insert.Parameters.AddWithValue("@p4", "~/İmages/" + FileUpload1.FileName);
                cmd_insert.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
                cmd_insert.ExecuteNonQuery();
                cnt.connect();
                Response.Write("Məlumatlar uğurla əlavə edildi");

                
            }
            catch (Exception)
            {

                Response.Write("Xanaların dolu olduğundan əmin olun");
            }
            //Database-də uyğun yemək sayının artırılması.
            SqlCommand commandplus = new SqlCommand("Update Table_Category set Category_Numeral=Category_Numeral+1 where Category_Id=@p1", cnt.connect());
            commandplus.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            commandplus.ExecuteNonQuery();
            cnt.connect().Close();
        }

    }
}
