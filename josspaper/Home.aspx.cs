using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace josspaper
{
    public partial class Home : System.Web.UI.Page
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
            gvProduct.DataSource = prodList;
            gvProduct.DataBind();
        }
        protected void gvProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvProduct.SelectedRow;

            // Get Product ID from the selected row, which is the 
            // first row, i.e. index 0.
            string prodID = row.Cells[0].Text;

            // Redirect to next page, with the Product Id added to the URL,
            // e.g. ProductDetails.aspx?ProdID=1
            Response.Redirect("ProductDetails.aspx?ProdID=" + prodID);

        }

    }
}