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
            if (Session["idno"] == null)
            {
                // User not found
                Response.Write("<script>alert('User not found');</script>");
                //Response.Redirect("/LandingPage/Account.aspx");
            }
            else
            {
                //string SubPlan = (string)Session["SubType"];
                //LblSubPlan.Text = SubPlan;

                //string SubDate = (string)Session["SubsDate"];
                //LblDateStarted.Text = SubDate;

                //string SubsEnd = (string)Session["SubEnd"];
                //LblSubEnd.Text = SubsEnd;
            }

            //connection to database 
            twoBigDB = new FireSharp.FirebaseClient(config);

            Lbl_Idno.Text = (string)Session["idno"];
            txtfname.Text = (string)Session["fname"];
            txtmname.Text = (string)Session["mname"];
            txtlname.Text = (string)Session["lname"];
            txtcontact.Text = (string)Session["contactNumber"];
            txtemail.Text = (string)Session["email"];
            txtaddress.Text = (string)Session["address"];
            txtdob.Text = (string)Session["dob"];
            lblStationName.Text = (string)Session["WRSname"];
            Lbl_user.Text = (string)Session["fullName"];

            //LblSubPlan.Text = (string)Session["SubType"];
            //LblDateStarted.Text = (string)Session["SubsDate"];
            //LblSubEnd.Text = (string)Session["SubEnd"];

            FirebaseResponse response;
            response = twoBigDB.Get("ADMIN/");
            Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();

            LblSubPlan.Text = obj.SubType.ToString();
            LblDateStarted.Text = obj.SubsDate.ToString();
            LblSubEnd.Text = obj.SubEnd.ToString();


        }

        protected void btnSubscription_Click(object sender, EventArgs e)
        {
           


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
                Idno = int.Parse(Lbl_Idno.Text),
                Fname = txtfname.Text,
                Mname = txtmname.Text,
                Lname = txtlname.Text,
                Bdate = txtdob.Text,
                Phone = txtcontact.Text,
                Email = txtemail.Text,
                Address = txtaddress.Text,
                WRS_Name = lblStationName.Text

            };
            twoBigDB.Update("ADMIN/" + Lbl_Idno.Text, data);//Update Product Data
            //lbResult.Text = "Record successfully updated!";
            var result = twoBigDB.Get("ADMIN/" + Lbl_Idno.Text);//Retrieve Updated Data From ADMIN TBL
            Model.AdminAccount obj = result.ResultAs<Model.AdminAccount>();//Database Result

            Lbl_Idno.Text = obj.Idno.ToString();
            txtfname.Text = obj.Fname.ToString();
            txtmname.Text = obj.Mname.ToString();
            txtlname.Text = obj.Lname.ToString();
            txtcontact.Text = obj.Phone.ToString();
            txtemail.Text = obj.Email.ToString();
            txtaddress.Text = obj.Address.ToString();
            txtdob.Text = obj.Bdate.ToString();
            lblStationName.Text = obj.WRS_Name.ToString();


        }
        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Session.Abandon();
        //    Session.RemoveAll();
        //    Session["idno"] = null;
        //    Session["password"] = null;
        //    Session.Clear();
        //    Response.Redirect("/LandingPage/Index.aspx");

        //}
    }
}
