using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public static class UserLoginUtility
{

    public static List<User> GetAllUser()
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        return db.Users.ToList();

    }

   

    public static User GetAllUserById1(int id)
    {
        Ayos db = new Ayos();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Users
                    where prod.UserId == id
                    select prod;

        return query.SingleOrDefault();

    }

    public static List<User> GetAllUsertById2(int id)
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Users
                    where prod.UserId == id
                    select prod;

        return query.ToList();

    }

    public static User UserLogin(string email,string password)
    {
        Ayos db = new Ayos();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Users
                    where prod.Email == email && prod.Password==password
                    select prod;

        return query.SingleOrDefault();

    }


    public static List<User> GetAllUserByIds(List<int> idList)
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Users
                    where idList.Contains(prod.UserId)
                    select prod;

        return query.ToList();
    }

    public static void InsertUser(User p)
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        db.Users.Add(p);



        db.SaveChanges();
    }

    public static void UpdateUser(User p)
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        db.Entry(p).State = System.Data.Entity.EntityState.Modified;

        db.SaveChanges();
    }

    public static void DeleteUser(int id)
    {

        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Users
                    where prod.UserId == id
                    select prod;

        User p = query.SingleOrDefault();

        db.Users.Remove(p);

        db.SaveChanges();



    }

    //public static List<string> ProjectAllImage(int id)
    //{
        
    //    string[] filename = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));
    //    List<string> fileList = new List<string>();
    //    Ayos db = new Ayos();
    //    var query = from p in db.Projects
    //                where p.ProjectId == id
    //                select p.ProjectName2;
    //    string name = query.SingleOrDefault();
    //    foreach (var item in filename)
    //    {
    //        if (Path.GetFileName(item).StartsWith(name))
    //        {
    //            fileList.Add(Path.GetFileName(item));
                
    //        }
    //    }
    //    return fileList;
    //}



    //public static List<string> ProjectAllImage2(int id)
    //{

    //    string[] fileNameArray = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));

    //    Ayos db = new Ayos();
    //    var query = from prod in db.Projects
    //                where prod.ProjectId == id
    //                select prod.ProjectName2;
    //    string name = query.SingleOrDefault();


    //    var query2 = from f in fileNameArray
    //                 where Path.GetFileName(f).StartsWith(name)
    //                 select f;

    //    return query2.ToList();
    //}

}