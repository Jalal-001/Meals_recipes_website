<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminKateqoriyalar.aspx.cs" Inherits="Cooking_website.AdminKateqoriyalar" %>
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
            background-color: #666666;
        }
        .auto-style13 {
        width: 451px;
    }
    .auto-style14 {
        text-align: right;
    }
        .auto-style21 {
            width: 40px;
            }
        .auto-style22 {
            width: 100%;
            background-color: #198495;
        }
        .auto-style23 {
            width: 102px;
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
                                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
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
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                    </td>
                    <td class="auto-style14">
                      <a href="AdminKateqoriyalar.aspx?Category_iD=<%#Eval("Category_Id") %>&Emeliyyat=sil">  <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İmages/delete pnj.png" Width="40px" /></a>
                    </td>
                    <td class="auto-style14">
                        <a href="Admin_Kateqoriya_yenile.aspx?Category_ID=<%#Eval("Category_Id") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İmages/update pnj.png" Width="40px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" >
        <table class="auto-style12">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="Button3" runat="server" Text="+" Height="30px" OnClick="Button3_Click1" Width="30px" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="Button4" runat="server" Text="-" Height="30px" OnClick="Button4_Click1" Width="30px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style12">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kateqoriyanın adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="btn" Text="Kateqoriya Əlavə Et" OnClick="Button5_Click" Font-Bold="True" Height="35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
