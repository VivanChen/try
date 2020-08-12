using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public static class MediaUtility
{
    public static List<Medium> GetAllAbout()
    {
        Ayos db = new Ayos();
        db.Configuration.LazyLoadingEnabled = false;
        return db.Media.ToList();

    }

    //public static List<string> ProjectAllImage(int id)
    //{

    //    string[] fileNameArray = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));

    //    Ayos db = new Ayos();
    //    var query = from prod in db.dbo_AspNetProjectsAll
    //                where prod.Id == id
    //                select prod.imageName2;
    //    string name = query.SingleOrDefault();


    //    var query2 = from f in fileNameArray
    //                 where Path.GetFileName(f).StartsWith(name)
    //                 select f;

    //    return query2.ToList();
    //    //}

    }