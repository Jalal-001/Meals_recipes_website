 <%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Offer.aspx.cs" Inherits="Cooking_website.Admin_Offer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
    }
    .auto-style11 {
            text-align: right;
            height: 34px;
        }
        .auto-style13 {
            width: 588px;
            height: 34px;
        }
    .auto-style12 {
        width: 623px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style13">TƏSTİQLƏNMƏYƏN TƏKLİFLƏR:</td>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style10" >
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Recipe_Name") %>'></asp:Label>
                        </td>
                        <td class="auto-style11"><a href="Admin_Offer_Confirm.aspx?Recipe_Id=<%#Eval("Recipe_Id") %>">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İmages/icons8_backhand_index_pointing_up_48px.png" Width="40px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <table class="auto-style10">
        <tr>
            <td class="auto-style13">TƏSTİQ OLUNMUŞ TƏKLİFLƏR:</td>
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style10" >
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Recipe_Name") %>'></asp:Label>
                        </td>
                        <td class="auto-style11"><a href="Admin_Offer_Confirm.aspx?Recipe_Id=<%#Eval("Recipe_Id") %>">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İmages/icons8_backhand_index_pointing_up_48px.png" Width="40px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
