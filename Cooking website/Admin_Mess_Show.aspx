<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Mess_Show.aspx.cs" Inherits="Cooking_website.Admin_Mess_Show" %>
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
            <asp:TextBox ID="TextBox1" runat="server" Width="350px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Mail:</td>
        <td class="auto-style13">
            <asp:TextBox ID="TextBox2" runat="server" Width="350px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Başlıq:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="350px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mətn:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="250px" TextMode="MultiLine" Width="350px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
