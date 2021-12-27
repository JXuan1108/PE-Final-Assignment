<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="petGroomingPage.aspx.cs" Inherits="PE_Final_Assignment.petGroomingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <asp:Image ID="dogGroomImg" runat="server" ImageUrl="~/images/dogGroomImg.png" />
            </div>
            <div class="col text-center">
                <h3>Dog Grooming Services</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <asp:ImageButton ID="dogServiceBtn" CssClass="rotateBtn" runat="server" ImageUrl="~/images/shop_now_dog.png" OnClick="dogServiceBtn_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col text-center">
                <h3>Cat Grooming Services</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <asp:ImageButton ID="catServiceBtn" CssClass="rotateBtn" runat="server" ImageUrl="~/images/shop_now_cat.png" OnClick="catServiceBtn_Click" />
            </div>
            <div class="col">
                <asp:Image ID="catGroomImg" runat="server" ImageUrl="~/images/catGroomImg.png" />
            </div>
        </div>
    </div>
</asp:Content>
