<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditProfilePage.aspx.cs" Inherits="PE_Final_Assignment.EditProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 10px; padding-bottom: 50px">
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
                                <h3>Edit Profile</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" align="center">
                                <hr />
                            </div>
                        </div>
                        <section class="updateProfile">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>First Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="firstName" runat="server" placeholder="First Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Last Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="lastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px">
                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Date" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Mobile Number</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                                    </div> 
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px">
                                <div class="col">
                                    <label>Home Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Home Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="city" runat="server" placeholder="City"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Postcode</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="postcode" runat="server" placeholder="Postcode"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row" style="margin-top: 20px">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-primary" ID="update" runat="server" Text="Update Profile" OnClick="update_Click1"/>
                                </div>
                            </div>
                        </section>
                        <section class="resetPwd">
                            <div class="row">
                                <div class="col" align="center" style="margin-top: 20px">
                                    <span class="badge rounded-pill bg-success" style="padding: 8px">Login Credentials</span>
                                </div>
                            </div>
                        

                            <div class="row" style="margin-top: 20px">
                                <div class="col-md-4">
                                    <label>Email Address</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Old Password</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="newPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-primary" ID="resetPassword" runat="server" Text="Reset Password" OnClick="resetPassword_Click" />
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
