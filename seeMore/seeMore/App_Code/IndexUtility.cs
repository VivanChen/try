using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public static class IndexUtility
{
    public static List<Index> GetAllIndex()
    {
        Ayos db = new Ayos();

        return db.Indices.ToList();

    }
    public static List<Index> GetAllIndeximage()
    {
        Ayos db = new Ayos();
        var query = from p in db.Indices
                    where p.IndexId == 1
                    select p;


        return query.ToList();

    }
    public static Index GetAllIndexbyId(int id)
    {
        Ayos db = new Ayos();

        var query = from prod in db.Indices
                    where prod.IndexId == id
                    select prod;

        return query.SingleOrDefault();

    }

    //public static List<string> ProjectAllImage(int id)
    //{

    //    string[] fileNameArray = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));

    //    Ayos db = new Ayos();
    //    var query = from prod in db.Index
    //                where prod.ProjectId == id
    //                select prod.ProjectName3;
    //    string name = query.SingleOrDefault();


    //    var query2 = from f in fileNameArray
    //                 where Path.GetFileName(f).StartsWith(name)
    //                 select f;

    //    return query2.ToList();
    //}

}