<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="petAdoption.aspx.cs" Inherits="PE_Final_Assignment.petShopPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container start-page">
        <div class="row" style="border-bottom: 2px dashed #8b0000;">
            <div class="col-lg-12" align="center">
                <h1 class="mt-4 p-2" style="font-family: coiny; font-size: 3rem">Pet Adoption</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8" style="text-align: justify">
                    <p class="p-2" style="font-size: 1.1rem;">We also provide adoption services for anyone who adores pets. Feel free to check out 
                        the details of the pets available and send in a request for adoption, and we will reply to your request within 2 weeks!</p> 
                </div>
            </div>
        </div>
        <center>
            <div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" style="font-size: 1.5rem;" Text="Browse For Pets "></asp:Label> 
                <asp:DropDownList ID="petAdoptionDdl" CssClass="form-control" style="display: inline; width: 5em;" runat="server" AutoPostBack="True" OnSelectedIndexChanged="petAdoptionDdl_SelectedIndexChanged">
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>Dog</asp:ListItem>
                    <asp:ListItem>Cat</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:DataList ID="petAdoptionDl" runat="server" DataSourceID="SqlDataSourceAll" RepeatColumns="3" OnItemCommand="petAdoptionDl_ItemCommand" RepeatDirection="Horizontal" CellPadding="24" CellSpacing="24">
                <ItemStyle ForeColor="#8C4510"/>
                <ItemTemplate>
                    <table class="w-100 adoption-item box-shadow2">
                        <tr>
                            <td class="auto-style1 first-adoption-item"> 
                                <asp:ImageButton ID="ImageButton1" CssClass="petAdoptionImg" ImageUrl='<%# Eval("pet_image") %>' CommandName="viewDetail" CommandArgument='<%#Eval("pet_image") %>' runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2 text-adoption" Width="70%">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("pet_breed") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2 text-adoption last-adoption-item" width="70%">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("pet_gender") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
        </div>
        </center>
        <asp:SqlDataSource ID="SqlDataSourceAll" runat="server" ConnectionString="<%$ ConnectionStrings:PnCdbConnectionString %>" SelectCommand="SELECT [pet_gender], [pet_breed], [pet_image] FROM [petAdoption]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceDog" runat="server" ConnectionString="Data Source=.;Initial Catalog=PnCdb;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [pet_gender], [pet_breed], [pet_image] FROM [petAdoption] WHERE ([pet_type] = @pet_type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Dog" Name="pet_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceCat" runat="server" ConnectionString="Data Source=.;Initial Catalog=PnCdb;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [pet_gender], [pet_breed], [pet_image] FROM [petAdoption] WHERE ([pet_type] = @pet_type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Cat" Name="pet_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceOther" runat="server" ConnectionString="Data Source=.;Initial Catalog=PnCdb;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [pet_gender], [pet_breed], [pet_image] FROM [petAdoption] WHERE ([pet_type] = @pet_type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Other" Name="pet_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>