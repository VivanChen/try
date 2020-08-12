using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public static class mediaUtility
{

    public static List<Medium> GetAllMedium()
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
      
        return db.Media.ToList();

    }

   

    public static Medium GetAllMediumById1(int id)
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Media
                    where prod.MediaId == id
                    select prod;

        return query.SingleOrDefault();

    }

    public static List<Medium> GetAllMediumtById2(int id)
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Media
                    where prod.MediaId == id
                    select prod;

        return query.ToList();

    }

    //public static Medium MediumLogin(string email,string password)
    //{
    //    AyoEntities db = new AyoEntities();
    //    //db.Configuration.LazyLoadingEnabled = false;
    //    var query = from prod in db.Media
    //                where prod.Email == email && prod.Password==password
    //                select prod;

    //    return query.SingleOrDefault();

    //}


    public static List<Medium> GetAllMediumByIds(List<int> idList)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Media
                    where idList.Contains(prod.MediaId)
                    select prod;

        return query.ToList();
    }

    public static void InsertMedium(Medium p)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        db.Media.Add(p);



        db.SaveChanges();
    }

    public static void UpdateMedium(Medium p)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        db.Entry(p).State = System.Data.Entity.EntityState.Modified;

        db.SaveChanges();
    }

    public static void DeleteMedium(int id)
    {

        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Media
                    where prod.MediaId == id
                    select prod;

        Medium p = query.SingleOrDefault();

        db.Media.Remove(p);

        db.SaveChanges();



    }

    //public static List<string> ProjectAllImage(int id)
    //{
        
    //    string[] filename = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));
    //    List<string> fileList = new List<string>();
    //    AyoEntities db = new AyoEntities();
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

    //    AyoEntities db = new AyoEntities();
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