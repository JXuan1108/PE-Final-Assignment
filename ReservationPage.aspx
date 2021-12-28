<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="PE_Final_Assignment.ReservationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page">

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
                                <asp:Label ID="DateLabel" runat="server" Text="Reservation Date"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="ReservationDate" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                
                            <div id="dogForm" runat="server">
                                <asp:Label ID="dogSizeLabel" runat="server" Text="Dog Size"></asp:Label>
                                <asp:DropDownList ID="dogSizeDDL" CssClass="form-control" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="0">Small</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">Medium</asp:ListItem>
                                    <asp:ListItem Value="2">Large</asp:ListItem>
                                    <asp:ListItem Value="3">Ex-Large</asp:ListItem>
                                </asp:DropDownList> <br />

                                <asp:CheckBox ID="dogBathCb" runat="server" AutoPostBack="True" Text="Bath" />
                                <br />
                                <asp:CheckBox ID="dogCutCb" runat="server" AutoPostBack="True" Text="Cut" />
                                <br />

                                <asp:CheckBox ID="dogAromaCb" runat="server" AutoPostBack="True" Text="Aromatheraphy System" />
                                <br />

                                <asp:CheckBox ID="dogMassageCb" runat="server" AutoPostBack="True" Text="Aroma Oil Massage"/>
                                <br />

                                <asp:CheckBox ID="dogTickCb" runat="server" AutoPostBack="True" Text="Tick Treatment" />
                                <br />

                                <asp:CheckBox ID="dogSciCutCb" runat="server" AutoPostBack="True" Text="Scissor Cut" />
                                <br />

                                <asp:CheckBox ID="dogDetanglingCb" runat="server" AutoPostBack="True" Text="Detangling" />
                                <br />

                                <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                <asp:Button ID="dogSubmitBtn" CssClass="btn btn-primary " runat="server" Text="Reserve Now" OnClick="dogSubmitBtn_Click" />
                                </div>
                                </div>

                                <div id="catForm" runat="server">
                                <br />
                                <asp:CheckBox ID="catBathCb" runat="server" AutoPostBack="True" Text="Bath" />
                                <br />

                                <asp:CheckBox ID="catCutCb" runat="server" AutoPostBack="True" Text="Cut"/>
                                <br />

                                <asp:CheckBox ID="catTickCb" runat="server" AutoPostBack="True" Text="Tick Treatment" />
                                <br />

                                <asp:CheckBox ID="catSciCutCb" runat="server" AutoPostBack="True" Text="Scissor Cut"/>
                                <br />

                                <asp:CheckBox ID="catDetanglingCb" runat="server" AutoPostBack="True" Text="Detangling" />
                                <br />

                                <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                    <asp:Button ID="catSubmitBtn" CssClass="btn btn-primary" runat="server" Text="Reserve Now" OnClick="catSubmitBtn_Click" />
                                </div>
                            </div>
                        </div>
                        
                        <!-- Hotel Form -->
                        <div id="hotelForm" runat="server">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label3" runat="server" Text="From:"></asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="FromDate" runat="server" TextMode="Date" AutoPostBack="True"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label ID="Label2" runat="server" Text="To:"></asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="ToDate" runat="server" TextMode="Date" AutoPostBack="True"></asp:TextBox>
                                </div>
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
