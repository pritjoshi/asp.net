<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ShopShop.Index" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Image ID="Image1" runat="server" Height="623px" ImageUrl="~/Image/sale.gif" Width="1453px" />
    <div class="container">
        <div class="img-responsive">
&nbsp;</div>
        <div>
             <br />
             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/SHOPGUYS.jpg" PostBackUrl="~/Mens.aspx" Height="918px" Width="1465px" />
        </div>
        <div>
           
            <br />
           
            <asp:ImageButton ID="ImageButton2" runat="server" Height="625px" ImageUrl="~/Image/SHOPGIRLS.jpg" OnClick="ImageButton2_Click" PostBackUrl="~/Womens.aspx" style="margin-right: 0px" Width="1466px" />
        </div>
    </div>
</asp:Content>
