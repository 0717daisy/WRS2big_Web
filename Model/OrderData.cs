using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WRS2big_Web.Model
{
    public class OrderData
    {
        public int Order_id { get; set; }
        public string OrderBorrowGallons { get; set; }
        public string OrderOwnGallons { get; set; }
        public string OrderProductType { get; set; }
        public string OrderQuantity { get; set; }
        public string OrderReservationDate { get; set; }
        public string OrderType { get; set; }
        public string OrderStatus { get; set; }
    }
}