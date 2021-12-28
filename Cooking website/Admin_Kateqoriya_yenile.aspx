<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Kateqoriya_yenile.aspx.cs" Inherits="Cooking_website.Admin_Kateqoriya_yenile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kateqoriyanın adı:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ədəd:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şəkil:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Yenilə" Font-Bold="True" Height="35px" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
