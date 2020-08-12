using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public static class ContactUtility
{
   

    public static void DeleteContact(int id)
    {
        SqlConnection cn = new SqlConnection(Common.DBConnectionString);

        SqlCommand cmd = new SqlCommand(
            "DELETE FROM contact where Id=@Id",
            cn);

        cmd.Parameters.AddWithValue("@Id", id);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}