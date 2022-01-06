using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace josspaper
{
    public class ShoppingCartItem : IEquatable<ShoppingCartItem>
    {
        public int Quantity { get; set; }

        private string _ItemID;

        public string ItemID
        {
            get { return _ItemID; }
            set { _ItemID = value;}
        }

        private string _ItemImage;

        public string Product_Image
        {
            get { return _ItemImage; }
            set { _ItemImage = value;}
        }
        private string _ItemDesc;
        public string Product_Desc
        {
            get { return _ItemDesc; }
            set { _ItemDesc = value; }

        }
        private decimal _ItemPrice;
        public decimal Product_Price
        {
            get { return _ItemPrice; }
            set { _ItemPrice = value; }
        }

        public decimal itemTotalPrice
        {
            get { return Product_Price * Quantity; }
        }

        

        public ShoppingCartItem(string ProductID)
        {
            this.ItemID = ProductID;
        }
        public ShoppingCartItem(string productID, Product prod)
        {
            this.ItemID = productID;
            this.Product_Image = prod.Product_Image;
            this.Product_Desc = prod.Product_Name;
            this.Product_Price = prod.Unit_Price;
        }
        public ShoppingCartItem(string productID, string productName, string productImage, decimal productPrice)
        {
            this.ItemID = productID;
            this.Product_Image = productImage;
            this.Product_Desc = productName;
            this.Product_Price = productPrice;

        }
        public bool Equals(ShoppingCartItem anItem)
        {
            return anItem.ItemID == this.ItemID;
        }
    }
}