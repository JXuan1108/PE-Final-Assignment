<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PE_Final_Assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="margin-top: 5px">
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

</asp:Content>
