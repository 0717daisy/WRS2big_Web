﻿using System;
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
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

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
                    Username = txtusername.Text,
                    Email = txtEmail.Text,
                    WRS_Name = txtStationName.Text,
                    Pass = id_passwordreg.Text,
                    Proof = ""
                };

                SetResponse response;
                //USER = tablename, Idno = key(PK ? )
                response = twoBigDB.Set("ADMIN/" + data.Idno, data);//Storing data to the database
                Model.AdminAccount result = response.ResultAs<Model.AdminAccount>();//Database Result
                Response.Write("<script>alert ('Account " + result.Idno + " created! Use this id number to log in.'); location.reload(); window.location.href = '/LandingPage/Account.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('ID No. already exist'); window.location.href = 'Account.aspx'; </script>");
            }
        }
        
        public void btnLogin_Click(object sender, EventArgs e)
        {

            //Get the email and password entered by the user
            //string username = txt_username.Text;
            //string password = txt_password.Text;
            string idno = txt_idno.Text;
            string password = txt_password.Text;

            // //Check if the email and password are valid
            //FirebaseResponse response;
            //response = twoBigDB.Get("ADMIN" + username);
            ////response = twoBigDB.Get("ADMIN" );
            //Model.AdminAccount user = response.ResultAs<Model.AdminAccount>();
            ////if (user == null)
            ////    user = new Model.AdminAccount();

            //if (user.Username == username && user.Pass == password)
            //{
            //    Session["username"] = username;
            //    Session["password"] = password;
            //    Session["WRSname"] = user.WRS_Name;
            //    // Login successful, redirect to admin homepage
            //    Response.Redirect("/Admin/AdminIndex.aspx");

            //}
            //else
            //{
            //    // Login failed, display error message
            //    //lblError.Text = "Invalid email or password!";
            //    Response.Write("<script>alert('Invalid username or password');</script>");
            //}

            //string email = txtEmail.Text;
            //string password = txtPassword.Text;

            //FirebaseResponse response = await twoBigDB.GetAsync("ADMIN/" + txt_username.Text);
            //var result = twoBigDB.Get("ADMIN/" + username);
            //Model.AdminAccount user = result.ResultAs<Model.AdminAccount>();
            ////lblError.Text = result;

            //Response.Write("<script>alert('Response: ' " + result + ");</script>");
            //if (user.Username != null)
            //{
            //    Response.Write("<script>alert('Password: ' "+ user.Pass + ");</script>");

            //    if (user.Pass == password)
            //    {
            //        // Login successful
            //        Session["user"] = user;
            //        Session["WRSname"] = user.WRS_Name;
            //        Response.Redirect("/Admin/Account.aspx");
            //    }
            //    else
            //    {
            //        // Incorrect password
            //        lblError.Text = "Incorrect username or password";
            //    }
            //}
            //else
            //{
            //    // User not found
            //    lblError.Text = " User not found";
            //}

            FirebaseResponse response;
            response = twoBigDB.Get("ADMIN/" + idno);
            Model.AdminAccount obj = response.ResultAs<Model.AdminAccount>();
            if (obj.Idno == int.Parse(idno) && obj.Pass == password)
            {
                Session["idno"] = idno;
                Session["password"] = password;
                Session["WRSname"] = obj.WRS_Name;
                // Login successful, redirect to admin homepage
                Response.Redirect("/Admin/WaitingPage.aspx");
            }
            else
            {
                // Login failed, display error message
                //lblError.Text = "Invalid email or password!";
                Response.Write("<script>alert('Invalid username or password');</script>");
            }
        }
    }
   
}       
  