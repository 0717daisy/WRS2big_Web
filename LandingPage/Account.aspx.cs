using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WRS2big_Web.Admin;

using FireSharp;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace WRS2big_Web.LandingPage
{
    public partial class Account : System.Web.UI.Page
    {
        //Initialize firebase client
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",//API Key
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"//database URL
        };
        IFirebaseClient twoBigDB;


        protected void Page_Load(object sender, EventArgs e)
        {
            //connection to database 
            twoBigDB = new FireSharp.FirebaseClient(config);
        }
        //Function to store user data 
        public void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                // INSERT
                Random rnd = new Random();
                int idnum = rnd.Next(1, 10000);

                var data = new Model.AdminAccount
                {
                    Idno = idnum,
                    Lname = txtlname.Text,
                    Fname = txtfname.Text,
                    Mname = txtmname.Text,
                    Bdate = txtbirthdate.Text,
                    Address = txtaddress.Text,
                    Phone = txtphoneNum.Text,
                    Email = txtEmail.Text,
                    Pass = id_passwordreg.Text,
                    Proof = ""
                };

                SetResponse response;
                //USER = tablename, Idno = key(PK ? )
                response = twoBigDB.Set("ADMIN/" + data.Idno, data);//Storing data to the database
                Model.AdminAccount result = response.ResultAs<Model.AdminAccount>();//Database Result
                Response.Write("<script>alert ('Account created'); location.reload(); window.location.href = '/LandingPage/Account.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('ID No. already exist'); window.location.href = 'Account.aspx'; </script>");
            }
        }
        //protected async void btnLogin_Click(object sender, EventArgs e)
        //{
        //    // Get the email and password entered by the user
        //    string email = txt_email.Text; ;
        //    string password = txt_password.Text;

        //    // Check if the email and password are valid
        //    FirebaseResponse response = await twoBigDB.GetAsync("ADMIN/" + email);
        //    Model.AdminAccount user = response.ResultAs<Model.AdminAccount>();
        //    if (user != null && user.Pass == password)
        //    {
        //        // Login successful, redirect to homepage
        //        Response.Redirect("/Admin/AdminIndex.aspx");
        //    }
        //    else
        //    {
        //        // Login failed, display error message
        //        lblError.Text = "Invalid email or password";
        //    }
        //}








        public void btnLogin_Click(object sender, EventArgs e)
        {
            //Get the email and password entered by the user
            string email = txt_email.Text;
            string password = txt_password.Text;

            // Check if the email and password are valid
            FirebaseResponse response = twoBigDB.Get("ADMIN/" + email);
            Model.AdminAccount user = response.ResultAs<Model.AdminAccount>();
            if (user != null && user.Pass == password)
            {
                // Login successful, redirect to admin homepage
                Response.Redirect("/Admin/AdminIndex.aspx");
            }
            else
            {
                // Login failed, display error message
                lblError.Text = "Invalid email or password!";
            }
        }
        //    //RETRIEVE DATA FROM ADMIN TBL
        //    string email = txt_email.Text;
        //    string password = txt_password.Text;

        //    //Session["Email"] = email;
        //    //Session["Pass"] = password;

        //    //((Session["Email"] != null) && (Session["Pass"] != null))
        //    if (Session["Email"] != null) 
        //    {            
        //        Session["Email"] = email;
        //        Session["Pass"] = password;
        //       // lblAdmin.Text = " + email + ";
        //        Response.Redirect("/Admin/AdminIndex.aspx");
        //    }
        //    else
        //    {
        //        lblMes.Text = "Please enter valid email or password!";
        //        //Response.Write("<script>alert ('Please enter valid email or password');</script>");
        //        //Model.AdminAccount.showError();
        //    }


        //    //try
        //    //{
        //    //RETRIEVE DATA FROM ADMIN TBL
        //    //string email = txt_email.Text;
        //    //string password = txt_password.Text;

        //    //Session["Email"] = email;
        //    //Session["Pass"] = password;
        //    //Response.Redirect("/Admin/AdminIndex.aspx");

        //    //FirebaseResponse response;
        //    //response = twoBigDB.Get(@"ADMIN/" + email);
        //    //Model.AdminAccount result = response.ResultAs<Model.AdminAccount>();//Database Result

        //    //Model.AdminAccount curResult = new Model.AdminAccount //User Given Info
        //    //{
        //    //    Email = txt_email.Text,
        //    //    Pass = txt_password.Text
        //    //};

        //    //if (result != null && result.Pass == password)
        //    //{
        //    //    Response.Redirect("/Admin/AdminIndex.aspx");
        //    //}
        //    //else
        //    //{
        //    //    Model.AdminAccount.showError();
        //    //}


        //    //}
        //    //    catch (Exception ex)
        //    //    {
        //    //        Response.Write("<pre>" + ex.ToString() + "</pre>");
        //    //    }

        //}

        //IsValidUser method checks if the provided email and password are valid querying 
        //the firebase database for a user with the given email and comparing the password  
        //provided with the password stored in the database
        //public async Task<bool> IsValidUser(string email, string password)
        //{
        //        FirebaseResponse response = await twoBigDB.GetAsync("ADMIN/" + email);
        //        Model.AdminAccount user = response.ResultAs<Model.AdminAccount>();

        //        if (user != null && user.Pass == password)
        //        {
        //            return true;
        //        }

        //        return false;
        //}


    }
}