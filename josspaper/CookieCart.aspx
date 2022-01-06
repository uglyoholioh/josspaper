<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CookieCart.aspx.cs" Inherits="josspaper.CookieCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:GridView ID="gv_cookiecart" runat="server">
        <Columns>
        
        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
        <asp:BoundField DataField="Unit_Price" HeaderText="Unit Price" />
      
    </Columns>
    </asp:GridView>
</asp:Content>
