using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace josspaper
{
    public class Product
    {
        string _connStr = ConfigurationManager.ConnectionStrings["product.mdf"].ConnectionString;
        private string _prodID = null;
        private string _prodName = "";
        private string _prodImage = "";
        private decimal _unitPrice = 0;

        public Product()
        {
        }

        public Product(string prodID, string prodName, string prodImage, decimal unitPrice)
        {
            _prodID = prodID;
            _prodName = prodName;
            _prodImage = prodImage;
            _unitPrice = unitPrice;
        }
        public Product(string prodName, string prodImage, decimal unitPrice) : this(null, prodName, prodImage, unitPrice)
        {

        }
        public Product(string prodID)
           : this(prodID, "", "", 0)
        {
        }
        public string Product_ID
        {
            get { return _prodID; }
            set { _prodID = value; }
        }
        public string Product_Name
        {
            get { return _prodName; }
            set { _prodName = value; }
        }
        public string Product_Image
        {
            get { return _prodImage; }
            set { _prodImage = value; }
        }
        public decimal Unit_Price
        {
            get { return _unitPrice; }
            set { _unitPrice = value; }
        }
        public Product getProduct(string prodID)
        {

            Product prodDetail = null;

            string prod_Name, Prod_Image;
            decimal unit_Price;


            string queryStr = "SELECT * FROM Products WHERE Product_ID = @ProdID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@ProdID", prodID);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                prod_Name = dr["Product_Name"].ToString();
                Prod_Image = dr["Product_Image"].ToString();
                unit_Price = decimal.Parse(dr["Unit_Price"].ToString());

                prodDetail = new Product(prodID, prod_Name, Prod_Image, unit_Price);
            }
            else
            {
                prodDetail = null;
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return prodDetail;
        }
        public List<Product> getProductAll()
        {
            List<Product> prodList = new List<Product>();

            string prod_Name, Prod_Image, prod_ID;
            decimal unit_Price;


            string queryStr = "SELECT * FROM Products Order By Product_Name";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                prod_ID = dr["Product_ID"].ToString();
                prod_Name = dr["Product_Name"].ToString();

                Prod_Image = dr["Product_Image"].ToString();
                unit_Price = decimal.Parse(dr["Unit_Price"].ToString());

                Product a = new Product(prod_ID, prod_Name, Prod_Image, unit_Price);
                prodList.Add(a);
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return prodList;
        }

    }
}