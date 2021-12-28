<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Offer_Confirm.aspx.cs" Inherits="Cooking_website.Admin_Offer_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td>Təklif olunan yeməyin adı:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tərkibi:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Height="250px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hazırlanma qaydası:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Height="250px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Şəkli:</td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" Width="305px" />
            </td>
        </tr>
        <tr>
            <td>Təklif edənin adı,soyadı:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mail adresi:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kateqoriya:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" Width="305px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn" Height="50px" OnClick="Button1_Click" Text="Təstiq Et" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
