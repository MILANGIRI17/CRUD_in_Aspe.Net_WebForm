<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForm_CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-size: x-large; text-align: center;">Student Info Manage Form</h1>
    <div class="row">
        <div class="form-group col-md-3">
            <label class="form-label">Student ID</label>
            <asp:TextBox ID="StudentID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Student Name</label>
            <asp:TextBox ID="StudentName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Address</label>
            <asp:DropDownList ID="Address" runat="server" CssClass="form-control">
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group col-md-3">
            <label class="form-label">Age</label>
            <asp:TextBox ID="Age" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label class="form-label">Contact</label>
            <asp:TextBox ID="Contact" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group col-md-3 mt-4 pt-2">
            <asp:Button ID="InsertBtn" runat="server" OnClick="AddRecord" Text="Add" CssClass="btn btn-success" />
            <asp:Button ID="UpdateBtn" runat="server" OnClick="UpdateRecord" Text="Update" CssClass="btn btn-info" />
        </div>
        <div class="col-md-8 offset-2 mt-4">
            <asp:GridView ID="ShowRecords" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
