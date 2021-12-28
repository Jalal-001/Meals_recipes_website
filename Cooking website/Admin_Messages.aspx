<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Messages.aspx.cs" Inherits="Cooking_website.Admin_Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
            width: 40px;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style12">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="669px">
                <ItemTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Connect_Name_Surname") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                               <a href="Admin_Mess_Show.aspx?Connect_Id=<%#Eval("Connect_Id")%>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İmages/icons8_info_30px.png" Width="40px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        
</asp:Content>

