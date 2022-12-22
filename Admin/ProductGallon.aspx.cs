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

            FirebaseResponse response = twoBigDB.Get("WATER_GALLONS");
            Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            var json = response.Body;
            Dictionary<string, Model.WaterGallon> list = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterGallon>>(json);

            foreach (KeyValuePair<string, Model.WaterGallon> item in list)
            {
               LstBoxProductGallon.Items.Add(item.Value.gallon_id.ToString());
            }
            //lbl_result.Text = "Choose employee id in a listbox you want to view and click the button view details to view records' details....";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
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

                //Response.Write("<script>alert ('Records successfully retrieved!');</script>");
               // Response.Redirect("ProductGallon.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
                //Response.Write("<script>alert('Failed to delete'); window.location.href = 'EmployeeRecord.aspx';</script>");
            }


            //===== Execute Query and bind data to ListView.
            //lstViewProductGallon.DataSource = list;
            //lstViewProductGallon.DataBind();
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
            Model.WaterGallon data = new Model.WaterGallon()
            {
                gallonType = DrdGallonType.Text,
                Quantity = quantity.Text,
                DeliveryPrice = DelPrice.Text,
                PickUp_Price = PickUp_Price.Text,
                //Image = FileUpload.Text,
                DateAdded = DateTime.UtcNow
            };
            FirebaseResponse response = twoBigDB.Update("WATER_GALLONS/" + data.gallon_id, data);
            lbResult.Text = "Record successfully updated!";
            var result = twoBigDB.Get("WATER_GALLONS/" + data.gallon_id);
            Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            gal_Type.Text = obj.gallonType;
            qty.Text = obj.Quantity;
            deliveryPrice.Text = obj.DeliveryPrice;
            pickUpPrice.Text = obj.PickUp_Price;
            image.Text = obj.Image.ToString();
            d8Added.Text = obj.DateAdded.ToString();


        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String deleteStr;
            deleteStr = LstBoxProductGallon.SelectedValue;
            FirebaseResponse response = twoBigDB.Delete("WATER_GALLONS/" + deleteStr);

            Response.Write("<script>alert ('Records successfully deleted!');</script>");
        }
    }
}