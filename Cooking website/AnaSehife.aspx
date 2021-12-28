<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnaSehife.aspx.cs" Inherits="Cooking_website.AnaSehife" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Height="339px" Width="671px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <a href="Comments.aspx?Meal_ID=<%#Eval("Meal_Id") %>"> <strong>Yeməyin adı:</strong><asp:Label ID="Label9" runat="server" Text='<%# Eval("Meal_Name") %>'></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tərkibi:</strong><asp:Label ID="Label10" runat="server" Text='<%# Eval("Meal_Content") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Hazırlanma qaydası:</strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("Meal_recipe") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarix:</strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("Meal_Date") %>'></asp:Label>
                        <strong>Xal:</strong><asp:Label ID="Label13" runat="server" Text='<%# Eval("Meal_Score") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
