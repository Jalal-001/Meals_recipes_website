using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cooking_website
{
    public partial class Admin_Kateqoriya_yenile : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["Category_Id"];//If şərtinə daxil edilməməlidir."QueryString"komandası olduğu üçün bu səhifədən "run"edilərsə xəta olacaq.
            if (Page.IsPostBack == false)//Səhifənin geri göndərilməməsi(yəni təkrarlanmaması)üçün komanda.Update-nin həyata keçməsi üçün lazımdır ki,parametrlər yenidən qayıtmasın.
            {        
                SqlCommand command3 = new SqlCommand("Select *From Table_Category where Category_Id=@p1", cnt.connect());
                command3.Parameters.AddWithValue("@p1", Id);
                SqlDataReader drr3 = command3.ExecuteReader();
                while (drr3.Read())
                {
                    TextBox1.Text = drr3[1].ToString();
                    TextBox2.Text = drr3[2].ToString();
                }
                cnt.connect().Close();
            }           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command4 = new SqlCommand("Update Table_Category set Category_Name=@p1,Category_Numeral=@p2 where Category_Id=@p3", cnt.connect());
            command4.Parameters.AddWithValue("@p1", TextBox1.Text);
            command4.Parameters.AddWithValue("@p2", TextBox2.Text);
            command4.Parameters.AddWithValue("@p3", Id);
            command4.ExecuteNonQuery();
            cnt.connect().Close();
        }
    }
}