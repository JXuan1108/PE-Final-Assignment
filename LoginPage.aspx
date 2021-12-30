<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PE_Final_Assignment.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page min-vh-100" style="padding-top: 13rem">
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
                                <h3>Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" align="center">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="EmailFieldValidator" ControlToValidate="email" ErrorMessage="Please enter your email address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format.<br />" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="PasswordFieldValidator" ControlToValidate="password" ErrorMessage="Please enter your password.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PasswordRegularExpressionValidator" Display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ControlToValidate="password" runat="server" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group" style="margin-top: 20px">
                                    <div class="row">
                                        <div class="col-md-5" align="left">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="&nbsp;Remember Me" TextAlign="Right"/>
                                        </div>
                                        <div class="col-md-7" align="right">
                                            <asp:LinkButton ID="forgotPassword" runat="server" CssClass="linkButton" OnClick="forgotPassword_Click">Forgot Password?</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group d-grid gap-2" style="margin-top: 20px">
                                    <asp:Button ID="login" runat="server" Text="Login" class="btn btn-primary" OnClick="login_Click" ValidationGroup="Validate"/>
                                </div>
                                <div class="form-group" style="margin-top: 10px" align="center">
                                    Not a member?
                                    <asp:LinkButton ID="signUp" runat="server" CssClass="linkButton" OnClick="signUp_Click">Sign Up</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
