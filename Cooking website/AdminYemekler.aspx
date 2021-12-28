<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminYemekler.aspx.cs" Inherits="Cooking_website.AdminYemekler" %>
<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
    }
        .auto-style15 {
            width: 83px;
        }
        .auto-style16 {
            width: 804%;
        }
        .auto-style17 {
            width: 40px;
            height: 34px;
            text-align: left;
        }
        .auto-style18 {
            height: 34px;
            text-align: left;
        }
        .auto-style19 {
            height: 34px;
            width: 511px;
            color: #FFFFFF;
        }
        .auto-style20 {
            background-color: #198495;
        }
        .auto-style13 {
        width: 541px;
            height: 48px;
        }
        .auto-style22 {
            width: 100%;
            height: 44px;
        }
        .auto-style23 {
            text-align: right;
            height: 48px;
        }
        .auto-style24 {
        height: 29px;
    }
    .auto-style25 {
        height: 26px;
    }
        .auto-style26 {
            width: 40px;
            text-align: left;
        }
        .auto-style27 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style20">
    <strong>
        <table class="auto-style22">
            <tr>
                <td class="auto-style15">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                            </td>
                            <td class="auto-style19">Kateqoriya Siyahısı</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </strong></asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="671px">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Meal_Name") %>'></asp:Label>
                    </td>
                    <td>
                     <a href="AdminYemekler.aspx?Meal_Id=<%#Eval("Meal_Id") %>&Emeliyyat=Delete"> <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/İmages/delete pnj.png" Width="40px" /></a>
                    </td>
                    <td class="auto-style23">
                   <a href="Admin_Yemekler_Yenile.aspx?Meal_ID=<%# Eval("Meal_Id") %>"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İmages/update pnj.png" Width="40px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style26">
                    <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="-" Width="30px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td>Yeməyin adı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Tərkibi:</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Height="200px" Width="350px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hazırlanma qaydası:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txt" Height="200px" Width="350px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kateqoriyası:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" Width="360px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btn" Height="50px" Text="Əlavə Et" Width="250px" Font-Bold="True" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
    </asp:Content>
