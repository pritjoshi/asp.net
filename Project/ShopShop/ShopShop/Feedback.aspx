<%@ Page Title="" Language="C#" MasterPageFile="~/ShopShop.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ShopShop.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-responsive">
    <table class="table">
        <tr>
            <td class="text-sm-left" style="height: 30px; width: 260px; font-size: medium;">Name</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_name" runat="server" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_name" ErrorMessage="Please enter your name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 260px; height: 30px; font-size: medium;">Phone number</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_phn" runat="server" TextMode="Phone" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_phn" ErrorMessage="Please enter phone number" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 260px; height: 30px; font-size: medium;">Email Address</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_email" runat="server" TextMode="Email" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_email" ErrorMessage="Please enter email address" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 260px; font-size: medium;">Comments</td>
            <td class="text-sm-center">
                <asp:TextBox ID="tb_comment" runat="server" Height="91px" TextMode="MultiLine" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_comment" ErrorMessage="Please enter some comments" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" type="button" class="btn btn-secondary" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick" Enabled="False">
                </asp:Timer>
                <br />
                <br />
                <asp:Label ID="lbl_submit_fb" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
