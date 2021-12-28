<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminMeals.aspx.cs" Inherits="Cooking_website.AdminMeals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            width: 594px;
        }
        .auto-style13 {
            width: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="669px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Meal_Name") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="Admin_Yemekler_Yenile.aspx?Meal_Id=<%#Eval("Meal_Id") %>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İmages/icons8_backhand_index_pointing_up_48px.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
