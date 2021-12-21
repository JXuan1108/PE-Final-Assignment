<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PE_Final_Assignment.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 60px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
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
                            <div class="col" align="center">
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                </div>
                                <div class="form-group" style="margin-top: 20px">
                                    <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
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
                                    <asp:Button ID="login" runat="server" Text="Login" class="btn btn-primary" OnClick="login_Click"/>
                                </div>
                                <div class="form-group" style="margin-top: 20px">
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
