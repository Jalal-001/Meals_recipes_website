<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Haqqimizda.aspx.cs" Inherits="Cooking_website.Haqqimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("About_Content") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="245px" ImageUrl="~/İmages/002.jpg" Width="674px" />
    <br />
</asp:Content>
