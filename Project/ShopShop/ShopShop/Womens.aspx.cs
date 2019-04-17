using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopShop
{
    public partial class Womens : System.Web.UI.Page
    {
        int product_id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            product_id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect("~/ProductView?product_id=" + product_id);
        }
    }
}