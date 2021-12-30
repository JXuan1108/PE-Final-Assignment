<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="PE_Final_Assignment.ReservationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 232px;
        }
        .auto-style2 {
            width: 121px;
            text-align: justify;
        }
        .auto-style4 {
            width: 121px;
        }
        .auto-style5 {
            width: 232px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page margin-bottom-6">
        <div ID="hotelBc" class="d-grid bc box-shadow1" runat="server">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:LinkButton ID="lbHotelBc" runat="server" PostBackUrl="~/petHotelPage.aspx">Hotel</asp:LinkButton>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Reservation</li>
                </ol>
            </nav>
        </div>
        <div ID="groomBc" class="d-grid bc box-shadow1" runat="server">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:LinkButton ID="lbGroomBc" runat="server" PostBackUrl="~/petGroomingPage.aspx">Groom Services</asp:LinkButton>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Reservation</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <!-- Image -->
            <div class="col">
                <asp:Image ID="servicePricesImgHolder" CssClass="serviceImg" runat="server" />
            </div>
            <div class="col">
                <div class="card box-shadow1">
                    <div class="card-body">
                        <div class="groomServiceForm">
                            <asp:Label ID="ServicePrice" runat="server"></asp:Label> <br /> 

                            <!-- Reservation Date For Groom Services Only -->
                            <div ID="dateGroomDiv" runat="server">
                                <asp:Label ID="DateLabel" runat="server" Text="Reservation Date" Font-Bold="True"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="ReservationDate" runat="server" TextMode="Date" AutoPostBack="true" OnTextChanged="ReservationDate_TextChanged"></asp:TextBox>
                            </div>
                            <br />
                            <div id="dogForm" runat="server">
                                <asp:Label ID="dogSizeLabel" runat="server" Text="Dog Size" Font-Bold="True"></asp:Label>
                                <asp:DropDownList ID="dogSizeDDL" CssClass="form-control" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="0">Small</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">Medium</asp:ListItem>
                                    <asp:ListItem Value="2">Large</asp:ListItem>
                                    <asp:ListItem Value="3">Ex-Large</asp:ListItem>
                                </asp:DropDownList> <br />
                                <table>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label Text="Main Services" runat="server" Font-Bold="True" /> </td>
                                        <td class="auto-style1">
                                        <asp:CheckBox ID="dogBathCb" runat="server" AutoPostBack="True" Text="&nbsp;Bath" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="dogCutCb" runat="server" AutoPostBack="True" Text="&nbsp;Cut" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label Text="Upgrade" runat="server" Font-Bold="True" />
                                        </td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="dogAromaCb" runat="server" AutoPostBack="True" Text="&nbsp;Aromatheraphy System" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label Text="Add-on" runat="server" Font-Bold="True" />
                                        </td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="dogMassageCb" runat="server" AutoPostBack="True" Text="&nbsp;Aroma Oil Massage"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label Text="Others" runat="server" Font-Bold="True" />
                                        </td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="dogTickCb" runat="server" AutoPostBack="True" Text="&nbsp;Tick Treatment" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">
                                             <asp:CheckBox ID="dogSciCutCb" runat="server" AutoPostBack="True" Text="&nbsp;Scissor Cut" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="dogDetanglingCb" runat="server" AutoPostBack="True" Text="&nbsp;Detangling" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                    <asp:Button ID="dogSubmitBtn" CssClass="btn btn-primary " runat="server" Text="Reserve Now" OnClick="dogSubmitBtn_Click" />
                                </div>
                            </div>

                                <!--Cat Reservation Form -->
                            <div id="catForm" runat="server">
                                <table>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label Text="Main Services" runat="server" Font-Bold="True" ID="Label8" /> </td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="catBathCb" runat="server" AutoPostBack="True" Text="&nbsp;Bath" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="catCutCb" runat="server" AutoPostBack="True" Text="&nbsp;Cut"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label Text="Others" runat="server" Font-Bold="True" ID="Label9" />
                                        </td>
                                        <td class="auto-style5">
                                            <asp:CheckBox ID="catTickCb" runat="server" AutoPostBack="True" Text="&nbsp;Tick Treatment" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="catSciCutCb" runat="server" AutoPostBack="True" Text="&nbsp;Scissor Cut"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:CheckBox ID="catDetanglingCb" runat="server" AutoPostBack="True" Text="&nbsp;Detangling" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                    <asp:Button ID="catSubmitBtn" CssClass="btn btn-primary" runat="server" Text="Reserve Now" OnClick="catSubmitBtn_Click" />
                                </div>
                            </div>
                        </div>
                        <!-- Hotel Form -->
                        <div id="hotelForm" runat="server">
                            <asp:Label Text="Select dates: (From - To) " runat="server" />
                            <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                <asp:Calendar ID="HotelCalendar" runat="server" OnDayRender="HotelCalendar_DayRender" OnSelectionChanged="HotelCalendar_SelectionChanged" BackColor="#F9F2EC" EnableTheming="True">
                                    <DayHeaderStyle BackColor="#CC9766" />
                                    <SelectedDayStyle BackColor="#e69900" ForeColor="Black" Font-Bold="true" />
                                    <TitleStyle BackColor="#E6CCB3" />
                                </asp:Calendar>                            
                            </div>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Pet type:"></asp:Label>
                            <asp:Label ID="petTypeL" runat="server"></asp:Label><br />
                            <asp:Label ID="Label5" runat="server" Text="Hotel Type:"></asp:Label>
                            <asp:Label ID="hotelTypeL" runat="server"></asp:Label>
                            <asp:Label ID="hotelTypeRoomL" runat="server"></asp:Label><br />
                            <asp:Label ID="Label7" runat="server" Text="Price/day:"></asp:Label>
                            <asp:Label ID="priceRateL" runat="server"></asp:Label><br />
                            <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                <asp:Button ID="hotelSubmitBtn" CssClass="btn btn-primary" runat="server" Text="Reserve Now" OnClick="hotelSubmitBtn_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>