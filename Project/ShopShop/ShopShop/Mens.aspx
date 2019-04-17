<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeBehind="Mens.aspx.cs" Inherits="ShopShop.Mens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row-fluid">
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([product_category] = @product_category) ORDER BY [product_name]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Men" Name="product_category" Type="String" />
                </SelectParameters>

            </asp:SqlDataSource>
            <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:LinkButton CssClass="card col-sm-3" runat="server" Style="margin: 1%;" ID="Unnamed" OnClick="Unnamed_Click" CommandArgument='<%# Bind("product_id") %>'>
                    <div>
                        <img src='<%# Eval("product_img") %>' 
                            alt='<%# Eval("product_name") %>' width="100%" style="max-height:350px; min-height:350px;"/>
                        <div class="caption" style="text-align:center;">
                            <h3><%# Eval("product_name") %></h3>
                            <p><b>Price: <%# Eval("product_price", "{0:c}") %></b>
                            <br><br><%# Eval("product_description") %></p>
                        </div>
               
                    </div>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
                 </div>
            <br />
        </div>
    </div>
</asp:Content>
