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

namespace WRS2big_Web.Admin
{
    public partial class ProductGallon : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

        };
        IFirebaseClient twoBigDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Connection to database
            twoBigDB = new FireSharp.FirebaseClient(config);
        }
        //protected void btnUpload_Click(object sender, EventArgs e)
        //{
        //    uploadImg();
        //}
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Random rnd = new Random();
                int idnum = rnd.Next(1, 10000);
                //insert data
                var data = new Model.WaterGallon
                {
                    gallon_id = idnum,
                    gallonType = drdgalType.Text,
                    Quantity = txtQty.Text,
                    DeliveryPrice = txtDeliveryPrice.Text,
                    PickUp_Price = txtPickUp_Price.Text,
                    DateAdded = DateTime.UtcNow
                };

                SetResponse response;
                // GALLONS = tablename, emp_id = key ( PK? )
                response = twoBigDB.Set("WATER_GALLONS/" + data.gallon_id, data);
                Model.WaterGallon result = response.ResultAs<Model.WaterGallon>();
                Response.Write("<script> alert ('Data successfully added'); location.reload(); window.location.href = 'ProductGallon.aspx' </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
               

            }
        }
    }
}