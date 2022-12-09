using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WRS2big_Web.Model
{
    public class WaterProduct
    {
        public int water_id { get; set; }
        public string Description { get; set; }
        public string waterType { get; set; }
        public DateTimeOffset DateAdded { get; set; }

    }
}