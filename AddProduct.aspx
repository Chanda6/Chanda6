<%@ Page Title="" Language="C#" MasterPageFile="~/FirstPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication17.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:510px">
    <table style="width:700px; height:390px; background-color:#5f98f3;" align:"center" align="center">
        <tr>
            <td align:"center" width="50%" colspan="2">
                <h1 class="auto-style1">Adding Product</h1><hr/>
            </td>
            <td>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr>
            <td align:"center" width="50%"><h3>Product ID:</h3></td>
            <td width:"50%">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td width:"50%"><h3>Product Name:</h3></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align:"center" width="50%"><h3>Product Desc:</h3></td>
            <td width:"50%"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align:"center" width="50%"><h3>Image:</h3></td>
            <td width:"50%">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td align:"center" width:"50%"><h3>Product Price:</h3></td>
            <td width:"50%"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr><td align:"center" width="50%" colspan="2" class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" ForeColor="Black" Height="36px" OnClick="Button1_Click" Width="88px"/></td></tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
       <%-- <tr><td align:"center" width="50%" colspan="2" class="auto-style1">
            <asp:Label ID="Label1" runat="server"></asp:Label></td></tr>--%>
    </table>
</div>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
</asp:Content>

