<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="tangzhenyuShySharkWebApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        .auto-style1 {
            width: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Welcome to SkyShark Airlines Home Page</h1>
    <asp:Image ID="Image1" runat="server" Height="260px" ImageUrl="~/skyShark.png" Width="850px" />
    <div>
        <p> Launched in 1999, SkyShark Airlines is a United States-based airline that has rapidly grown in the past three years. </p>
        <table>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Text="lblMessage" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Specify a valid UserName" ControlToValidate="txtUserName"></asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Specify a valid Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSumbit" runat="server" Text="Sumbit" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</form>
</asp:Content>
