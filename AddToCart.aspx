<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="WebApplication17.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            outline: none;
            font-size: 20px;
            color: #fff;
            background-color: dodgerblue;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }
        .auto-style2:hover
        {
            background-color: darkcyan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align:"center" style="margin:0 auto;" class="auto-style1">
<h2 style=" text-decoration: underline overline; color:#5f98f3">You Have Following Product In Your Cart</h2>
<br/><br/>
<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Colonna MT" Font-Size="X-Large" NavigateUrl="~/FirstPage.aspx">Continue Shopping</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Clear Cart</asp:LinkButton>
<br/><br/>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#E6E6FA" BorderColor="#333333" BorderWidth="5px" EmptyDataText="No Product Available in Shopping Cart" Font-Bold="True" Height="200px" ShowFooter="True" Width="1176px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ItemStyle Height="110px" HorizontalAlign="Center" Width="110px" />
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
                    <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#6666FF" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT [Pquantity], [Pprice], [Pimage], [Pname], [ProductId] FROM [Product1]"></asp:SqlDataSource>
<br/>
<asp:Button ID="Button1" class="auto-style2" runat="server" Text="Place Order" OnClick="Button1_Click" Height="32px" Width="145px"  />

&nbsp;

</div>
    </form>
</body>
</html>
