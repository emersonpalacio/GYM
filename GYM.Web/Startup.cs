using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GYM.Web.Startup))]
namespace GYM.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
