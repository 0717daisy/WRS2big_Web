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

namespace WRS2big_Web.Admin
{
    public partial class Employees : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

        };
        IFirebaseClient twoBigDB;

        //protected void Page_Load(object sender, EventArgs e)
        //{


        //    // Connection to database
        //    twoBigDB = new FireSharp.FirebaseClient(config);


        //    //if (twoBigDB != null)
        //    //    lblResult.Text = "Connected!";
        //    var idnum = 1585;
        //    //Use the Get() method to retrieve all data from the EMPLOYEERECORD location in the database
        //    var result = twoBigDB.Get("EMPLOYEERECORD/" + idnum);
        //    //var json = result.Body;
        //    //Model.EmployeeData obj = result.ResultAs<Model.EmployeeData>();
        //    //var result = twoBigDB.Get(@"EMPLOYEERECORD/");
        //    //Dictionary<string, Model.EmployeeData> obj = JsonConvert.DeserializeObject<Dictionary<string, Model.EmployeeData>>(json);
        //    //List<Model.EmployeeData> obj = result.ResultAs<List<Model.EmployeeData>>();
        //    Model.EmployeeData obj = result.ResultAs<Model.EmployeeData>();

        //    //foreach(KeyValuePair<string, Model.EmployeeData> entry in emprecords)
        //    //{
        //        idno.Text = obj.emp_id.ToString();
        //        fullname.Text = obj.emp_firstname + " " + obj.emp_midname + " " + obj.emp_lastname;
        //        dob.Text = obj.emp_birthdate;
        //        gender.Text = obj.emp_gender;
        //        address.Text = obj.emp_address;
        //        contact.Text = obj.emp_contactnum;
        //        emailadd.Text = obj.emp_email;
        //        datehired.Text = obj.emp_dateHired;
        //        emergencycontact.Text = obj.emp_emergencycontact;
        //        role.Text = obj.emp_role;
        ////}



        //    //FirebaseResponse res = twoBigDB.Get(@"EMPLOYEERECORD");
        //    //Dictionary<string, Model.EmployeeData> data = JsonConvert.DeserializeObject<Dictionary<string, Model.EmployeeData>>(res.Body.ToString());

        //    ////GridView1.Columns.Clear();
        //    ////GridView1.Columns.Add("");



        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //connection to database 
            twoBigDB = new FireSharp.FirebaseClient(config);

            RetrieveEmployeeRecords();


        }

        private void RetrieveEmployeeRecords()
        {
            //Retrieve Data
            FirebaseResponse response = twoBigDB.Get("WATER_GALLONS");
            Model.WaterGallon obj = response.ResultAs<Model.WaterGallon>();
            var json = response.Body;
            Dictionary<string, Model.WaterGallon> list = JsonConvert.DeserializeObject<Dictionary<string, Model.WaterGallon>>(json);

            foreach (KeyValuePair<string, Model.WaterGallon> item in list)
            {
                //LstBoxProductGallon.Items.Add(item.Value.gallon_id.ToString());
                //LstBoxProductGallon.Items.Add(item.Value.gallon_id.ToString()
                // + " " + item.Value.gallonType.ToString()
                // + " " + item.Value.Quantity.ToString()
                // + " " + item.Value.DeliveryPrice.ToString()
                // + " " + item.Value.PickUp_Price.ToString()
                //// + " " + item.Value.Image.ToString()
                // + " " + item.Value.DateAdded.ToString());
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                Random rnd = new Random();
                int employee_id = rnd.Next(1, 10000);
                //insert data
                var data = new Model.EmployeeData
                {
                    emp_id = employee_id,
                    emp_lastname = txtlastname.Text,
                    emp_firstname = txtfirstname.Text,
                    emp_midname = txtmidname.Text,
                    emp_birthdate = txtbirthdate.Text,
                    emp_gender = drdgender.Text,
                    emp_address = txtaddress.Text,
                    emp_contactnum = txtcontactnum.Text,
                    emp_email = txtemail.Text,
                    emp_dateHired = txtdateHired.Text,
                    emp_emergencycontact = txtemergencycontact.Text,
                    emp_role = drdrole.Text
                };
                SetResponse response;
                // Employee Records = tablename, emp_id = key ( PK? )
                response = twoBigDB.Set("EMPLOYEERECORD/" + data.emp_id, data);
                Model.EmployeeData result = response.ResultAs<Model.EmployeeData>();
                //lblResult.Text = "Record successfully added! Wait for the verification approval before you login.... ";
                Response.Write("<script> alert ('Record successfully added! Wait for the verification approval before you login....'); location.reload(); window.location.href = 'EmployeeRecord.aspx' </script>");
            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");

            }
        }
        //protected void btnupdate_Click(object sender, EventArgs e)
        //{

        //    var data = new Model.EmployeeData();

        //    // emp_id = ,
        //    data.emp_lastname = txtlastname.Text;
        //    data.emp_firstname = txtfirstname.Text;
        //    data.emp_midname = txtmidname.Text;
        //    data.emp_birthdate = txtbirthdate.Text;
        //    data.emp_gender = drdgender.Text;
        //    data.emp_address = txtaddress.Text;
        //    data.emp_contactnum = txtcontactnum.Text;
        //    data.emp_email = txtemail.Text;
        //    data.emp_dateHired = txtdateHired.Text;
        //    data.emp_emergencycontact = txtemergencycontact.Text;
        //    data.emp_role = drdrole.Text;

        //    //SetResponse response;
        //    // Employee Records = tablename, emp_id = key ( PK? )
        //    //response = (SetResponse)twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
        //    //EmployeeData result = response.ResultAs<EmployeeData>();
        //    //Response.Write("<script> alert ('Record successfully added'); location.reload(); window.location.href = 'EmployeeRecord.aspx' </script>");
        //    FirebaseResponse response;
        //    response = twoBigDB.Update("EMPLOYEERECORD/" + txtlastname.Text, data);
        //    Model.EmployeeData result = response.ResultAs<Model.EmployeeData>();//Database Result
        //                                                                        //Lbl_result.Text = "Data Updated Successfully";
        //                                                                        ////var update = twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
        //    if(result != null)
        //    Response.Write("<script> alert ('Data Updated Successfully'</script>");
        //    else
        //        Response.Write("<script> alert ('Data not Found'</script>");
        //}
            protected void btnUpdate_Click(object sender, EventArgs e)
            {

            Random rnd = new Random();
            int employee_id = rnd.Next(1, 10000);

            //Update data
            var data = new Model.EmployeeData();

                data.emp_id = employee_id;
                data.emp_lastname = txtlname.Text;
                data.emp_firstname = txtfname.Text;
                data.emp_midname = txtmname.Text;
                data.emp_birthdate = txtdob.Text;
                data.emp_gender = drd_Gender.Text;
                data.emp_address = txt_Address.Text;
                data.emp_contactnum = txt_Contactnum.Text;
                data.emp_email = txtemailAdd.Text;
                data.emp_dateHired = txtD8hired.Text;
                data.emp_emergencycontact = txtEmContactnum.Text;
                data.emp_role = drd_Role.Text;

                //SetResponse response;
                // Employee Records = tablename, emp_id = key ( PK? )
                //response = (SetResponse)twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
                //EmployeeData result = response.ResultAs<EmployeeData>();
                //Response.Write("<script> alert ('Record successfully added'); location.reload(); window.location.href = 'EmployeeRecord.aspx' </script>");
                FirebaseResponse response;
                response = twoBigDB.Update("EMPLOYEERECORD/" + employee_id, data);
                Model.EmployeeData result = response.ResultAs<Model.EmployeeData>();//Database Result
                                                                                    //Lbl_result.Text = "Data Updated Successfully";
                                                                                    ////var update = twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
            if (result != null)
                Response.Write("<script> alert ('Data Updated Successfully'</script>");
            else
                Response.Write("<script> alert ('Data not Found'</script>");



            //try
            //{
            //    var data = new EmployeeData();
            //    data.emp_lastname = txtlname.Text;
            //    data.emp_firstname = txtfname.Text;
            //    data.emp_midname = txtmname.Text;
            //    data.emp_birthdate = txtdob.Text;
            //    data.emp_gender = drd_Gender.Text;
            //    data.emp_address = txt_Address.Text;
            //    data.emp_contactnum = txt_Contactnum.Text;
            //    data.emp_email = txtemailAdd.Text;
            //    data.emp_dateHired = txtD8hired.Text;
            //    data.emp_emergencycontact = txtEmContactnum.Text;
            //    data.emp_role = drd_Role.Text;

            //    FirebaseResponse response;
            //    response = twoBigDB.Update("EmployeeRecords/" + txtlname.Text, data);
            //    EmployeeData result = response.ResultAs<EmployeeData>();
            //    Response.Write("<script>alert ('Records updated'); location.reload(); window.location.href = 'EmployeeRecord.aspx';</script>");
            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<pre>" + ex.ToString() + "</pre>");
            //    //Response.Write("<script>alert ('Failed to update record'); location.reload(); window.location.href = 'EmployeeRecord.aspx';</script>");
            //}
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    FirebaseResponse response;
            //    response = twoBigDB.Get("EmployeeRecords/" + txtidno.Text);
            //    EmployeeData obj = response.ResultAs<EmployeeData>();

            //    //txtlastname.Text = obj.emp_lastname.ToString();
            //    //txtfirstname.Text = obj.emp_firstname.ToString();
            //    //txtidno.Text = obj.emp_id.ToString();
            //}
            //catch
            //{
            //    Response.Write("<script>alert('Employee ID not found'); window.location.href = 'EmployeeRecord.aspx';</script>");
            //}
        }
        //DELETE Record
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                FirebaseResponse response;
                //response = twoBigDB.Delete("EMPLOYEERECORD/" + idno.Text);
                lblResult.Text = "Employee Records deleted!";
                //Response.Write("<script>alert ('Records deleted'); location.reload(); window.location.href = 'EmployeeRecord.aspx';</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
                //Response.Write("<script>alert('Failed to delete'); window.location.href = 'EmployeeRecord.aspx';</script>");
            }

        }

        
    }
}