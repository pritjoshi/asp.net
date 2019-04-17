using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopShop
{
    public partial class ProductView : System.Web.UI.Page
    {
        Product displayProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = Request.QueryString.ToString();
            string product_id = temp.Substring(temp.LastIndexOf('=') + 1);

            displayProduct = this.DisplayProduct(Convert.ToInt32(product_id));

            product_name.Text = displayProduct.product_name;
            Image1.ImageUrl = displayProduct.product_img;
            product_price.Text = displayProduct.product_price;
            product_description.Text = displayProduct.product_description;
            //lblDescription.Text = displayProduct.Description;
            //lblColour.Text = displayProduct.Colors;
            //lblWarranty.Text = displayProduct.Warranty_info;
            //imgProduct.ImageUrl = "" + displayProduct.Image;
        }

        public Product DisplayProduct(Int32 product_id)
        {
            //Product getid = new Product();
            DataView ProductTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            ProductTable.RowFilter = string.Format("Product_id = '" + product_id + "'");
            if (ProductTable.Count > 0)
            {

                DataRowView row = ProductTable[0];
                Product p = new Product();
                p.product_id = row["product_id"].ToString();
                p.product_name = row["product_name"].ToString();
                p.product_img = row["product_img"].ToString();
                p.product_price = row["product_price"].ToString();
                p.product_description = row["product_description"].ToString();
                p.product_category = row["product_category"].ToString();
                p.product_size = row["product_size"].ToString();
                return p;
            }
            else
            {
                return null;
            }
        }

        protected void AddToCart(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //get cart from session state and selected item from cart
                ProductList cart = ProductList.GetCart();
                Console.WriteLine(displayProduct.product_id);
                Product cartItem = cart[displayProduct.product_id];
                //if item isn't in cart, add it; otherwise, increase its quantity
                Product temp = displayProduct;
                temp.product_qty = qty.Text;
                if (cartItem == null)
                {
                    cart.AddItem(temp);
                }
                else
                {
                    cart.AddQuantity(temp);
                }
                Response.Redirect("~/Cart");
            }

        }
    }
}