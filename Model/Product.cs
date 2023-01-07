using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WRS2big_Web.Model
{
    public class Product
    {
        public int productId { get; set; }
        public int productType { get; set; }
        public int productSize { get; set; }
        public float productPrice { get; set; }
        public int productAvailable { get; set; }
        public DateTimeOffset DateAdded { get; set; }
    }
}