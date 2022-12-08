using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WRS2big_Web.Model
{
    public class OrderData
    {
        public int Order_id { get; set; }
        public string CustomerName { get; set; }
        public string Category { get; set; }
        public string Type { get; set; }
        public string Qty { get; set; }
        public string DateTime { get; set; }
        public string Status { get; set; }
    }
}