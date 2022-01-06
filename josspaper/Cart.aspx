<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="josspaper.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 870px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            float: right;
            width: 177px;
        }
        .auto-style6 {
            float: right;
            margin-left: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
     <link href="Styles/cart.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <div class="carttop">
        <h2>Your Shopping Cart</h2>
    </div>
    
    <asp:GridView ID="gv_CartView" runat="server" Width="952px" AutoGenerateColumns="False" DataKeyNames="ItemID" OnRowCommand="gv_CartView_RowCommand1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" CssClass="auto-style1" Height="157px" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
          
            <asp:BoundField DataField="ItemID" HeaderText="Product ID" />
            <asp:BoundField DataField="Product_Desc" HeaderText="Product" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="tb_Quantity" runat="server" Text='<%# Eval("Quantity") %>' align="center"></asp:TextBox>
                    <asp:LinkButton ID="btn_Remove" runat="server" CommandArgument='<%# Eval("ItemID") %>' CommandName="Remove">Remove</asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Product_Price" HeaderText="Unit Price" />
            <asp:BoundField DataField="itemTotalPrice" DataFormatString="{0:C}" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:Label ID="lbl_Error" runat="server"></asp:Label>
     <table class="auto-style2">
         <tr>
             <td class="auto-style3"><h3 Text="Total" Font-Names="Haettenschweiler" Font-Size="Large" class="auto-style5">Temporary amount:</h3></td>
             <td class="auto-style4"><asp:Label ID="lbl_TotalPrice" runat="server" Text="Total" Font-Names="Haettenschweiler" Font-Size="Large" CssClass="auto-style6" ></asp:Label></td>
         </tr>
     </table>

    <asp:Button ID="btn_checkout" runat="server" Text="CheckOut" BackColor="#0066FF" CssClass="pull-right" ForeColor="White" Height="37px" />
    </asp:Content>
