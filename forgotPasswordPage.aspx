<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="forgotPasswordPage.aspx.cs" Inherits="PE_Final_Assignment.forgotPasswordPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page margin-bottom-6" style="margin-top: 30px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box-shadow1">
                    <div class="card-body">
                        <div class="row">
                            <div class="row">
                            <div class="col" align="center">
                                <img src="images/lock.png" style="width: 150px"/>
                            </div>
                        </div>
                            <div class="col" align="center" style="margin-top: 10px">
                                <h3>Reset Password</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" align="center">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="EmailFieldValidator" ControlToValidate="email" ErrorMessage="Please enter your email address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format.<br />" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="resetPwd" runat="server" CssClass="form-control" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="resetPwdFieldValidator" ControlToValidate="resetPwd" ErrorMessage="Please enter your password.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="resetPwdRegularExpressionValidator" Display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ControlToValidate="resetPwd" runat="server" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 28px">
                            <div class="col">
                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="confirmPwd" runat="server" CssClass="form-control" placeholder="Enter Password Again" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="confirmPwdRequiredFieldValidator1" ControlToValidate="confirmPwd" ErrorMessage="Please enter your password.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px" ValidationGroup="Validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="confirmPwdRegularExpressionValidator" Display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ControlToValidate="confirmPwd" runat="server" style="margin-left: 5px" ValidationGroup="Validate"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 25px">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-warning" ID="resetPwdButton" runat="server" Text="Reset Password" OnClick="resetPwdButton_Click" ValidationGroup="Validate"/>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
