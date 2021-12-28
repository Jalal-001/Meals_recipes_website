<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemeyi.aspx.cs" Inherits="Cooking_website.GununYemeyi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 27px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" CssClass="auto-style5">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td><span class="auto-style3"><strong>Günün Yeməyi:</strong></span><asp:Label ID="Label3" runat="server" Text='<%# Eval("Meal_Name") %>' CssClass="auto-style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td><span class="auto-style3"><strong>Tərkibi:</strong></span><asp:Label ID="Label4" runat="server" Text='<%# Eval("Meal_Content") %>' CssClass="auto-style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"><span class="auto-style3">H<strong>azırlanma qaydası:</strong></span><asp:Label ID="Label5" runat="server" Text='<%# Eval("Meal_recipe") %>' CssClass="auto-style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="255px" ImageUrl='<%# Eval("Meal_Image") %>' style="text-align:center" Width="671px" CssClass="auto-style3" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
