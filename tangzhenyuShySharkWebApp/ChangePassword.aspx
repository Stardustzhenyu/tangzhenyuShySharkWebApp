<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="tangzhenyuShySharkWebApp.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="Changing Password for:"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Specify a valid Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Specify a valid Password" ControlToValidate="txtConfPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The passwordsspecified by you do not match.Please try again." ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" Display="Dynamic" ForeColor="Red"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                    <asp:Button ID="btnSumbit" runat="server" Text="Sumbit" /></td>
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
