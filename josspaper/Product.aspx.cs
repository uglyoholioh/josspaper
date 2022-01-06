using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace josspaper
{
    public partial class Product1 : System.Web.UI.Page
    {
        Product aProd = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        protected void bind()
        {
            List<Product> prodList = new List<Product>();
            prodList = aProd.getProductAll();
            gvProducts.DataSource = prodList;
            gvProducts.DataBind();
        }
        

        protected void addtocart_Click(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
            string name = row.Cells[1].Text.Trim();
            string price = row.Cells[2].Text.Trim();
            
            HttpCookie cookie = new HttpCookie("cart");
            if (Request.Cookies["cart"] == null)
            {
                cookie.Values["cart"] = Request.Cookies["cart"].Value + Environment.NewLine + name + "|" + price;
                cookie.Expires = DateTime.Now.AddDays(14);
            }

            Response.Cookies.Add(cookie);
        }
    }
}