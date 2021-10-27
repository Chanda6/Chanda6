<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="WebApplication17.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            align-content:center;
            height: 293px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style1" style="background-color:#E6E6FA">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" AutoGenerateColumns="False" Width="380px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Font-Bold="True" Font-Size="Large">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="User Id" SortExpression="Name" >
                <ItemStyle Font-Size="Large" />
                </asp:BoundField>
                <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" >
                <ItemStyle Font-Size="Large" />
                </asp:BoundField>
                <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" >
                <ItemStyle Font-Size="Large" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Feedback.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [rating], [review], [Name] FROM [tblrating]"></asp:SqlDataSource>

</asp:Content>
