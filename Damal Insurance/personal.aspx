<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personal.aspx.cs" Inherits="Damal_Insurance.personal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h1 class="h3 mb-2 text-gray-800" style="margin-top: 200px">All Users</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Users List</h6>
        </div>
    <div class="card-body">
    <div class="table-responsive">
        <asp:GridView runat="server" CssClass="table table-bordered dataTable1 sticky-top" ID="gvList" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" Width="100%">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Occupation" HeaderText="Occupation" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
            </Columns>
            <HeaderStyle CssClass="thead-dark" />
        </asp:GridView>
    </div>
</div>
    </div>
</asp:Content>
