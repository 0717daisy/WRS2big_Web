using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;

namespace WRS2big_Web.Admin
{
    public partial class WaterProduct : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

        };
        IFirebaseClient twoBigDB;

        protected void Page_Load(object sender, EventArgs e)
        {
            //connection to database 
            twoBigDB = new FireSharp.FirebaseClient(config);


            //RETRIEVE DATA FROM DATABASE = twoBigDB
            var idnum = 6275; /*by calling a certain id only*/

            var result = twoBigDB.Get("WATERPRODUCT/" + idnum);
            Model.WaterProduct obj = result.ResultAs<Model.WaterProduct>();

            water_idno.Text = obj.water_id.ToString();
            desc.Text = obj.Description;
            type.Text = obj.waterType;
            dateAdded.Text = obj.DateAdded.ToString();

            //try
            //{ 
            //FirebaseResponse response = twoBigDB.Get(@"WATERPRODUCT");
            //    ////Dictionary<string, Model.WaterProduct> obj = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterProduct>>(response.Body.ToString());
            //    Model.WaterProduct obj = response.ResultAs<Model.WaterProduct>();

            //    //Model.WaterProduct obj = JsonConvert.DeserializeObject<Model.WaterProduct>(response.Body);

            //    water_idno.Text = obj.water_id.ToString();
            //    desc.Text = obj.Description;
            //    type.Text = obj.waterType;
            //    dateAdded.Text = obj.DateAdded.ToString();

            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<pre>" + ex.ToString() + "</pre>");

            //}

        }
            public void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                // INSERT DATA TO TABLE = WATERPRODUCT
                Random rnd = new Random();
                int idnum = rnd.Next(1, 10000);

                var data = new Model.WaterProduct
                {
                    water_id = idnum,
                    waterType = drdwaterType.Text,
                    Description = drdwaterDescription.Text,
                    DateAdded = DateTime.UtcNow

                };

                SetResponse response;
                //USER = tablename, Idno = key(PK ? )
                response = twoBigDB.Set("WATERPRODUCT/" + data.water_id, data);
                Model.WaterProduct result = response.ResultAs<Model.WaterProduct>();
                Response.Write("<script>alert ('Water Product successfully Added'); location.reload(); window.location.href = '/Admin/Gallons.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('Data already exist'); window.location.href = '/Admin/Gallons.aspx';");
            }
        }
        public void btnEdit_Click(object sender, EventArgs e)
        {

        }

    }
}