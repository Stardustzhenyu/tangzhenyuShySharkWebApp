<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="tangzhenyuShySharkWebApp.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            width: 315px;
        }
    </style>
    <style type="text/css">
        #TextArea1 {
            width: 864px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <textarea id="TextArea1" rows="20" class="auto-stylel">
    Thanks for using SkyShark Airlines.
    Looking forward to serving you again !
    </textarea>
    </br>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Click here for Logon</asp:HyperLink>
</asp:Content>
