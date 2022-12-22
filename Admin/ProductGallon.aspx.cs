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
            //connection to database 
            twoBigDB = new FireSharp.FirebaseClient(config);

            //Retrieve Data
            FirebaseResponse response = twoBigDB.Get("WATER_GALLONS");
            Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            var json = response.Body;
            Dictionary<string, Model.WaterGallon> list = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterGallon>>(json);

            foreach (KeyValuePair<string, Model.WaterGallon> item in list)
            {
                //LstBoxProductGallon.Items.Add(item.Value.gallon_id.ToString());
                LstBoxProductGallon.Items.Add(item.Value.gallon_id.ToString()
                 + " " + item.Value.gallonType.ToString()
                 + " " + item.Value.Quantity.ToString()
                 + " " + item.Value.DeliveryPrice.ToString()
                 + " " + item.Value.PickUp_Price.ToString()
                // + " " + item.Value.Image.ToString()
                 + " " + item.Value.DateAdded.ToString());
            }
           // lbl_result.Text = "Choose employee id in a listbox you want to view and click the button view details to view records' details....";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
                String searchStr;
                searchStr = LstBoxProductGallon.SelectedValue;
                FirebaseResponse response;
                response = twoBigDB.Get(@"WATER_GALLONS/" + searchStr);
                Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();

                gal_idno.Text = obj.gallon_id.ToString();
                gal_Type.Text = obj.gallonType.ToString();
                qty.Text = obj.Quantity.ToString();
                deliveryPrice.Text = obj.DeliveryPrice.ToString();
                pickUpPrice.Text = obj.PickUp_Price.ToString();
                //image.Text = obj.Image.ToString();
                d8Added.Text = obj.DateAdded.ToString();

        }
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

                lblResult.Text = "New gallon added successfully'!";
                //Response.Write("<script> alert ('New Gallon added successfully'); location.reload(); window.location.href = 'ProductGallon.aspx' </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
               

            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int idnum = rnd.Next(1, 10000);
            Model.WaterGallon data = new Model.WaterGallon()
            {
                gallon_id = idnum,              
                gallonType = gal_Type.Text,
                Quantity = qty.Text,
                DeliveryPrice = deliveryPrice.Text,
                PickUp_Price = pickUpPrice.Text,
                //Image = FileUpload.Text,
                DateAdded = DateTime.UtcNow
            };
            twoBigDB.Update("WATER_GALLONS/" + data.gallon_id, data);
            //lbResult.Text = "Record successfully updated!";
            var result = twoBigDB.Get("WATER_GALLONS/" + gal_idno.ToString());
            Model.WaterGallon obj = result.ResultAs<Model.WaterGallon>();
            DrdGallonType.Text = obj.gallonType;
            quantity.Text = obj.Quantity;
            DelPrice.Text = obj.DeliveryPrice;
            PickUp_Price.Text = obj.PickUp_Price;
            //image.Text = obj.Image.ToString();
            //d8Added.Text = obj.DateAdded.ToString();
            lblResult.Text = "Record Updated Successfully!";


        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String deleteStr;
            deleteStr = LstBoxProductGallon.SelectedValue;
            FirebaseResponse response = twoBigDB.Delete("WATER_GALLONS/" + deleteStr);

            //lbl_result.Text = "Records Successfully deleted!";
            Response.Write("<script>alert ('Records successfully deleted!');</script>");
        }
    }
}