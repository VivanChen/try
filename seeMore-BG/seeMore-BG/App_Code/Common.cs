using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Common
{
	public static string DBConnectionString
    {
        get
        {
            return System.Web.Configuration.
                WebConfigurationManager.ConnectionStrings["AyoConnectionString"].ConnectionString;
        }
    }
}