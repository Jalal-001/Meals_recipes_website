<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Comments_Update.aspx.cs" Inherits="Cooking_website.Admin_Comments_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Mail:</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mətn:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemək:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Təstiqlə" Width="200px" Font-Bold="True" Height="35px" />
            </td>
        </tr>
    </table>
</asp:Content>
