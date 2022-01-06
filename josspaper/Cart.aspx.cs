using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace josspaper
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCart();
            }
            
        }

       
        protected void LoadCart()
        {
            //bind the Items inside the Session/ShoppingCart Instance with the Datagrid
            gv_CartView.DataSource = ShoppingCart.Instance.Items;
            gv_CartView.DataBind();

            decimal total = 0.0m;
            foreach (ShoppingCartItem item in ShoppingCart.Instance.Items)
            {
                total = total + item.itemTotalPrice;
            }
            lbl_TotalPrice.Text = total.ToString();
        }

        protected void gv_CartView_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                lbl_Error.Text = "Message:" + e.CommandArgument.ToString();
                string productId = e.CommandArgument.ToString();
                ShoppingCart.Instance.RemoveItem(productId);
                LoadCart();
                
            }
        }
       
    }
}