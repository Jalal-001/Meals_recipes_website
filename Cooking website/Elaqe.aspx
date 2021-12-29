<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Elaqe.aspx.cs" Inherits="Cooking_website.Elaqe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
        width: 241px;
        text-align: right;
    }
    .auto-style7 {
        width: 241px;
    }
    .auto-style8 {
        font-size: x-large;
    }
    .auto-style9 {
        width: 241px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="2"><strong><span class="auto-style8">Əlaqə:</span></strong><br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Ad Soyad:</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Başlıq:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail:</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mətn:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="txt" Height="160px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Göndər" Width="244px" Height="40px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
</table>
</asp:Content>
