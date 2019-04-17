using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopShop.Models
{
    public class CartItem
    {
        public CartItem(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public Product Product { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2})",
                Product.product_name,
                Quantity.ToString(),
                Product.product_price.ToString()
            );
            return displayString;
        }
    }
}