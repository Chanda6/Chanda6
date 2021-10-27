<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pdf_generate.aspx.cs" Inherits="WebApplication17.PDF_generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 386px;
        }
    </style>
</head>
<body style="background-color:#E6E6FA">
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Download Invoice" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Height="49px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/FirstPage.aspx">Go to Home Page</asp:HyperLink>
            <asp:Panel ID="Panel1" runat="server">
            <table border="1">
                <tr>
                    <td style="text-align:center">
                        <h2 style="text-align:center">Retail Invoice</h2>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        Order No:
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br/>
                        <br/>
                        Order Date:
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="auto-style2">
                                    Buyer Address:
                                    <br/>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp; Seller Address:
                                    <br/>
                                    &nbsp;
                                    <br/>
                                    Banasthali Vidyapith,Newai Tonk ,Rajasthan..
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="SNo">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productid" HeaderText="Product Id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productname" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        Grand Total:
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                        </td>
                    </tr>
                 <tr>
                    <td align:"center" class="auto-style1">
                        This is a computer generated invoice and doesn't required signature.
                        </td>
                    </tr>
                </table>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
