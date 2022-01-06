<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="josspaper.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Product</h2>
  <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvProduct_SelectedIndexChanged">
             <Columns>
                 <asp:BoundField DataField="Product_ID" HeaderText="Product ID" />
                 <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                 <asp:BoundField DataField="Unit_Price" HeaderText="Unit_Price" />
                 <asp:CommandField ShowSelectButton="True" />
             </Columns>
         </asp:GridView>
</asp:Content>
