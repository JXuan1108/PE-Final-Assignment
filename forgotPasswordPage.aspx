<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="forgotPasswordPage.aspx.cs" Inherits="PE_Final_Assignment.forgotPasswordPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 30px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
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
                                    <%--<asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="address" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="resetPwd" runat="server" CssClass="form-control" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="address" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col">
                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="confirmPwd" runat="server" CssClass="form-control" placeholder="Enter Password Again" TextMode="Password"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="address" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 30px">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-primary" ID="resetPwdButton" runat="server" Text="Reset Password" OnClick="resetPwdButton_Click"/>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
