using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Bootstrap_Tutorial.Startup))]
namespace Bootstrap_Tutorial
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
