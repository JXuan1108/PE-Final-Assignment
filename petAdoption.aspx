<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="petAdoption.aspx.cs" Inherits="PE_Final_Assignment.petShopPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Select:"></asp:Label>
        <br />

        <asp:DropDownList ID="petAdoptionDdl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="petAdoptionDdl_SelectedIndexChanged">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Dog</asp:ListItem>
            <asp:ListItem>Cat</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
    
        <asp:DataList ID="petAdoptionDl" runat="server" DataSourceID="SqlDataSourceAll" RepeatColumns="3" Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="1" CellSpacing="5" GridLines="Both" OnItemCommand="petAdoptionDl_ItemCommand">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1" colspan="2">
                            <asp:Image ID="Image1" CssClass="petAdoptionImg" runat="server" ImageUrl='<%# Eval("pet_image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pet_breed") %>'></asp:Label>
                        </td>
                        <td class="text-center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pet_gender") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <asp:Button ID="adoptBtn" runat="server" Text="Adopt" CommandName="viewDetail" CommandArgument='<%#Eval("pet_image") %>' />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        
        </asp:DataList>
        <br />
    
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
