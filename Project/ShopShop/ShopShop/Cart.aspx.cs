using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopShop
{
    public partial class Cart : System.Web.UI.Page
    {
        private ProductList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            // retrieve customerList object from session state on every postback
            cart = ProductList.GetCart();
            // on initial page load, add cart items to list control
            if (!IsPostBack) this.DisplayCart();
        }

        private void DisplayCart()
        {
            // remove all current items from list control
            lstCart.Items.Clear();
            // loop through session Object and add each item's display value to the list
            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(Product.CartDisplay(cart[i]));
            }
        }
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            // if cart has items, clear both session list and list control
            if (cart.Count > 0)
            {
                cart.Clear();
                lstCart.Items.Clear();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // if cart contains items and user has selected an item…
            if (cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    // remove selected item from cart and re-display cart
                    cart.RemoveAt(lstCart.SelectedIndex);
                    this.DisplayCart();
                }
                else
                { // if no item is selected, notify user
                    //lblMessage.Text = "Please select the item to remove.";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "Thank you for shopping with us...";
            cart.Clear();
            lstCart.Items.Clear();
        }

       
    }
}