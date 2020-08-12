using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public static class ProjectAllUtility
{

    public static List<Project> GetAllProjects()
    {
        Ayos db = new Ayos();

        return db.Projects.ToList();

    }

   

    public static Project GetAllProjectById1(int id)
    {
        Ayos db = new Ayos();

        var query = from prod in db.Projects
                    where prod.ProjectId == id
                    select prod;

        return query.SingleOrDefault();

    }

    public static List<Project> GetAllProjectById2(int id)
    {
        Ayos db = new Ayos();

        var query = from prod in db.Projects
                    where prod.ProjectId == id
                    select prod;

        return query.ToList();

    }

    public static Project GetAllProjectByIdName(int id)
    {
        Ayos db = new Ayos();

        var query = from prod in db.Projects
                    where prod.ProjectId == id
                    select prod;

        return query.SingleOrDefault();

    }


    public static List<Project> GetAllImagesByIds(List<int> idList)
    {
        Ayos db = new Ayos();

        var query = from prod in db.Projects
                    where idList.Contains(prod.ProjectId)
                    select prod;

        return query.ToList();
    }

    public static void InsertProject(Project p)
    {
        Ayos db = new Ayos();

        db.Projects.Add(p);



        db.SaveChanges();
    }

    public static void UpdateProject(Project p)
    {
        Ayos db = new Ayos();

        db.Entry(p).State = System.Data.Entity.EntityState.Modified;

        db.SaveChanges();
    }

    public static void DeleteProject(int id)
    {

        Ayos db = new Ayos();

        var query = from prod in db.Projects
                    where prod.ProjectId == id
                    select prod;

        Project p = query.SingleOrDefault();

        db.Projects.Remove(p);

        db.SaveChanges();



    }

    public static List<string> ProjectAllImage(int id)
    {
        
        string[] filename = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));
        List<string> fileList = new List<string>();
        Ayos db = new Ayos();
        var query = from p in db.Projects
                    where p.ProjectId == id
                    select p.ProjectName2;
        string name = query.SingleOrDefault();
        foreach (var item in filename)
        {
            if (Path.GetFileName(item).StartsWith(name))
            {
                fileList.Add(Path.GetFileName(item));
                
            }
        }
        return fileList;
    }



    public static List<string> ProjectAllImage2(int id)
    {

        string[] fileNameArray = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath(@"~/Upload"));

        Ayos db = new Ayos();
        var query = from prod in db.Projects
                    where prod.ProjectId == id
                    select prod.ProjectName2;
        string name = query.SingleOrDefault();


        var query2 = from f in fileNameArray
                     where Path.GetFileName(f).StartsWith(name)
                     select f;

        return query2.ToList();
    }

}