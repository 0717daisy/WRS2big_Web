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
            //Database Secrets
            AuthSecret = "AIzaSyC3EK1x68TgLdB7wIgpQ9bssBU4jnN7EVs",
            // Realtime Database
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient twobigDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            twobigDB = new FireSharp.FirebaseClient(config);
        }
        public void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                // INSERT
                var data = new Model.AdminAccount
                {
                    idno = "",
                    Lname = txtlname.Text,
                    Fname = txtfname.Text,
                    Mname = txtmname.Text,
                    Bdate = txtbirthdate.Text,
                    Phone = txtphoneNum.Text,
                    Email = txtEmail.Text,
                    Pass = id_passwordreg.Text
                };

                SetResponse response;
                //ADMIN = tablename, idno = key(PK ? )
                response = twobigDB.Set("ADMIN/" + data.idno, data);
                Model.AdminAccount result = response.ResultAs<Model.AdminAccount>();
                Response.Write("<script>alert ('Account created'); location.reload(); window.location.href = 'Admin/AdminIndex.aspx'; </script>");
            }
            catch
            {
                Response.Write("<script>alert('ID No. already exist'); window.location.href = 'Account.aspx';");
            }
        }
    }
}