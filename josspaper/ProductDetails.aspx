<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="josspaper.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <p>
        Product Details</p>
    <br />
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Image ID="img_Product" runat="server" Height="85px" Width="113px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_ProdID" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_ProdName" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_Price" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Button ID="Button1" runat="server"  Text="Add To Cart" OnClick="Button1_Click" />
                
            </td>
        </tr>
    </table>
</asp:Content>
