using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;

namespace WRS2big_Web.LandingPage
{
    public partial class SubscriptionSuccess : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

        };
        IFirebaseClient twoBigDB;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void btnContinue_Click(object sender, EventArgs e)
        {
            //DateTime now = DateTime.Now;
            //DateTime OneMonth = now.AddMonths(6);
            //var Fname = Session["Fname"].ToString();
            //var Lname = Session["Lname"].ToString();
            //DateTime startDate = now;
            //string type = "Basic";

            try
            {
                var data = new Model.Subscription
                {
                    Lname = Session["Lname"].ToString(),
                    Fname = Session["Fname"].ToString(),
                    SubsDate = DateTime.UtcNow,
                    SubType = "Basic",
                    SubEnd = DateTime.UtcNow.AddMonths(6),

                };
                SetResponse response;
                // GALLONS = tablename, emp_id = key ( PK? )
                response = twoBigDB.Set("SUBSCRIPTION" + data.Lname, data);
                Model.Subscription result = response.ResultAs<Model.Subscription>();

                Response.Write("<script>alert ('" + data.Lname + "  successfully SUBSCRIBED to BASIC PLAN!'); location.reload(); window.location.href = '/Admin/AdminIndex.aspx'; </script>");
                //Response.Write("<script> alert ('New Gallon added successfully'); location.reload(); window.location.href = 'ProductGallon.aspx' </script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert ('Under Maintenance')</script><pre>" + ex.ToString() + "</pre>");
            }
        }
    }
}