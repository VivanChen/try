using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];

            string config = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["AyoConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(config); //與資料庫做連結的大門

            SqlCommand Command = new SqlCommand($"SELECT id, header, name, main, initDate FROM message_board where(id =@id)", connection);//SQL語法，使用參數。

            Command.Parameters.Add("@id", SqlDbType.NVarChar); //設定參數資料型態
            Command.Parameters["@id"].Value = Request["id"]; //賦予參數值

            connection.Open();

            SqlDataReader reader = Command.ExecuteReader();
            if (reader.Read())
            {
                Message_header.Text = reader["header"].ToString();
                Message_Name.Text = reader["name"].ToString();
                Message_Time.Text = reader["initDate"].ToString();
                Main.Text = reader["main"].ToString();
            }

            reader.Close();
            SqlConnection rconnection = new SqlConnection(config);

            SqlCommand Rcommand = new SqlCommand($"SELECT id, messageID, name, main, initDate FROM reply where(messageID =@id)", rconnection);

            Rcommand.Parameters.Add("@id", SqlDbType.NVarChar); //設定參數資料型態

            Rcommand.Parameters["@id"].Value = Request.QueryString["id"]; //接id的值變成參數的值
            rconnection.Open();

            SqlDataReader rereader = Rcommand.ExecuteReader();
            Repeater1.DataSource = rereader;//repeater的資料來源是從rereader來
            Repeater1.DataBind();//執行繫結
        }
    }




    protected void Reply_Click(object sender, EventArgs e)
    {
        Response.Redirect("Message_Reply.aspx?id=" + Request.QueryString["id"]);
    }
}