<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TeklifEt.aspx.cs" Inherits="Cooking_website.TeklifEt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 236px;
    }
    .auto-style10 {
        width: 236px;
        height: 25px;
    }
    .auto-style11 {
        height: 25px;
    }
    .auto-style12 {
        color: #FFFFFF;
        background-color: #660066;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9"><strong>Yemək adı:</strong></td>
        <td>
            <asp:TextBox ID="TxtYemekadi" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tərkibi:</strong></td>
        <td>
            <asp:TextBox ID="TxtTerkibi" runat="server" Height="125px" TextMode="MultiLine" Width="300px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Hazırlanma qaydası:</strong></td>
        <td><strong>
            <asp:TextBox ID="TxtQaydalar" runat="server" Height="150px" Width="300px" TextMode="MultiLine" CssClass="txt"></asp:TextBox>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Şəkil:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="txt" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Təklif edən(Ad Soyad):</strong></td>
        <td>
            <asp:TextBox ID="TxtTeklifeden" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail adresi:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="300px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style11">
            <asp:Button ID="BtnSave" runat="server" CssClass="btn" Height="42px" Text="Təklif Et" Width="176px" OnClick="BtnSave_Click" Font-Bold="True" />
        </td>
    </tr>
</table>
</asp:Content>
