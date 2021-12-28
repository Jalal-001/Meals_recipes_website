<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Cooking_website.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 119px;
            text-align: right;
            height: 28px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style8 {
            width: 119px;
            text-align: right;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style12 {
            width: 119px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="Page_Load" Width="663px">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Comment_Name_Surname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Comment_Content") %>'></asp:Label>
                                    -<asp:Label ID="Label6" runat="server" Text='<%# Eval("Comment_Date") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    <div style="background-color:#ffffff" >Şərhlər:</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Mail:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Şərh</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Şərh Əlavə Et" Width="260px" CssClass="btn" Font-Bold="True" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
