<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="PE_Final_Assignment.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
   </script>
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
                                <h3>Profile</h3>
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
                                    <asp:TextBox CssClass="form-control" ID="firstName" runat="server" placeholder="First Name" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="FirstNameRequiredFieldValidator" ControlToValidate="firstName" ErrorMessage="Please enter your first name.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="lastName" runat="server" placeholder="Last Name" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="LastNameRequiredFieldValidator" ControlToValidate="lastName" ErrorMessage="Please enter your last name.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Date" runat="server" placeholder="Password" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator runat="server" ID="DateRequiredFieldValidator" ControlToValidate="lastName" ErrorMessage="Please select your birthdate.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Mobile Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Mobile Number" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="PhoneRequiredField" ControlToValidate="contact" ErrorMessage="Please enter your phone number.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PhoneRegularExpressionValidator" runat="server"  ControlToValidate="contact" ErrorMessage="Please enter a valid phone number.<br />"  ValidationExpression="[0-9]{11}" style="margin-left: 5px" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                </div> 
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <label>Email Address</label>
                            <div class="form-group">
                                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address" ReadOnly="true"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator runat="server" ID="EmailFieldValidator" ControlToValidate="email" ErrorMessage="Please enter your email address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format.<br />" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="margin-left: 5px"></asp:RegularExpressionValidator>--%>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col">
                                <label>Home Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Home Address" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="AddressRequiredFieldValidator" ControlToValidate="address" ErrorMessage="Please enter your address.<br />" forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col-md-4">
                                <label>State</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="stateList" runat="server" CssClass="form-control" Enabled="false">
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
                                        <%--<asp:RequiredFieldValidator runat="server" ID="StateRequiredFieldValidator" ControlToValidate="stateList" ErrorMessage="Please select your state." forecolor="Red" Display="Dynamic" style="margin-left: 5px" InitialValue="Select"></asp:RequiredFieldValidator>--%>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="city" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="CityRequiredFieldValidator" ControlToValidate="city" ErrorMessage="Please enter your city." forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Postcode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="postcode" runat="server" placeholder="Postcode" ReadOnly="true"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator runat="server" ID="PostcodeRequiredFieldValidator" ControlToValidate="postcode" ErrorMessage="Please enter postcode." forecolor="Red" Display="Dynamic" style="margin-left: 5px"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PostcodeRegularExpressionValidator" runat="server"  ControlToValidate="postcode" ErrorMessage="Please enter a valid postcode."  ValidationExpression="[0-9]{6}" style="margin-left: 5px" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 20px">
                            <div class="form-group d-grid gap-2">
                                <asp:Button class="btn btn-primary" ID="edit" runat="server" Text="Edit Profile" OnClick="edit_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>              
</asp:Content>
