<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToWishList.aspx.cs" Inherits="WebApplication17.AddToWishList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">

            <h2 style="text-decoration:underline overline blink; color:#5f98f3">You Have Following Product In Your WishList</h2>
            <br/>

            <%--Redirect you to FirstPage--%>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FirstPage.aspx" Font-Bold="True" Font-Names="Colonna MT" Font-Size="X-Large">Continue Shopping</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


           <%-- Clear All Products in your cart--%>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Clear WishList</asp:LinkButton>
            <br/><br/>


          <%--  Display Product present in your Cart--%>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF6699" BorderColor="#333333" BorderWidth="5px" EmptyDataText="Your WishList is Empty. . !!" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pdesc" HeaderText="Description">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True"/>
                 </Columns>
                    <FooterStyle BackColor="#6666FF" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
            </asp:GridView>
            <br/>
        </div>
    </form>
</body>
</html>
