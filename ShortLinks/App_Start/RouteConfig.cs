using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShortLinks
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
            name: "Redirect",
            url: "{id}",
            defaults: new { controller = "ShortLinks", action = "Redirect", id = UrlParameter.Optional },
            constraints: new
            {             
                id = @"\S{6}",
                httpMethod = new HttpMethodConstraint("GET")
            }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "ShortLinks", action = "Index", id = UrlParameter.Optional }
            );

        
        }
    }
}
