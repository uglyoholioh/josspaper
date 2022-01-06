using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace josspaper
{
    public partial class CookieCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[] {
                new DataColumn("Product_Name"),
                new DataColumn("Unit_Price") });

            if (Request.Cookies["cart"] != null)
            {
                string products = Request.Cookies["cart"].Value.Replace("cart=", "");
                string[] strarr = HttpUtility.UrlDecode(products).Split('\n');

                for (int i = 0; i < strarr.Length -1; i++)
                {
                    string[] strarr1 = strarr[i].Split('|');
                    dt.Rows.Add(strarr1[0].Trim(),strarr1[1].Trim());
                }
            }
            gv_cookiecart.DataSource = dt;
            gv_cookiecart.DataBind();
        }
    }
}