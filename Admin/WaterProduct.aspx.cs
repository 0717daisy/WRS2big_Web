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
            //RecordsRetrieval();
        }

        //private void RecordsRetrieval()
        //{
        //    FirebaseResponse response;
        //    response = twoBigDB.Get("WATERPRODUCT");
        //    Model.WaterProduct obj = response.ResultAs<Model.WaterProduct>();
        //    var json = response.Body;
        //    Dictionary<string, Model.WaterProduct> list = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterProduct>>(json);

        //    foreach (KeyValuePair<string, Model.WaterProduct> entry in list)
        //    {
        //        //ListBox1.Items.Add(entry.Value.water_id.ToString());
        //        //ListBox1.Items.Add(entry.Value.water_id.ToString() + entry.Value.waterType.ToString());
        //        ListBox1.Items.Add(entry.Value.water_id.ToString());
        //    }
        //}

        

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            String slected;
            slected = ListBox1.SelectedValue;
            FirebaseResponse response;
            response = twoBigDB.Get("WATERPRODUCT/" + slected);
            Model.WaterProduct obj = response.ResultAs<Model.WaterProduct>();
            LabelID.Text = obj.water_id.ToString();
            waterName.Text = obj.waterType.ToString();
            ProdDes.Text = obj.Description.ToString();
            ProdDate.Text = obj.DateAdded.ToString();
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
                    waterType = drdType.Text,
                    Description = waterDes.Text,
                    DateAdded = DateTime.UtcNow

                };

                SetResponse response;
                //USER = tablename, Idno = key(PK ? )
                response = twoBigDB.Set("WATERPRODUCT/" + data.water_id, data);
                Model.WaterProduct result = response.ResultAs<Model.WaterProduct>();
                Response.Write("<script>alert ('Water Product successfully Added'); location.reload(); window.location.href = '/Admin/WaterProduct.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('Data already exist'); window.location.href = '/Admin/WaterProduct.aspx';");
            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            var data = new Model.WaterProduct();
            

            data.waterType = waterName.Text;
            data.Description = ProdDes.Text;
            data.DateAdded = DateTime.UtcNow;
            FirebaseResponse response;
            response = twoBigDB.Update("WATERPRODUCT/" + data.water_id, data);
            var result = twoBigDB.Get("WATERPRODUCT/" + data.water_id);
            Model.WaterProduct obj = response.ResultAs<Model.WaterProduct>();

            waterName.Text = obj.waterType;
            ProdDes.Text = obj.Description;
            ProdDate.Text = obj.DateAdded.ToString();


        }

        protected void ViewID_Click(object sender, EventArgs e)
        {
            FirebaseResponse response;
            response = twoBigDB.Get("WATERPRODUCT");
            Model.WaterProduct obj = response.ResultAs<Model.WaterProduct>();
            var json = response.Body;
            Dictionary<string, Model.WaterProduct> list = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterProduct>>(json);

            foreach (KeyValuePair<string, Model.WaterProduct> entry in list)
            {
                ListBox1.Items.Add(entry.Value.water_id.ToString());
                //ListBox1.Items.Add(entry.Value.water_id.ToString() + entry.Value.waterType.ToString());

            }
        }
        //protected void btnDelete_Click(object sender, EventArgs e)
        //{
        //    FirebaseResponse response;
        //    //response = twoBigDB.Delete("WATERPRODUCT/" + );

        //}
    }
}