using Microsoft.Owin;
using Owin;
using System;

[assembly: OwinStartupAttribute(typeof(BootstrapLearningExperience.Startup))]
namespace BootstrapLearningExperience
{
    //The contents of this class has not been written by me (Jamie Element). Comments serve only to explain it's use.
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
