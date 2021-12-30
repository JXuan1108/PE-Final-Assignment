<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PE_Final_Assignment.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page margin-bottom-6" style="margin-top: 10px; padding-bottom: 50px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box-shadow1">
                    <div class="card-body">
                        <div class="row">
                            <div class="col" align="center">
                                <img src="images/userIcon.png" style="width: 150px"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" align="center">
                                <h3>Sign Up</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" align="center">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="firstName" runat="server" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="FirstNameRequiredFieldValidator" ControlToValidate="firstName" ErrorMessage="Please enter your first name.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="lastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="LastNameRequiredFieldValidator" ControlToValidate="lastName" ErrorMessage="Please enter your last name.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Date" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="DateRequiredFieldValidator" ControlToValidate="lastName" ErrorMessage="Please select your birthdate.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Mobile Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="PhoneRequiredField" ControlToValidate="contact" ErrorMessage="Please enter your phone number.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PhoneRegularExpressionValidator" runat="server"  ControlToValidate="contact" ErrorMessage="Please enter a valid phone number.<br />"  ValidationExpression="[0-9]{10}" style="margin-left: 5px" ForeColor="Red" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="EmailFieldValidator" ControlToValidate="email" ErrorMessage="Please enter your email address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format.<br />" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="PasswordFieldValidator" ControlToValidate="password" ErrorMessage="Please enter your password.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PasswordRegularExpressionValidator" Display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ControlToValidate="password" runat="server" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Home Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Home Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="address" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col-md-4">
                                <label>State</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="stateList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True">Select</asp:ListItem>
                                            <asp:ListItem Text="Johor" Value="Johor"></asp:ListItem>
                                            <asp:ListItem Text="Kedah" Value="Kedah"></asp:ListItem>
                                            <asp:ListItem Text="Kelantan" Value="Kelantan"></asp:ListItem>
                                            <asp:ListItem Text="Malacca" Value="Malacca"></asp:ListItem>
                                            <asp:ListItem Text="Negeri Sembilan" Value="Negeri Sembilan"></asp:ListItem>
                                            <asp:ListItem Text="Pahang" Value="Pahang"></asp:ListItem>
                                            <asp:ListItem Text="Penang" Value="Penang"></asp:ListItem>
                                            <asp:ListItem Text="Perak" Value="Perak"></asp:ListItem>
                                            <asp:ListItem Text="Perlis" Value="Perlisr"></asp:ListItem>
                                            <asp:ListItem Text="Sabah" Value="Sabah"></asp:ListItem>
                                            <asp:ListItem Text="Sarawak" Value="Sarawak"></asp:ListItem>
                                            <asp:ListItem Text="Terengganu" Value="Terengganu"></asp:ListItem>
                                            <asp:ListItem Text="Kuala Lumpur" Value="Kuala Lumpur"></asp:ListItem>
                                            <asp:ListItem Text="Labuan" Value="Labuan"></asp:ListItem>
                                            <asp:ListItem Text="Putrajaya" Value="Putrajaya"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="StateRequiredFieldValidator" ControlToValidate="stateList" ErrorMessage="Please select your state." forecolor="Red" Display="Dynamic" style="margin-left: 5px" InitialValue="Select" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="city" runat="server" placeholder="City" ValidationGroup="Validate"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="CityRequiredFieldValidator" ControlToValidate="city" ErrorMessage="Please enter your city." forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Postcode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="postcode" runat="server" placeholder="Postcode"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="PostcodeRequiredFieldValidator" ControlToValidate="postcode" ErrorMessage="Please enter postcode." forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PostcodeRegularExpressionValidator" runat="server"  ControlToValidate="postcode" ErrorMessage="Please enter a valid postcode."  ValidationExpression="[0-9]{5}" style="margin-left: 5px" ForeColor="Red" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group d-grid gap-2" style="margin-top: -25px">
                                <asp:Button class="btn btn-warning" ID="signUp" runat="server" Text="Sign Up" OnClick="signUp_Click" ValidationGroup="Validate"/>
                            </div>
                        </div>
                                
                        <div class="form-group" style="margin-top: 10px" align="center">
                            Already have an account?
                            <asp:LinkButton ID="login" runat="server" CssClass="linkButton" OnClick="login_Click">Login</asp:LinkButton>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
