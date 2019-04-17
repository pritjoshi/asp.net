using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

        public class ProductList
        {
            private List<Product> productsItems;

            public ProductList()
            {//Constructor
                productsItems = new List<Product>();
            }

            public int Count
            {//Property Count for CustomerList
                get { return productsItems.Count; }
            }

            public Product this[int index]
            {//indexers
                get { return productsItems[index]; }
                set { productsItems[index] = value; }
            }

            public Product this[string id]
            {//indexers
                get
                {
                    foreach (Product c in productsItems)
                        if (c.product_id == id) return c;
                    return null;
                }
            }

            public static ProductList GetCart()
            {//Get All Contacts From Session
                ProductList cust = (ProductList)HttpContext.Current.Session["Cart"];
                if (cust == null)
                {
                    HttpContext.Current.Session["Cart"] = new ProductList();
                }
                return (ProductList)HttpContext.Current.Session["Cart"];
            }

            public void AddItem(Product product)
            {//Adding Item to Contact and Sorting it
                productsItems.Add(product);
                productsItems.Sort(delegate (Product c1, Product c2) { return c1.product_name.CompareTo(c2.product_name); });
            }

            public void RemoveAt(int index)
            {//Remove item from a index
                productsItems.RemoveAt(index);
            }

            public void Clear()
            {//Clear All Items from List
                productsItems.Clear();
            }

            public void AddQuantity(Product inCartProduct)
            {
                foreach (Product item in productsItems)
                {
                    if (inCartProduct.product_id.Equals(item.product_id))
                    {
                        item.product_qty = (Convert.ToInt32(item.product_qty) + Convert.ToInt32(inCartProduct.product_qty)).ToString();
                        return;
                    }
                }
            }
        }
