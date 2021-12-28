<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Yemekler_Yenile.aspx.cs" Inherits="Cooking_website.Admin_Yemekler_Yenile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td>Yeməyin adı:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tərkibi:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Height="175px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hazırlanma qaydası:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Height="175px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kateqoriya:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Şəkil:</td>
            <td class="auto-style13">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" CssClass="txt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Yenilə" Width="250px" Font-Bold="True" Height="35px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Günün Yeməyi Et" Width="250px" Font-Bold="True" Height="35px" />
            </td>
        </tr>
    </table>
</asp:Content>
