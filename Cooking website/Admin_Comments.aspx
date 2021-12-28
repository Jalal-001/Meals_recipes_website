<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Comments.aspx.cs" Inherits="Cooking_website.Admin_Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style12 {
        width: 100%;
    }
        .auto-style14 {
            height: 34px;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            width: 532px;
        }
        .auto-style17 {
            margin-left: 0px;
        }
        .auto-style18 {
            width: 41px;
            height: 34px;
        }
        .auto-style19 {
            height: 34px;
            width: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button5" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button5_Click1" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button6_Click1" CssClass="auto-style17" />
                </td>
            </tr>
            <tr>
                <td colspan="2">Təstiqlənən Şərhlər</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="669px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Comment_Name_Surname") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                          <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İmages/delete pnj.png" Width="40px" />
                        </td>
                        <td class="auto-style15">
                          <a href="Admin_Comments_Update.aspx?Comment_Id=<%#Eval("Comment_Id") %>">  <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İmages/update pnj.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="Button7" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button7_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style17" Height="30px" Text="-" Width="30px" OnClick="Button8_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">Təstiqlənməyən Şərhlər</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="664px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Comment_Name_Surname") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/İmages/delete pnj.png" Width="40px" />
                        </td>
                        <td class="auto-style15">
                             <a href="Admin_Comments_Update.aspx?Comment_Id=<%#Eval("Comment_Id") %>"><asp:Image ID="Image5" runat="server" Height="40px" ImageUrl="~/İmages/update pnj.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
