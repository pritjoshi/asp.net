using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class Product
    {
        public string product_id { get; set; }
        public string product_name { get; set; }
        public string product_price { get; set; }
        public string product_img { get; set; }
        public string product_description { get; set; }
        public string product_category { get; set; }
        public string product_size { get; set; }
        public string product_qty { get; set; }


        public static string CartDisplay(Product product)
        {
            //Formating Customer String to Show In Contact List
            Console.WriteLine(product.product_price);
            Console.WriteLine(Convert.ToInt32(product.product_qty));
            Console.WriteLine((Convert.ToDouble(product.product_price) * Convert.ToInt32(product.product_qty)));
            return product.product_name + "; Qty = " + product.product_qty + " ; Price = " + (Convert.ToDouble(product.product_price) * Convert.ToInt32(product.product_qty));
        }
    }