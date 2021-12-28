using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Cooking_website
{
    public partial class TeklifEt : System.Web.UI.Page
    {
        Sqlconnect cnt = new Sqlconnect();
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/İmages/" + FileUpload1.FileName));
            SqlCommand command3 = new SqlCommand("insert into Table_Offer(Recipe_Name,Recipe_Content,Recipe_Rules,Recipe_Image,Recipe_Owner,Recipe_Owner_Mail)values(@v1,@v2,@v3,@v4,@v5,@v6)", cnt.connect());
            command3.Parameters.AddWithValue("@v1", TxtYemekadi.Text);
            command3.Parameters.AddWithValue("@v2", TxtTerkibi.Text);
            command3.Parameters.AddWithValue("@v3", TxtQaydalar.Text);
            command3.Parameters.AddWithValue("@v4", "~/İmages/"+FileUpload1.FileName);
            command3.Parameters.AddWithValue("@v5", TxtTeklifeden.Text);
            command3.Parameters.AddWithValue("@v6", TxtMail.Text);
            command3.ExecuteNonQuery();
            cnt.connect().Close();
            Response.Write("Qeydiniz uğurla tamamlandı");
        }
    }
}