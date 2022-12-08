using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WRS2big_Web.Admin;

namespace WRS2big_Web.LandingPage
{
    public partial class Account : System.Web.UI.Page
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
        }
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
                    Phone = txtphoneNum.Text,
                    Email = txtEmail.Text,
                    Pass = id_passwordreg.Text,
                    Proof = ""
                };

                SetResponse response;
                //USER = tablename, Idno = key(PK ? )
                response = twoBigDB.Set("ADMIN/" + data.Idno, data);
                Model.AdminAccount result = response.ResultAs<Model.AdminAccount>();
                Response.Write("<script>alert ('Account created'); location.reload(); window.location.href = '/LandingPage/Account.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('ID No. already exist'); window.location.href = 'Account.aspx';");
            }
        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                // RETRIEVE DATA FROM ADMIN TBL
                string email = txt_email.Text;
                string pass = txt_password.Text;

                FirebaseResponse response;
                response = twoBigDB.Get("ADMIN/" + txt_email.Text);
                Session["email"] = email;
                Session["password"] = pass;
                Response.Redirect("/Admin/AdminIndex.aspx");
                
            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");
            }
        }
    }
}