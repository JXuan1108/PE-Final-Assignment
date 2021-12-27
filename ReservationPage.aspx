<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="PE_Final_Assignment.ReservationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <asp:Image ID="servicePricesImgHolder" CssClass="serviceImg" runat="server" />
            </div>
            <div class="col">
                <div id="dogForm" runat="server">
                    <asp:Label ID="ServicePrice" runat="server"></asp:Label> <br /> 
                    <!-- Reservation Date -->
                    <asp:TextBox CssClass="form-control" ID="ReservationDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="dogSizeLabel" runat="server" Text="Dog Size"></asp:Label>
                    <asp:DropDownList ID="dogSizeDDL" CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Small</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">Medium</asp:ListItem>
                        <asp:ListItem Value="2">Large</asp:ListItem>
                        <asp:ListItem Value="3">Ex-Large</asp:ListItem>
                    </asp:DropDownList> <br />

                    <asp:Label ID="dogBathL" runat="server" Text="Bath"></asp:Label>
                    <asp:CheckBox ID="dogBathCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="dogCutL" runat="server" Text="Cut"></asp:Label>
                    <asp:CheckBox ID="dogCutCb" runat="server" AutoPostBack="True"/> <br />

                    <asp:Label ID="dogAromaL" runat="server" Text="Aromatheraphy System"></asp:Label>
                    <asp:CheckBox ID="dogAromaCb" runat="server" AutoPostBack="True"/> <br />

                    <asp:Label ID="dogMassageL" runat="server" Text="Aroma Oil Massage"></asp:Label>
                    <asp:CheckBox ID="dogMassageCb" runat="server" AutoPostBack="True"/> <br />

                    <asp:Label ID="dogTickL" runat="server" Text="Tick Treatment"></asp:Label>
                    <asp:CheckBox ID="dogTickCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="dogSciCutL" runat="server" Text="Scissor Cut"></asp:Label>
                    <asp:CheckBox ID="dogSciCutCb" runat="server"  AutoPostBack="True" /> <br />

                    <asp:Label ID="dogDetanglingL" runat="server" Text="Detangling"></asp:Label>
                    <asp:CheckBox ID="dogDetanglingCb" runat="server"  AutoPostBack="True" /> <br />

                    <asp:Button ID="dogSubmitBtn" runat="server" Text="Reserve Now" OnClick="dogSubmitBtn_Click" />
                </div>

                <div id="catForm" runat="server">
                    <asp:Label ID="Label2" runat="server"></asp:Label> <br /> 
                    <!-- Reservation Date -->
                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="catBathL" runat="server" Text="Bath"></asp:Label>
                    <asp:CheckBox ID="catBathCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="catCutL" runat="server" Text="Cut"></asp:Label>
                    <asp:CheckBox ID="catCutCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="catTickL" runat="server" Text="Tick Treatment"></asp:Label>
                    <asp:CheckBox ID="catTickCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="catSciCutL" runat="server" Text="Scissor Cut"></asp:Label>
                    <asp:CheckBox ID="catSciCutCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Label ID="catDetanglingL" runat="server" Text="Detangling"></asp:Label>
                    <asp:CheckBox ID="catDetanglingCb" runat="server" AutoPostBack="True" /> <br />

                    <asp:Button ID="catSubmitBtn" runat="server" Text="Reserve Now" OnClick="catSubmitBtn_Click" />
                </div>
                <div id="hotelForm" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="From:"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    
                    <asp:Label ID="Label4" runat="server" Text="To:"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                    
                    <asp:Label ID="Label1" runat="server" Text="Pet type:"></asp:Label>
                    <asp:Label ID="petTypeL" runat="server"></asp:Label><br />

                    <asp:Label ID="Label5" runat="server" Text="Hotel Type:"></asp:Label>
                    <asp:Label ID="hotelTypeL" runat="server"></asp:Label><br />

                    <asp:Label ID="Label7" runat="server" Text="Price/day:"></asp:Label>
                    <asp:Label ID="priceRateL" runat="server"></asp:Label><br />

                    <asp:Button ID="hotelSubmitBtn" runat="server" Text="Reserve Now" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>
