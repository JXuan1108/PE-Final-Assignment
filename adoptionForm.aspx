<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adoptionForm.aspx.cs" Inherits="PE_Final_Assignment.adoptionForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page">
        <div class="feedback_form" style="margin: 2rem; padding-left: 3rem; padding-right: 3rem">
            <div class="row">
                <div class="col" style="font-weight: 600; text-transform: uppercase; border-bottom: 1px solid #e1e1e1; padding-bottom: 0.5rem;">
                    <h2 style="font-family: quicksand_bold">Adoption Form</h2>
                </div>
            </div>

            <div class="row" style="margin-top: 2rem">
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
                    <label style="font-size: 1.2rem">Why do you want to adopt this pet? What are your experiences in pet caring?</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="reasonText" runat="server" placeholder="Write your reasons here" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reasonRequiredFieldValidator" ControlToValidate="reasonText" ErrorMessage="Please enter your reason.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 20px">
                <div class="form-group d-grid gap-2">
                    <asp:Button class="btn btn-primary" ID="submitForm" runat="server" Text="Submit" ValidationGroup="Validate" OnClick="submitForm_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
