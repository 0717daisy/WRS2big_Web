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
    public partial class AdminProfile : System.Web.UI.Page
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

            //RetrieveRecords();
            //displayRecords();

            //Retrieve Data
            FirebaseResponse response = twoBigDB.Get("ADMIN");
            Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();
            var json = response.Body;
            Dictionary<string, Model.AdminAccount> list = JsonConvert.DeserializeObject<Dictionary<string, Model.AdminAccount>>(json);

            foreach (KeyValuePair<string, Model.AdminAccount> item in list)
            {
                LstBoxAdminProfile.Items.Add(item.Value.Idno.ToString());
                //LstBoxAdminProfile.Items.Add(item.Value.Idno.ToString() 
                //+ " " + item.Value.Fname.ToString()
                //+ " " + item.Value.Mname.ToString()
                //+ " " + item.Value.Lname.ToString()
                //+ " " + item.Value.Phone.ToString()
                //+ " " + item.Value.Email.ToString()
                //+ " " + item.Value.Address.ToString());
            }
            

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String searchStr;
            searchStr = LstBoxAdminProfile.SelectedValue;
            //FirebaseResponse response;
            //response = twoBigDB.Get(@"WATER_GALLONS/" + LstBoxAdminProfile.SelectedValue);
            //Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            FirebaseResponse response = twoBigDB.Get("ADMIN/" + searchStr);
            Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();
           
            Lbl_fname.Text = obj.Fname.ToString();
            Lbl_mname.Text = obj.Mname.ToString();
            Lbl_lname.Text = obj.Lname.ToString();
            Lbl_contact.Text = obj.Phone.ToString();
            Lbl_email.Text = obj.Email.ToString();
            Lbl_address.Text = obj.Address.ToString();


        }

        //private void RetrieveRecords()
        //{
        //    try
        //    {
        //        //Retrieve Data
        //        FirebaseResponse response = twoBigDB.Get("ADMIN");
        //        Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();
        //        var json = response.Body;
        //        Dictionary<string, Model.AdminAccount> list = JsonConvert.DeserializeObject<Dictionary<string, Model.AdminAccount>>(json);

        //        foreach (KeyValuePair<string, Model.AdminAccount> item in list)
        //        {
        //            LstBoxAdminProfile.Items.Add(item.Value.Idno.ToString());
        //            LstBoxAdminProfile.Items.Add(item.Value.Fname.ToString()
        //            + " " + item.Value.Mname.ToString()
        //            + " " + item.Value.Lname.ToString()
        //            + " " + item.Value.Phone.ToString()
        //            + " " + item.Value.Email.ToString()
        //            + " " + item.Value.Address.ToString());
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<pre>" + ex.ToString() + "<pre>");
        //    }
        //}
        //protected void btnSearch_Click(object sender, EventArgs e)
        //{
           
        //    String searchStr;
        //    searchStr = LstBoxAdminProfile.SelectedValue;
        //    FirebaseResponse response;
        //    response = twoBigDB.Get("ADMIN/" + searchStr);
        //    Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();

        //    Lbl_fname.Text = obj.Fname.ToString();
        //    Lbl_mname.Text = obj.Mname.ToString();
        //    Lbl_lname.Text = obj.Lname.ToString();
        //    Lbl_contact.Text = obj.Phone.ToString();
        //    Lbl_email.Text = obj.Email.ToString();
        //    Lbl_address.Text = obj.Address.ToString();
        //}
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Model.AdminAccount data = new Model.AdminAccount()
            {
                Fname = firstname.Text,
                Mname = midname.Text,
                Lname = lastname.Text,
                Phone = contactno.Text,
                Email = email.Text,
                Address = address.Text

            };
            twoBigDB.Update("ADMIN/" + firstname.Text, data);
            //lbResult.Text = "Record successfully updated!";
            var result = twoBigDB.Get("ADMIN/" + firstname.Text.ToString());
            Model.AdminAccount obj = result.ResultAs<Model.AdminAccount>();
            Lbl_fname.Text = obj.Fname;
            Lbl_mname.Text = obj.Mname;
            Lbl_lname.Text = obj.Lname;
            Lbl_contact.Text = obj.Phone;
            Lbl_email.Text = obj.Email;
            Lbl_address.Text = obj.Address;
            //lblResult.Text = "Record Updated Successfully!";


        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String deleteStr;
            deleteStr = LstBoxAdminProfile.SelectedValue;
            FirebaseResponse response = twoBigDB.Delete("ADMIN/" + deleteStr);

            //lbl_result.Text = "Records Successfully deleted!";
            Response.Write("<script>alert ('Records successfully deleted!');</script>");
        }
    }
}
