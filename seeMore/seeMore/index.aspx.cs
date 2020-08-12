using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int n1 = 1;
        int n2 = 2;
        Index i1 = IndexUtility.GetAllIndexbyId(n1);
        Index i2 = IndexUtility.GetAllIndexbyId(n2);
        Image1.ImageUrl = $"~/Frontdesk/images/realimg/公司相關/{i2.IndexPrincipalImage}";
        Literal1.Text = i1.IndexCompanyTitle01;
        Literal2.Text = i1.IndexCompanyTitle02;
        Literal3.Text = i1.IndexCompantEmail;
        Literal4.Text = i1.IndexCompantPhome;
        Literal5.Text = i1.IndexCompantAddress;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //取得config連接字串資訊

        string getconfig = System.Web.Configuration.WebConfigurationManager
        .ConnectionStrings["AyoConnectionString"].ConnectionString;

        //建立與資料庫建立起連接的通道，以getconfig內的連接字串連接所對應的資料庫

        SqlConnection Connection = new SqlConnection(getconfig);

        //要對SQL Server下達的SQL指令並且參數化

        SqlCommand command = new SqlCommand($"INSERT INTO contact( name,email, message) VALUES(@name, @email, @message)", Connection);

        //賦予參數資料型態與值
        command.Parameters.Add("@name", SqlDbType.NVarChar);//值必須是NVarChar的資料型態
        command.Parameters["@name"].Value = TextBox1.Text;//給予的值是從Message_Header的Text來的

        command.Parameters.Add("@email", SqlDbType.NVarChar);
        command.Parameters["@email"].Value = TextBox2.Text;//給予的值是從Message_Name的Text來的

        command.Parameters.Add("@message", SqlDbType.NVarChar);
        command.Parameters["@message"].Value = TextBox3.Text;//給予的值是從Message_Main的Text來的


        Connection.Open();//開啟通道
        command.ExecuteNonQuery();//執行command的SQL語法，回傳受影響的資料數目
        Connection.Close();//關閉通道
        Label1.Text = "已發送";
        //Response.Redirect("index.aspx");//確認留言完後要跳轉回首頁Message_Index.aspx
    }
}
