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
        public StorageReference RootReference { get; internal set; }

        //private static string error = "There are some error!";

        //public static void showError()
        //{
        //    Console.WriteLine(error);
        //}
        //public static bool isEqual(AdminAccount user1, AdminAccount user2)
        //{
        //    if (user1 == null || user2 == null)
        //    { return false; }

        //    if (user1.Email != user2.Email)
        //    {
        //        error = "Email does not exists!";

        //        return false;
        //    }
        //    else if (user1.Pass != user2.Pass)
        //    {
        //        error = "Email and Password does not match!";

        //        return false;
        //    }

        //    return true;
        //}
    }
}

    

   
