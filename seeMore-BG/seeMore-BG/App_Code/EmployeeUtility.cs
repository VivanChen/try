using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public static class EmployeeUtility
{

    public static List<Employee> GetAllEmployee()
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
      
        return db.Employees.ToList();

    }

   

    public static Employee GetAllEmployeeById1(int id)
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Employees
                    where prod.EmployeeId == id
                    select prod;

        return query.SingleOrDefault();

    }

    public static List<Employee> GetAllEmployeeById2(int id)
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Employees
                    where prod.EmployeeId == id
                    select prod;

        return query.ToList();

    }

    public static Employee EmployeeLogin(string email,string password)
    {
        AyoEntities db = new AyoEntities();
        //db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Employees
                    where prod.EmployeeEmail == email && prod.EmployeeName==password
                    select prod;

        return query.SingleOrDefault();

    }


    public static List<Employee> GetAllEmployeeByIds(List<int> idList)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Employees
                    where idList.Contains(prod.EmployeeId)
                    select prod;

        return query.ToList();
    }

    public static void InsertEmployee(Employee p)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        db.Employees.Add(p);



        db.SaveChanges();
    }

    public static void UpdateEmployee(Employee p)
    {
        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        db.Entry(p).State = System.Data.Entity.EntityState.Modified;

        db.SaveChanges();
    }

    public static void DeleteEmployee(int id)
    {

        AyoEntities db = new AyoEntities();
        db.Configuration.LazyLoadingEnabled = false;
        var query = from prod in db.Employees
                    where prod.EmployeeId == id
                    select prod;

        Employee p = query.SingleOrDefault();

        db.Employees.Remove(p);

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