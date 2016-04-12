using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace BootstrapLearningExperience
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}