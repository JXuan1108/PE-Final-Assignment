<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="PE_Final_Assignment.ReservationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container stp">
        <div class="row">
            <div class="col">
                <asp:Image ID="servicePricesImgHolder" CssClass="serviceImg" runat="server" />
            </div>

            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <asp:Label ID="ServicePrice" runat="server"></asp:Label> <br /> 

                        <!-- Reservation Date -->
                        <asp:Label ID="DateLabel" runat="server" Text="Reservation Date"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="ReservationDate" runat="server" TextMode="Date"></asp:TextBox>

                
                        <div id="dogForm" runat="server">
                            <asp:Label ID="dogSizeLabel" runat="server" Text="Dog Size"></asp:Label>
                            <asp:DropDownList ID="dogSizeDDL" CssClass="form-control" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">Small</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Medium</asp:ListItem>
                                <asp:ListItem Value="2">Large</asp:ListItem>
                                <asp:ListItem Value="3">Ex-Large</asp:ListItem>
                            </asp:DropDownList> <br />

                            <asp:CheckBox ID="dogBathCb" runat="server" AutoPostBack="True" />
                            <asp:Label ID="dogBathL" runat="server" Text="Bath"></asp:Label>
                             <br />

                            <asp:CheckBox ID="dogCutCb" runat="server" AutoPostBack="True"/> 
                            <asp:Label ID="dogCutL" runat="server" Text="Cut"></asp:Label>
                            <br />

                            <asp:CheckBox ID="dogAromaCb" runat="server" AutoPostBack="True"/> 
                            <asp:Label ID="dogAromaL" runat="server" Text="Aromatheraphy System"></asp:Label>
                            <br />

                            <asp:CheckBox ID="dogMassageCb" runat="server" AutoPostBack="True"/> 
                            <asp:Label ID="dogMassageL" runat="server" Text="Aroma Oil Massage"></asp:Label>
                            <br />

                            <asp:CheckBox ID="dogTickCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="dogTickL" runat="server" Text="Tick Treatment"></asp:Label>
                            <br />

                            <asp:CheckBox ID="dogSciCutCb" runat="server"  AutoPostBack="True" /> 
                            <asp:Label ID="dogSciCutL" runat="server" Text="Scissor Cut"></asp:Label>
                            <br />

                            <asp:CheckBox ID="dogDetanglingCb" runat="server"  AutoPostBack="True" />
                            <asp:Label ID="dogDetanglingL" runat="server" Text="Detangling"></asp:Label>
                            <br />

                            <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                <asp:Button ID="dogSubmitBtn" CssClass="btn btn-primary " runat="server" Text="Reserve Now" OnClick="dogSubmitBtn_Click" />
                            </div>
                        </div>

                        <div id="catForm" runat="server">
                            <br />
                            <asp:CheckBox ID="catBathCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="catBathL" runat="server" Text="Bath"></asp:Label>
                            <br />

                            <asp:CheckBox ID="catCutCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="catCutL" runat="server" Text="Cut"></asp:Label>
                            <br />

                            <asp:CheckBox ID="catTickCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="catTickL" runat="server" Text="Tick Treatment"></asp:Label>
                            <br />

                            <asp:CheckBox ID="catSciCutCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="catSciCutL" runat="server" Text="Scissor Cut"></asp:Label>
                            <br />

                            <asp:CheckBox ID="catDetanglingCb" runat="server" AutoPostBack="True" /> 
                            <asp:Label ID="catDetanglingL" runat="server" Text="Detangling"></asp:Label>
                            <br />

                            <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                <asp:Button ID="catSubmitBtn" CssClass="btn btn-primary" runat="server" Text="Reserve Now" OnClick="catSubmitBtn_Click" />
                            </div>
                        </div>
                <!-- Add here-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
