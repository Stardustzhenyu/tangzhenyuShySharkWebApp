<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestID.aspx.cs" Inherits="tangzhenyuShySharkWebApp.BM.RequestID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    BUSINESS MANAGEER
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Menu runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx" Selected="True" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID" Selected="True"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/FreqFl.aspx" Text="Frequent Fly" Value="Frequent Fly"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />
    </asp:Menu>
    <div class="tabContents">
        <table>
            <tr>
                <td colspan="3"><h1>Request New User ID</h1></td>
                
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="New ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label></td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>BM</asp:ListItem>
                        <asp:ListItem>NA</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSumbit" runat="server" Text="Sumbit" />
                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
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
