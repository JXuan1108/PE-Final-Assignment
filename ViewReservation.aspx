<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewReservation.aspx.cs" Inherits="PE_Final_Assignment.ViewReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style10 {
            height: 21px;
            width: 104px;
            text-align: center;
        }
        .auto-style17 {
            width: 255px;
            text-align: center;
        }
        .auto-style20 {
            width: 319px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page min-vh-100 margin-bottom-6">
        
        <center>
            <div ID="emptyResDiv" runat="server" Visible="false">
                <asp:Label ID="tableState" runat="server" Text="No Active Reservation Record" style="font-family: coiny; font-size: 3rem" />
                <asp:Image ID="Image1" runat="server" ImageUrl="images/emptyReservation.png" style="width: 50%"/>
            </div>

            <div id="dogTable" class="dogTabDiv" runat="server">
            <h1 style="font-family: coiny; font-size: 3rem">Dog Grooming Reservation</h1>
            <asp:DataList ID="dogDatalist" runat="server" Width="85%" OnDeleteCommand="dogDatalist_DeleteCommand" BorderWidth="5px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellPadding="4" GridLines="Both">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <HeaderTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style17">Date</td>
                            <td class="auto-style17">Dog Size</td>
                            <td class="auto-style17">Services</td>
                            <td class="auto-style17">Price(RM)</td>
                            <td class="auto-style17">Action</td>
 
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Services") %>'></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:LinkButton ID="lbDelete" Text="Cancel" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                                <asp:HiddenField ID="HiddenFieldDogId" Value='<%# Eval("Id") %>' runat="server" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>
                <img src="images/dog-table.png" class="dog-abs"/>
            </div>
            <br />

            <div id="catTable" class="catTabDiv" runat="server">
                <h1 style="font-family: coiny; font-size: 3rem">Cat Grooming Reservation</h1>
                <asp:DataList ID="catDatalist" runat="server" Width="85%" OnDeleteCommand="catDatalist_DeleteCommand" BorderWidth="5px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <HeaderTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style20">Date</td>
                                <td class="auto-style20">Services</td>
                                <td class="auto-style20">Price(RM)</td>
                                <td class="auto-style20">Action</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style20">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                </td>
                                <td class="auto-style20">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Services") %>'></asp:Label>
                                </td>
                                <td class="auto-style20">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                                <td class="auto-style20">
                                    <asp:LinkButton ID="LinkButton1" Text="Cancel" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                                    <asp:HiddenField ID="HiddenFieldCatId" Value='<%# Eval("Id") %>' runat="server" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:DataList>
                <img src="images/kitten-table.png" class="kitten-abs"/>
            </div>

            <br />

            <div id="hotelTable" runat="server">
                <h1 style="font-family: coiny; font-size: 3rem">Pet Hotel Reservation</h1>
                <asp:DataList ID="hotelDatalist" runat="server" Width="85%" OnDeleteCommand="hotelDatalist_DeleteCommand" BorderWidth="5px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle Font-Bold="True" BackColor="#990000" ForeColor="#FFFFCC" />
                    <HeaderTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style10">From date</td>
                                <td class="auto-style10">To date</td>
                                <td class="auto-style10">Pet type</td>
                                <td class="auto-style10">Hotel type</td>
                                <td class="auto-style10">Price(RM)</td>
                                <td class="auto-style10">Action</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("FromDate") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("ToDate") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("HotelPet") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("HotelType") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:LinkButton ID="LinkButton2" Text="Cancel" CommandName="Delete" runat="server" PostBackUrl="~/ViewReservation.aspx"></asp:LinkButton>
                                    <asp:HiddenField ID="HiddenFieldHotelId" Value='<%# Eval("Id") %>' runat="server" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:DataList>
            </div>
        </center>
        <br />
    </div>
</asp:Content>
