<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShopShop.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <div class="container">
                <div class="row">
                    <div class="col-sm-12" style="text-align:center; font-weight:bold;">Cart List</div>
                    <div class="col-sm-6">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-sm-9"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div>
                    <div class="col-sm-3">
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Remove Item" Width="160px" OnClick="Button2_Click"/>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Empty List" Width="160px" OnClick="btnEmpty_Click"/>
                    </div>
                </div>
            <br />
            <br />
            <br />
            <br />
            <br />
                <div>
                   
                    <div class="col-sm-12"style="text-align:center">
                        <br />
                        <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Text="Continue Shopping" Width="240px"  PostBackUrl="~/Index.aspx" ></asp:Button>
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Checkout" Width="240px"  OnClick="Button3_Click" ></asp:Button>
                        <br />
                        <asp:Label ID="Label1" runat="server" Enabled="False"></asp:Label>
                    </div>
                   
                </div>
        </div>
        <p>
            &nbsp;
        </p>
    
</asp:Content>
