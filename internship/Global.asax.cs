using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace internship
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            // look if any security information exists for this request
            if (HttpContext.Current.User != null)
            {
                // see if this user is authenticated, any authenticated cookie (ticket) exists for this user
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    // see if the authentication is done using FormsAuthentication
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        // Get the roles stored for this request from the ticket
                        // get the identity of the user
                        FormsIdentity identity = (FormsIdentity)HttpContext.Current.User.Identity;
                        //Get the form authentication ticket of the user
                        FormsAuthenticationTicket ticket = identity.Ticket;
                        //Get the roles stored as UserData into ticket
                        string[] roles = {"admin", "employee","trainee" };
                        //Create general prrincipal and assign it to current request

                        HttpContext.Current.User = new System.Security.Principal.GenericPrincipal(identity, roles);
                    }
                }
            }
        }
    }
}