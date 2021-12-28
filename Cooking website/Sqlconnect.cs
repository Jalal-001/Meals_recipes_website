using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Cooking_website
{
    public class Sqlconnect//Metod yaradılırsa class-ın içində yaradılmalıdır.
    {
        public SqlConnection connect()
        {
            SqlConnection cnt = new SqlConnection(@"Data Source=DESKTOP-0ETLVJF;Initial Catalog=Cooking_recipe;Integrated Security=True");
            cnt.Open();
            return cnt;
        }

    }
}