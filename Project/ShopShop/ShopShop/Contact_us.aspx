<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ShopShop.Index" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Number/Address</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 213px">Phone:</td>
                        <td><a href="phone:226-899-2403">226-899-2403</a><br />
                            Weekdays,8 to 5 Pacific Time</td>
                    </tr>
                    <tr>
                        <td style="width: 213px">E-mail:</td>
                        <td><a href="mailto:Pjoshi9584@conestogac.on.ca">Pjoshi9584@conestogac.on.ca</a></td>
                    </tr>
                    <tr>
                        <td style="width: 213px">Fax:</td>
                        <td>226-898-1644</td>
                    </tr>
                    <tr>
                        <td style="width: 213px">Address:</td>
                        <td>Customer Service PO<br />
                            Box 81226 Seattle, WA<br />
                            98108-1226</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
