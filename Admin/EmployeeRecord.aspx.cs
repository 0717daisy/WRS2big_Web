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
    public partial class EmployeeRecord : System.Web.UI.Page
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

            //if (Session["emp_id"] == null)
            //{
            //    Response.Redirect("EmployeeRecord.aspx");
            //}

            var idnum = 685;

            var result = twoBigDB.Get("EMPLOYEERECORD/" + idnum);
            Model.EmployeeData obj = result.ResultAs<Model.EmployeeData>();

            idno.Text = obj.emp_id.ToString();
            fullname.Text = obj.emp_firstname + " " + obj.emp_midname + " " + obj.emp_lastname;
            dob.Text = obj.emp_birthdate;
            gender.Text = obj.emp_gender;
            address.Text = obj.emp_address;
            contact.Text = obj.emp_contactnum;
            emailadd.Text = obj.emp_email;
            datehired.Text = obj.emp_dateHired;
            emergencycontact.Text = obj.emp_emergencycontact;
            role.Text = obj.emp_role;

            //try
            //{
            //    FirebaseResponse response;
            //    //response = twoBigDB.GetAll("EmployeeRecords");
            //    EmployeeData obj1 = new EmployeeData();
            //    response = twoBigDB.Get("EmployeeRecords/" + idnum);
            //    //Dictionary<string, EmployeeData> obj = JsonConvert.DeserializeObject<Dictionary<string, EmployeeData>>(response.Body.ToString());
            //    EmployeeData obj = response.ResultAs<EmployeeData>();
            //    //EmployeeData obj = JsonConvert.DeserializeObject<EmployeeData>(response.Body);

            //    idno.Text = obj.emp_id.ToString();
            //fullname.Text = obj.emp_firstname.ToString() + " " + obj.emp_midname.ToString() + " " + obj.emp_lastname.ToString();
            //dob.Text = obj.emp_birthdate.ToString();
            //gender.Text = obj.emp_gender.ToString();
            //address.Text = obj.emp_address.ToString();
            //contact.Text = obj.emp_contactnum.ToString();
            //emailadd.Text = obj.emp_email.ToString();
            //datehired.Text = obj.emp_dateHired.ToString();
            //emergencycontact.Text = obj.emp_emergencycontact.ToString();
            //role.Text = obj.emp_role.ToString();


            //    //EmployeeData obj = response.ResultAs<EmployeeData>();

            //    //var list = new List<EmployeeData>();
            //    //if (obj != null)
            //    //{
            //    //    foreach (var item in obj)
            //    //    {
            //    //        EmployeeData list2 = response.ResultAs<EmployeeData>();
            //    //        idno.Text = list2.emp_id.ToString();
            //    //        idno.Text = list2.emp_id.ToString();
            //    //        fullname.Text = list2.emp_firstname.ToString() + " " + list2.emp_midname.ToString() + " " + list2.emp_lastname.ToString();
            //    //        dob.Text = list2.emp_birthdate.ToString();
            //    //        gender.Text = list2.emp_gender.ToString();
            //    //        address.Text = list2.emp_address.ToString();
            //    //        contact.Text = list2.emp_contactnum.ToString();
            //    //        emailadd.Text = list2.emp_email.ToString();
            //    //        datehired.Text = list2.emp_dateHired.ToString();
            //    //        emergencycontact.Text = list2.emp_emergencycontact.ToString();
            //    //        role.Text = list2.emp_role.ToString();
            //    //        //list.Add(JsonConvert.DeserializeObject<EmployeeData>(((JProperty)item).Value.ToString()));

            //    //    }
            //    //}


            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<pre>" + ex.ToString() + "</pre>");

            //}

        }

        //add employee records
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
                Response.Write("<script> alert ('Record successfully added'); location.reload(); window.location.href = 'EmployeeRecord.aspx' </script>");
            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");

            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //Random rnd = new Random();
                //int employee_id = rnd.Next(1, 10000);

                //insert data
                var data = new Model.EmployeeData
                {
                    //emp_id = employee_id,
                    emp_lastname = txtlname.Text,
                    emp_firstname = txtfname.Text,
                    emp_midname = txtmname.Text,
                    emp_birthdate = txtdob.Text,
                    emp_gender = drd_Gender.Text,
                    emp_address = txt_Address.Text,
                    emp_contactnum = txt_Contactnum.Text,
                    emp_email = txtemailAdd.Text,
                    emp_dateHired = txtD8hired.Text,
                    emp_emergencycontact = txtEmContactnum.Text,
                    emp_role = drd_Role.Text
                };
                //SetResponse response;
                // Employee Records = tablename, emp_id = key ( PK? )
                //response = (SetResponse)twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
                //EmployeeData result = response.ResultAs<EmployeeData>();
                //Response.Write("<script> alert ('Record successfully added'); location.reload(); window.location.href = 'EmployeeRecord.aspx' </script>");
                FirebaseResponse response;
                response = twoBigDB.Update("EMPLOYEERECORD/" + data.emp_id, data);
                Model.EmployeeData result = response.ResultAs<Model.EmployeeData>();
                //var update = twoBigDB.Update("EmployeeRecords/" + data.emp_id, data);
                Response.Write("<script> alert ('Data Updated Successfully'</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");

            }


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
                response = twoBigDB.Delete("EMPLOYEERECORD/" + idno.Text);
                Response.Write("<script>alert ('Records deleted'); location.reload(); window.location.href = 'EmployeeRecord.aspx';</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
                //Response.Write("<script>alert('Failed to delete'); window.location.href = 'EmployeeRecord.aspx';</script>");
            }

        }
    }
}
