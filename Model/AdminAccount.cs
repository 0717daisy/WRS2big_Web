using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WRS2big_Web.Model
{
    public class AdminAccount
    {
        public int Idno { get; set; }
        public string Lname { get; set; }
        public string Fname { get; set; }
        public string Mname { get; set; }
        public string Bdate { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string WRS_Name { get; set; }
        public string Pass { get; set; }
        public string Proof { get; set; }
        public DateTimeOffset SubsDate { get; set; }
        public string SubType { get; set; }
        public DateTimeOffset SubEnd { get; set; }

        public StorageReference RootReference { get; internal set;

    }
}

    

   
