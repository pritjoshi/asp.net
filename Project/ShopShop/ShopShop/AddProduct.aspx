<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeFile ="AddProduct.aspx.cs" Inherits="ShopShop.AddProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="container">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1" Height="176px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Name" SortExpression="product_name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("product_name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditName" Text="*" runat="server" ErrorMessage="Product Name is required." ControlToValidate="txtEditName" ForeColor="Red" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("product_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="product_price">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditprice" runat="server" Text='<%# Bind("product_price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditPrice" Text="*" runat="server" ErrorMessage="Price is required." ControlToValidate="txtEditPrice" ForeColor="Red" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareEditVersion" Text="*" runat="server" ErrorMessage="Price is invalid." ControlToValidate="txtEditprice" Operator="DataTypeCheck" Type="Double" ValidationGroup="Edit"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelVersion" runat="server" Text='<%# Bind("product_price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Img" SortExpression="product_img">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditimg" runat="server" Type="Text" Text='<%# Bind("product_img") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditimg" Text="*" runat="server" ErrorMessage="Image Path is required." ControlToValidate="txtEditimg" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelImg" runat="server" Text='<%# Bind("product_img") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" SortExpression="product_description">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditDesc" runat="server" Type="Text" Text='<%# Bind("product_description") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditDesc" Text="*" runat="server" ErrorMessage="Description is required." ControlToValidate="txtEditDesc" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelDesc" runat="server" Text='<%# Bind("product_description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="product_category">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditCat" runat="server" Type="Text" Text='<%# Bind("product_category") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditCat" Text="*" runat="server" ErrorMessage="Category is required." ControlToValidate="txtEditCat" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelCat" runat="server" Text='<%# Bind("product_category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Size" SortExpression="product_size">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditSize" runat="server" Type="Text" Text='<%# Bind("product_size") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEditSize" Text="*" runat="server" ErrorMessage="Size is required." ControlToValidate="txtEditSize" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelSize" runat="server" Text='<%# Bind("product_size") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" CausesValidation="True" ValidationGroup="Edit"/>
            <asp:CommandField ShowDeleteButton="True" ShowHeader="True" CausesValidation="False" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div class="row">
                    <asp:ValidationSummary ID="ValidationSummary2"  ValidationGroup="Edit" ForeColor="Red" runat="server" />
                </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [product_id] = @original_product_id" InsertCommand="INSERT INTO [products] ([product_name], [product_price], [product_img], [product_description], [product_category], [product_size]) VALUES (@product_name, @product_price, @product_img, @product_description, @product_category, @product_size)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [product_name] = @product_name, [product_price] = @product_price, [product_img] = @product_img, [product_description] = @product_description, [product_category] = @product_category, [product_size] = @product_size WHERE [product_id] = @original_product_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_product_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="Double" />
                    <asp:Parameter Name="product_img" Type="String" />
                    <asp:Parameter Name="product_description" Type="String" />
                    <asp:Parameter Name="product_category" Type="String" />
                    <asp:Parameter Name="product_size" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="Double" />
                    <asp:Parameter Name="product_img" Type="String" />
                    <asp:Parameter Name="product_description" Type="String" />
                    <asp:Parameter Name="product_category" Type="String" />
                    <asp:Parameter Name="product_size" Type="String" />
                    <asp:Parameter Name="original_product_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
            <br />
            
            <div class="row">
                <span class="col-sm-12">To add a new product, enter the product information and click Add Product.</span>
            </div>
            <br />
            <br />
            
                <table width="100%" >
                <tr class="row">
                    <td class="col-sm-4">
                        Name:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox class="form-control" runat="server" id="product_name_txt"/>
                    </td>
                    <td class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredProdCode" runat="server" ControlToValidate="product_name_txt" Text="*" ErrorMessage="Product Code is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                        Price:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox class="form-control" runat="server" id="product_price_txt"/>
                    </td>
                    <td class="col-sm-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="product_price_txt" Text="*" ErrorMessage="Product Code is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareEditVersion" Text="*" runat="server" ErrorMessage="Price is invalid." ControlToValidate="product_price_txt" Operator="DataTypeCheck" Type="Double" ValidationGroup="Edit"></asp:CompareValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                        Image Path:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox type="text"  runat="server" class="form-control" id="product_img_txt"/>
                    </td>
                    <td class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="product_img_txt" Text="*" ErrorMessage="Product Version is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                        Description:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox type="text" runat="server" class="form-control" id="product_desc_txt"/>
                    </td>
                    <td class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="product_desc_txt" Text="*" ErrorMessage="Product Description is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                        Category:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox type="text" runat="server" class="form-control" id="product_cat_txt"/>
                    </td>
                    <td class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCAt" runat="server" ControlToValidate="product_cat_txt" Text="*" ErrorMessage="Product Category is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr class="row">
                    <td class="col-sm-4">
                        Size:
                    </td>
                    <td class="col-sm-4">
                        <asp:TextBox type="text" runat="server" class="form-control" id="product_size_txt"/>
                    </td>
                    <td class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" ControlToValidate="product_cat_txt" Text="*" ErrorMessage="Product Size is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                     
                    </td>
                    <td class="col-sm-4">
                    
                    </td>
                    <td class="col-sm-4">
                    
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-sm-4">
                        <asp:Label ID="LabelErr" runat="server" ForeColor="Red" EnableViewState="false"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
                    </td>
                    <td class="col-sm-4">
                        <asp:Button ID="btnAddProduct" runat="server" CssClass="btn btn-primary" Text="Add product" OnClick="AddProduct_Click" />
                    </td>
                    <td class="col-sm-4">
                    
                    </td>
                </tr>
            </table>
            
            
        </div>
    <br />
</asp:Content> 