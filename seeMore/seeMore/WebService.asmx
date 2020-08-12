<%@ WebService Language="C#" Class="WebService" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    [WebMethod]
    public static Index GetAllIndexById1(int id)
    {
        return IndexUtility.GetAllIndexbyId(id);
    }
        [WebMethod]
    public List<Index> GetAllIndexImage()
    {
        return IndexUtility.GetAllIndeximage();
    }

    [WebMethod]
    public List<Project> ProjectsAll()
    {
        return ProjectAllUtility.GetAllProjects();
    }
    [WebMethod]
    public List<Employee> About()
    {
        List<Employee> result = aboutUtility.GetAllAbout();
        return result;
    }
    [WebMethod]
    public List<User> UserAll()
    {
        List<User> result = UserLoginUtility.GetAllUser();
        return result;
    }

    [WebMethod]
    public List<string> ProjectAllImage(int id)
    {
        return ProjectAllUtility.ProjectAllImage(id);
    }
    [WebMethod]
    public static Project GetAllImageById1(int id)
    {
        return ProjectAllUtility.GetAllProjectById1(id);
    }
    [WebMethod]
    public List<Project> GetAllImageById2(int id)
    {
        return ProjectAllUtility.GetAllProjectById2(id);
    }


}