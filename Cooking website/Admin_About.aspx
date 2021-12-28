<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_About.aspx.cs" Inherits="Cooking_website.Admin_About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 40px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
            </td>
            <td>HAQQIMIZDA</td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Height="300px" TextMode="MultiLine" Width="660px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" CssClass="btn" Height="50px" OnClick="Button3_Click" Text="Güncəllə" Width="150px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
