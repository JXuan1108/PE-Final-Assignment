<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contactUsPage.aspx.cs" Inherits="PE_Final_Assignment.contactUsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="border-bottom: 2px dashed #8b0000;">
            <div class="col-lg-12" align="center">
                <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">Contact Us</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8" style="text-align: justify">
                    <p class="p-2">You're not going to hit a ridiculous long phone menu when you call us. Your email isn't going to be inbox abyss. 
                    At Paws N' Claws, we provide the exception service we'd want to experience ourselves. So, please don't hesitate to contact us if you
                    have any problem.</p> 
                </div>
            </div>
		</div>
    </div>

    <div class="container map">
        <div class="map" style="position: relative; margin-top: 3rem">
            <div class="row justify-content-center" align="center">
                <div class="col-md-5">
                    <div class="map_inner" style="background-color: white; border: 3px solid black; padding-right: 1.5rem; position: absolute; top: 4.5rem; left: 30rem; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);">
                        <a class="navbar-brand" href="#" style="font-family:dooodleista; font-size: 35px; padding-top: 1.2rem; padding-bottom: 1.2rem; color: black;">
                            <img src="images/petLogo.png" style="height: 10%; width: 10%"/>
                            PAWS N' CLAWS
                        </a>
                        <ul>
                            <li style="font-size: 16px; text-align: justify">Xiamen University Malaysia, Jalan Sunsuria, <br />Bandar Sunsuria, 43900 Sepang, Selangor </li>
                        </ul>
                    </div>
                </div>
            </div>
                
            <div class="map__iframe">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.9440874000534!2d101.7047863147566!3d2.8324250979368104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdc77dffa92899%3A0x25b5e828613a7db9!2sXiamen%20University%20Malaysia!5e0!3m2!1sen!2smy!4v1640091066309!5m2!1sen!2smy" width="1300" height="500" style="border:5px solid black; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
	</div>

    <div class="container" style="margin-top: 6rem; padding-bottom: 5rem" align="center">
		<div class="row justify-content-md-center">
			<div class="col-6 col-md-4 px-0">
			    <img class="img-responsive" src="images/petSwim.jpeg" style="height: 100%; width: 100%">
			</div>
			
			<div class="col-6 col-md-4 px-0">
			    <div class="flip-card text-center">
					<div class="flip-card-inner d-flex align-content-center">
						<div class="flip-card-front">
						  <img src="images/petPortrait.jpeg" style="height: 100%; width: 100%">
						  <div class="overlayText1">
							<h3>Contact Us Now At: </h3>
							<h4 style="margin-top: 1rem"><i class="fas fa-phone-alt" style="padding-right: 1rem; font-size: 2rem;"></i>+6017-7657291</h4>
                          </div>
						</div>
						<div class="flip-card-back">
						  <img src="images/petPortrait.jpeg" style="height: 100%; width: 100%">
						  <div class="overlayText2">
							<h3>Follow Us On Facebook Now!</h3>
							<h4 style="margin-top: 1rem"><a href="#"><i class="fab fa-facebook" style="padding-right: 1rem; font-size: 2rem"></i></a>Paws & Claws</h4>
						  </div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-6 col-md-4 px-0">
				<img class="img-responsive" src="images/petPlay.jpeg" style="height: 100%; width: 100%">
			</div>
		</div>
	</div>

    <div align="center" style="padding-bottom: 5rem">
        <asp:Button class="btn btn-lg btn-primary" ID="feedbackButton" runat="server" Text="Want to Submit a Feedback?" OnClick="feedbackButton_Click" />
    </div>
</asp:Content>
