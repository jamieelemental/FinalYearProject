using Microsoft.Owin;
using Owin;
using System;

[assembly: OwinStartupAttribute(typeof(BootstrapLearningExperience.Startup))]
namespace BootstrapLearningExperience
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
