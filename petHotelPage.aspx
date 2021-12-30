<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="petHotelPage.aspx.cs" Inherits="PE_Final_Assignment.petHotelPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="margin-top: 7rem">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        </div>
    <div class="carousel-inner">
        <div class="carousel-item active" align="center">
            <asp:Image CssClass="hotelHeaderImg" ImageUrl="~/images/petHotelHeader.jpeg" runat="server"/>
        </div>
        <div class="carousel-item" align="center">
            <asp:Image CssClass="hotelHeaderImg" ImageUrl="~/images/petHotel.jpeg" runat="server"/>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

    <div class="container">
        <div class="row" style="border-bottom: 2px dashed #8b0000; margin-top: 7rem">
            <div class="col-lg-12" align="center">
                <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">Pet Hotels</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8" style="text-align: justify">
                    <p class="p-2">Started from humble beginnings, we have accumulated a vast experience in pet hospitality, especially for senior care and medical care. Our passion for pets is driven by the unfailing relationship bond with pets, as pets are much more appreciative than humans do. 
                        We provide hospitality so that pet owners can feel assured that the pets are well monitored and cared when they are not at home. In fact, we have built trusts with many pets per our record. Many pets repeatedly enjoy our service from puppy, kitten to senior. We are committed, responsible and serious with pet care. </p> 
                </div>
            </div>
		</div>
    </div>

<h1 class="mt-3 p-2" style="font-family: coiny; font-size: 3rem" align="center">Plan</h1>
<div id="hotelDetails" class="hotelDetails" runat="server">
    <h2 class="text-center" style="font-family: coiny">Dog Hotel</h2>
    <div class="flexBox">
        <div class="planDiv">
            <asp:Label ID="hotelTypeDogBasic" class="planHotelType" runat="server">Basic Room</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotelDogBasic.jpg" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureDogBasic" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeDogBasic" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceDogBasic" runat="server"></asp:Label>
                <asp:Button id="buttonDogBasic" class="requestButton" runat="server" Text="Request" OnClick="buttonDogBasic_Click"/>
            </div>
        </div>
        <div class="planDiv">
            <asp:Label ID="hotelTypeDogDeluxe" class="planHotelType" runat="server">Deluxe Room</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotelDogDeluxe.jpg" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureDogDeluxe" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeDogDeluxe" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceDogDeluxe" runat="server"></asp:Label>
                <asp:Button id="buttonBogDeluxe" class="requestButton" runat="server" Text="Request" OnClick="buttonBogDeluxe_Click"/>
            </div>
        </div>
        <div class="planDiv">
            <asp:Label ID="hotelTypeDogRoyal" class="planHotelType" runat="server">Royal Suite</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotelDogRoyal.JPG" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureDogRoyal" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeDogRoyal" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceDogRoyal" runat="server"></asp:Label>
                <asp:Button id="buttonBogRoyal" class="requestButton" runat="server" Text="Request" OnClick="buttonBogRoyal_Click"/>
            </div>
        </div>
    </div>

    <h2 class="text-center" style="font-family: coiny; margin-top:3rem">Cat Hotel</h2>
    <div class="flexBox margin-bottom-6">
        <div class="planDiv">
            <asp:Label ID="hotelTypeCatBasic" class="planHotelType" runat="server">Basic Room</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotel2.jpeg" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureCatBasic" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeCatBasic" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceCatBasic" runat="server"></asp:Label>
                <asp:Button id="buttonCatBasic" class="requestButton" runat="server" Text="Request" OnClick="buttonCatBasic_Click"/>
            </div>
        </div>
        <div class="planDiv">
            <asp:Label ID="hotelTypeCatDeluxe" class="planHotelType" runat="server">Deluxe Room</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotelCatDeluxe.jpg" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureCatDeluxe" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeCatDeluxe" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceCatDeluxe" runat="server"></asp:Label>
                <asp:Button id="buttonCatDeluxe" class="requestButton" runat="server" Text="Request" OnClick="buttonCatDeluxe_Click"/>
            </div>
        </div>
        <div class="planDiv">
            <asp:Label ID="hotelTypeCatRoyal" class="planHotelType" runat="server">Royal Suite</asp:Label><br /><br />
            <asp:Image CssClass="hotelSectionImg" ImageUrl="~/images/petHotelCatRoyal.jpg" runat="server"/><br />
            <div class="planItems">
                <br /><span class="planSubTitle">Highlight features:</span><br />
                <asp:Label ID="hotelFeatureCatRoyal" runat="server"></asp:Label><br />
            </div>
            <div class="planItems">
                <br /><span class="planSubTitle">Size:</span>
                <asp:Label ID="hotelSizeCatRoyal" runat="server"></asp:Label>
                <span class="planSubTitle tab">Price:</span>
                <asp:Label ID="hotelPriceCatRoyal" runat="server"></asp:Label>
                <asp:Button id="buttonCatRoyal" class="requestButton" runat="server" Text="Request" OnClick="buttonCatRoyal_Click"/>
            </div>
        </div>
    </div>
</div>

</asp:Content>
