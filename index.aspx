<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PE_Final_Assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="margin-top: 1rem">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" align="center">
      <img src="images/pet.jpeg" alt="img1" style="width: 95%">
    </div>
    <div class="carousel-item" align="center">
      <img src="images/petHotel1.jpeg" alt="img2" style="width: 95%">
    </div>
    <div class="carousel-item" align="center">
      <img src="images/petHotel2.jpeg" alt="img3" style="width: 95%">
    </div>
    <div class="carousel-item" align="center">
      <img src="images/grooming-spa1.jpeg" alt="img4" style="width: 95%">
    </div>
    <div class="carousel-item" align="center">
      <img src="images/grooming-spa2.jpeg" alt="img5" style="width: 95%">
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

<div class="container" style="margin-top: 6rem; padding-bottom: 5rem" align="center">
	<div class="servicesProvided" align="center" style="padding-bottom: 2rem">
        <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">Our Services</h1>
    </div>
		<div class="row justify-content-md-around">
			<div class="services col-6 col-md-4">
				<div class="serviceImage">
					<asp:ImageButton ID="petShopButton" runat="server" imageUrl="images/petShop.jpeg" style="height: 22rem; width: 22rem" OnClick="petShopButton_Click"/>
				</div>
				  <div class="middle" align="center">
					<h2 style="font-family: quicksand_bold" class="text">Pet Shop</h2>
				  </div>
			</div>
			
			<div class="services col-6 col-md-4">
			    <div class="serviceImage">
					<asp:ImageButton ID="petHotelButton" runat="server" imageUrl="images/petHotel.jpeg" style="height: 22rem; width: 22rem" OnClick="petHotelButton_Click"/>
				</div>
				  <div class="middle" align="center">
					<h2 style="font-family: quicksand_bold" class="text">Pet Hotel</h2>
				  </div>
			</div>
			
			<div class="services col-6 col-md-4">
				<div class="serviceImage">
					<asp:ImageButton ID="petGroomingButton" runat="server" imageUrl="images/petCare.jpeg" style="height: 22rem; width: 22rem" OnClick="petGroomingButton_Click"/>
				</div>
				  <div class="middle" align="center">
					<h2 style="font-family: quicksand_bold" class="text">Pet Grooming</h2>
				  </div>
			</div>
		</div>
	</div>
</asp:Content>
