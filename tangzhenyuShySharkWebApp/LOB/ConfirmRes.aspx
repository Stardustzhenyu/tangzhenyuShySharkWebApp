﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmRes.aspx.cs" Inherits="tangzhenyuShySharkWebApp.LOB.ConfirmRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#F7F6F3" />
    <DynamicSelectedStyle BackColor="#5D7B9D" />
    <Items>
        <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Resevation" Value="Create Resevation"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancel Reservation" Value="Cancel Reservation"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation" Selected="True"></asp:MenuItem>
    </Items>
    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#5D7B9D" />
</asp:Menu>
<div class="tabContents">
    <table>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Cancel a new Reservation"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
            <td></td>
        </tr>
            <tr>
    <td colspan="3">
        <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label></td>
    <td></td>
    
</tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Ticke No"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plese specify a valid ticket number" ControlToValidate="txtTNo" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
            <td></td>
        </tr><tr>
            <td></td>
            <td>
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm Ticket" OnClick="btnConfirm_Click" /></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
    <td colspan="3">
        <asp:Label ID="lblDetails" runat="server" Text="" ForeColor="#990000" Font-Bold="true"></asp:Label></td>
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
