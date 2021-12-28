<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewReservation.aspx.cs" Inherits="PE_Final_Assignment.ViewReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 640px
        }
        .auto-style5 {
            width: 128px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page">
        <h1>Dog table</h1>
        <asp:DataList ID="dogDatalist"  runat="server" OnDeleteCommand="dogDatalist_DeleteCommand">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Services") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            
                            <asp:LinkButton ID="lbDelete" Text="Delete" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                            
                            <asp:HiddenField ID="HiddenFieldDogId" Value='<%# Eval("Id") %>' runat="server" />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />

        <h1>Cat table</h1>
        <asp:DataList ID="catDatalist" runat="server" OnDeleteCommand="catDatalist_DeleteCommand">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Services") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            
                            <asp:LinkButton ID="LinkButton1" Text="Delete" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                            
                            <asp:HiddenField ID="HiddenFieldCatId" Value='<%# Eval("Id") %>' runat="server" />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />

        <h1>Hotel table</h1>
        <asp:DataList ID="hotelDatalist" runat="server" Width="645px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style6">&nbsp;
                         <asp:LinkButton ID="LinkButton2" Text="Delete" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                            
                            <asp:HiddenField ID="HiddenFieldHotel" Value='<%# Eval("Id") %>' runat="server" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </div>

</asp:Content>
