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
using System.Threading.Tasks;
using System.Data;

namespace WRS2big_Web.SuperAdmin
{
    public partial class Customers : System.Web.UI.Page
    {
        //Initialize the FirebaseClient with the database URL and secret key.
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

            //METHODS TO DISPLAY THE IDs
            if (!IsPostBack)
            {
                DisplayID();
            }
        }
        private void DisplayID()
        {
            FirebaseResponse response;
            response = twoBigDB.Get("CUSTOMER");
            Model.Customer obj = response.ResultAs<Model.Customer>();
            var json = response.Body;
            Dictionary<string, Model.Customer> list = JsonConvert.DeserializeObject<Dictionary<string, Model.Customer>>(json);

            foreach (KeyValuePair<string, Model.Customer> entry in list)
            {
                ListBox1.Items.Add(entry.Value.CusID.ToString());
                //ListBox1.Items.Add(entry.Value. Fname.ToString());
            }
        }
        //SEARCH DATA
        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            String searchStr;
            searchStr = ListBox1.SelectedValue;
            //FirebaseResponse response;
            //response = twoBigDB.Get(@"WATER_GALLONS/" + LstBoxAdminProfile.SelectedValue);
            //Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            FirebaseResponse response = twoBigDB.Get("CUSTOMER/" + searchStr);
            Model.Customer obj = response.ResultAs<Model.Customer>();

            Lbl_fname.Text = obj.CusFirstName.ToString();
            Lbl_lname.Text = obj.CusLastName.ToString();
            Lbl_contact.Text = obj.CusContactNumber.ToString();
            Lbl_email.Text = obj.CusEmail.ToString();
            Lbl_address.Text = obj.CusAddress.ToString();
        }
        //UPDATE DATA
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //String deleteStr;
            //deleteStr = ListBoxEmployeeRecord.SelectedValue;

            //var data = new Model.EmployeeData();

            //data.emp_id = int.Parse(LblID.Text);
            //data.emp_firstname = firstname.Text;
            //data.emp_midname = midname.Text;
            //data.emp_lastname = lastname.Text;
            //data.emp_birthdate = LblDOB.Text;
            //data.emp_gender = LblGender.Text;
            //data.emp_address = address.Text;
            //data.emp_contactnum = contactnum.Text;
            //data.emp_email = email.Text;
            //data.emp_dateHired = LbldateHired.Text;
            //data.emp_emergencycontact = emergencycontact.Text;
            //data.emp_role = drdPosition.Text;

            //FirebaseResponse response;
            //response = twoBigDB.Update("EMPLOYEERECORD/" + deleteStr, data);//Update Product Data 

            //var result = twoBigDB.Get("EMPLOYEERECORD/" + deleteStr);//Retrieve Updated Data From WATERPRODUCT TBL
            //Model.EmployeeData obj = response.ResultAs<Model.EmployeeData>();//Database Result

            //LblID.Text = obj.emp_id.ToString();
            //firstname.Text = obj.emp_firstname.ToString();
            //midname.Text = obj.emp_midname.ToString();
            //lastname.Text = obj.emp_lastname.ToString();
            //LblDOB.Text = obj.emp_birthdate.ToString();
            //LblGender.Text = obj.emp_gender.ToString();
            //address.Text = obj.emp_address.ToString();
            //contactnum.Text = obj.emp_contactnum.ToString();
            //email.Text = obj.emp_email.ToString();
            //LbldateHired.Text = obj.emp_dateHired.ToString();
            //emergencycontact.Text = obj.emp_emergencycontact.ToString();
            //drdPosition.Text = obj.emp_role.ToString();


            //Response.Write("<script>alert ('Employee ID : " + deleteStr + " successfully updated!');</script>");
        }
    }
}