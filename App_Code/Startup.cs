using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WarframeRelicHosting.Startup))]
namespace WarframeRelicHosting
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
