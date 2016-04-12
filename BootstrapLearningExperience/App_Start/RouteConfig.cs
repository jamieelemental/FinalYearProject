using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace BootstrapLearningExperience
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.EnableFriendlyUrls();
        }
    }
}
