using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopShop

{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.InsertParameters;
                parameters["product_name"].DefaultValue = product_name_txt.Text;
                parameters["product_price"].DefaultValue = product_price_txt.Text;
                parameters["product_img"].DefaultValue = product_img_txt.Text;
                parameters["product_description"].DefaultValue = product_desc_txt.Text;
                parameters["product_category"].DefaultValue = product_cat_txt.Text;
                parameters["product_Size"].DefaultValue = product_size_txt.Text;

                try
                {
                    SqlDataSource1.Insert();
                    //product_code.Text = "";
                    //product_name.Text = "";
                    //product_version.Text = "";
                    //product_date.Text = "";
                }
                catch (Exception ex)
                {
                    LabelErr.Text = "A database error has occurred. " + "Message:" + ex.Message;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}