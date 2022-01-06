<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="josspaper.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
       <h2>Product</h2>
  <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" >
             <Columns>
                 <asp:BoundField DataField="Product_ID" HeaderText="Product ID" />
                 <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                 <asp:BoundField DataField="Unit_Price" HeaderText="Unit_Price" />
                 <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="addtocart" runat="server" Text="Button" OnClick="addtocart_Click" />
                    </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
</asp:Content>
