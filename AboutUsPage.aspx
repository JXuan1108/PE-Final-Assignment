<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="PE_Final_Assignment.AboutUsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="AboutUs.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="feedbackHeader stp" align="center" style="margin-top: 1rem; position: relative">
    <img src="images/aboutUs.jpeg" style="width: 95%"/>
    <div class="description col-md-5" style="position: absolute; top: 12rem; left: 4rem; background-color: rgba(255, 255, 255, 0.7); padding: 1.5rem 1.5rem 0.5rem 1.5rem" >
		<h1 style="font-family: coiny; font-size: 3rem">About Us</h1>
			 
		<h3 style="border-top-style: double; border-bottom-style: double; line-height: 2.8rem">PETS ARE FAMILY TOO!</h3>
					
		<p style="text-align: justify; line-height: 1.8rem">
			We are Paws N’ Claws, an ultimate pet destination built exclusively for urban dogs and cats around Xiamen University Malaysia. 
			As lifelong animal lovers, we believe that every pet is special to its owner. They enrich our lives daily and provide us with 
			a unique companionship that other connections in our lives cannot provide. In our absence, our special friends deserve the best 
			caregivers we can find and a clean and secure environment. Therefore, at Paws N’ Claws, we are committed to giving responsible 
			pet owners peace of mind by providing safe, clean, and comfortable facilities staffed by knowledgeable, animal-loving professionals! 
			We also offer affordable grooming services to help pets stay in top condition. In addition to pet care services, we also aim to help 
			pets find their new destined owners.
		</p>
	</div>
</div>

<div class="container whyus" style="margin-top: 4rem">
	<div class="row  d-flex justify-content-center" style="padding-bottom: 2rem">
		<div class="col-lg-12" align="center" >
            <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">What Make Us Different?</h1>
        </div>
	</div>
	<div class="row align-content-center" >
		<div class="col-md">
			<div class="whyus-button">
				<div class="bttn d-flex justify-content-center" style="padding-top: 0.7rem;">
					<h4>01</h4>
					<p>Cheap and affordable</p>
				</div>
			</div>
		</div>
			
		<div class="col-md">
			<div class="whyus-button">
				<div class="bttn d-flex justify-content-center" style="padding-top: 0.7rem;">
					<h4>02</h4>
					<p>24-hour on <br />site care</p>
				</div>
			</div>
		</div>
			
		<div class="col-md">
			<div class="whyus-button">
				<div class="bttn d-flex justify-content-center">
					<h4>03</h4>
					<p>Professional full-time caretaker</p>
				</div>
			</div>
		</div>
			
		<div class="col-md">
			<div class="whyus-button">
				<div class="bttn d-flex justify-content-center">
					<h4>04</h4>
					<p>Treat all pets<br /> as if they<br /> were ours</p>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-team" style="margin-top: 4rem">
	<div class="row d-flex justify-content-center" style="padding-bottom: 2rem">
		<div class="col-lg-12" align="center" >
            <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">Our Team</h1>
        </div>
	</div>
		
	<div class="row d-flex justify-content-center" style="margin-left: 4rem; padding-bottom: 5rem">
		<div class="col-lg-3">
			<div class="team-profile1" >
				<img src="images/img_jx.jpeg">
				<div class="team-profile-text1">
					<h2>Chen Jia Xuan</h2>
					<p>Boss</p>
					<ul class="social">
                            <li><a href="https://www.facebook.com/chen.xuan.313"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="https://instagram.com/jiaxuan_0811?utm_medium=copy_link"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
				</div>
			</div>
		</div>
			
		<div class="col-lg-3">
			<div class="team-profile2" >
				<img src="images/img_alvin.jpeg">
				<div class="team-profile-text2">
					<h2>Alvin Yeoh</h2>
					<p>Caretaker</p>
					<ul class="social">
                            <li><a href="https://www.facebook.com/vinnn00"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/im_vinnn/"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
				</div>
			</div>
		</div>
			
		<div class="col-lg-3">
			<div class="team-profile1" >
				<img src="images/img_yw.jpeg">
				<div class="team-profile-text1 ">
					<h2>Ng Yoo Wee</h2>
					<p>Cashier</p>
					<ul class="social">
                            <li><a href="https://www.facebook.com/yoowee.ng"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/dalious_ng/"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
				</div>
			</div>
		</div>
	</div>
</div>
</asp:Content>
