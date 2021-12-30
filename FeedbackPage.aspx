<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="PE_Final_Assignment.FeedbackPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="feedbackHeader start-page" align="center" style="margin-top: 1rem; position: relative">
        <img src="images/feedback_header.jpeg" style="width:100%"/>
        <div class="description" style="position: absolute; top: 12rem; left: 5.5rem">
			<h1 style="font-size: 3.2rem; font-family: pacifico; font-weight: 300"><b> We'd love to <br> hear from you</b></h1>
		</div>
    </div>

    <div class="feedback_form" style="margin: 2rem; padding-left: 3rem; padding-right: 3rem">
        <div class="row">
            <div class="col" style="font-weight: 600; text-transform: uppercase; border-bottom: 1px solid #e1e1e1; padding-bottom: 0.5rem;">
                <h2 style="font-family: quicksand_bold">Customer Feedback Form</h2>
            </div>
        </div>

        <div class="row">
            <div class="col" style="margin-top: 1.5rem">
                <h4>What do you think about our service?</h4>
            </div>
        </div>

        <div class="feedback_rating" style="margin-top: 2rem">
            <input id="star1" type="radio" name="star" value="Hate It">
				<label class="emoji star1" for="star1">
				    <div class="star_rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                    </div>
                    <asp:Label ID="ratingText1" runat="server" Text="Hate It" style="margin-left: 0.5rem; font-size: 1.2rem"></asp:Label>
				</label>
				    
				<input id="star2" type="radio" name="star" value="Disliked It">
				<label class="emoji star2" for="star2">
				    <div class="star_rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                    </div>
				    <asp:Label ID="ratingText2" runat="server" Text="Disliked It" style="margin-left: 0.5rem; font-size: 1.2rem"></asp:Label>
				</label>
				    
				<input id="star3" type="radio" name="star" value="Satisfied">
				<label class="emoji star3" for="star3">
				    <div class="star_rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                    </div>
				    <asp:Label ID="ratingText3" runat="server" Text="Satisfied" style="margin-left: 0.5rem; font-size: 1.2rem"></asp:Label>
				</label>
				    
				<input id="star4" type="radio" name="star" value="Liked It">
				<label class="emoji star4" for="star4">
				    <div class="star_rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star "></span>
                    </div>
				    <asp:Label ID="ratingText4" runat="server" Text="Liked It" style="margin-left: 0.5rem; font-size: 1.2rem"></asp:Label>
				</label>
				    
				<input id="star5" type="radio" name="star" value="Loved It">
				<label class="emoji star5" for="star5">
				    <div class="star_rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                    </div>
				    <asp:Label ID="ratingText5" runat="server" Text="Loved It" style="margin-left: 0.5rem; font-size: 1.2rem"></asp:Label>
				</label>
        </div>

        <div class="row" style="margin-top: -11rem">
            <label style="font-size: 1.2rem">Name</label>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="FirstNameRequiredFieldValidator" ControlToValidate="name" ErrorMessage="Please enter your first name.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 20px">
            <label style="font-size: 1.2rem">Contact Number</label>
            <div class="form-group">
                <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="PhoneRequiredField" ControlToValidate="contact" ErrorMessage="Please enter your phone number.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="PhoneRegularExpressionValidator" runat="server"  ControlToValidate="contact" ErrorMessage="Please enter a valid phone number.<br />"  ValidationExpression="[0-9]{10}" style="margin-left: 5px" ForeColor="Red" ValidationGroup="Validate"></asp:RegularExpressionValidator>
            </div> 
        </div>

        <div class="row">
            <label style="font-size: 1.2rem">Email Address</label>
            <div class="form-group">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="EmailFieldValidator" ControlToValidate="email" ErrorMessage="Please enter your email address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format.<br />" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label style="font-size: 1.2rem">Feedback/ Review</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="feedbackText" runat="server" placeholder="Write your feedback/ review here" TextMode="MultiLine" Rows="2"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="feedbackText" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 20px">
            <div class="form-group d-grid gap-2">
                <asp:Button class="btn btn-warning" ID="submitPassword" runat="server" Text="Submit" OnClick="submitPassword_Click" ValidationGroup="Validate"/>
            </div>
        </div>
    </div>
</asp:Content>
