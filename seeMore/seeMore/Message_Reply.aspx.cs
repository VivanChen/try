using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message_Reply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//假如第一次載入
        {
            string id = Request.QueryString["id"];//取得網址上的內容並存成字串

            string config = System.Web.Configuration.WebConfigurationManager
                               .ConnectionStrings["AyoConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(config);
            SqlCommand Command = new SqlCommand($"SELECT id, header, name, main, initDate FROM message_board where(id =@id)", connection);

            Command.Parameters.Add("@id", SqlDbType.Int);
            Command.Parameters["@id"].Value = Convert.ToInt32(Request.QueryString["id"]);//讓網址的id變成參數的值

            connection.Open();

            SqlDataReader reader = Command.ExecuteReader();//使用DataReader

            if (reader.Read())//每讀入一行(這邊只會讀進一行因為SQL下的條件只會取得一筆資料)
            {
                Reply_Header.Text = "RE:" + reader["header"].ToString();
                //將取得留言資料的標題放在標題的Text,前面加上字串"RE"

            }

            connection.Close();
        }

    }

    protected void pass_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Reply_Main.Text) && string.IsNullOrEmpty(Reply_Name.Text))
        {
            Message.Text = "請填名字跟內容";
        }

        else if (string.IsNullOrEmpty(Reply_Name.Text))
        {
            Message.Text = "請填名字";
        }
        else if (string.IsNullOrEmpty(Reply_Main.Text))
        {
            Message.Text = "請填內容";
        }

        else
        {
            string config = System.Web.Configuration.WebConfigurationManager
                .ConnectionStrings["AyoConnectionString"].ConnectionString; //取得config的.ConnectionStrings資料

            SqlConnection Connection = new SqlConnection(config); //與資料庫做連接的通道

            SqlCommand command = new SqlCommand($"INSERT INTO reply(name,main,messageID) VALUES(@name, @main,@id)", Connection);//下達要執行的SQL指令,將加入存進資料表內
                                                                                                                                //因為標題本來預設就會顯示文字所以不用新增進回應資料表內

            //參數化的資料型態與值
            command.Parameters.Add("@name", SqlDbType.NVarChar);
            command.Parameters["@name"].Value = Reply_Name.Text;
            command.Parameters.Add("@main", SqlDbType.NVarChar);
            command.Parameters["@main"].Value = Reply_Main.Text;
            command.Parameters.Add("@id", SqlDbType.Int);
            command.Parameters["@id"].Value = Convert.ToInt32(Request.QueryString["id"]);//將取得的值轉成int



            Connection.Open(); //開啟通道

            command.ExecuteNonQuery(); //執行SQL並回傳影響的項目

            Connection.Close(); //關閉通道

            Response.Redirect("Message_Main.aspx?id=" + Request.QueryString["id"]);//跳轉至回應的留言內容區(用id來抓取)
        }
       
    }
}