using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace josspaper
{
    
    public partial class ProductDetails : System.Web.UI.Page
    {
       
        Product prod = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Product aProd = new Product();
            // Get Product ID from querystring
            string prodID = Request.QueryString["ProdID"].ToString();
            prod = aProd.getProduct(prodID);

            lbl_ProdName.Text = prod.Product_Name;

            lbl_Price.Text = prod.Unit_Price.ToString("c");
            img_Product.ImageUrl = "~\\Images\\" + prod.Product_Image;

            lbl_ProdID.Text = prodID.ToString();


        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string iProductID = prod.Product_ID.ToString();
            ShoppingCart.Instance.AddItem(iProductID, prod);

     
        }
    }
}