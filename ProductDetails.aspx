<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebApplication17.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .card:hover {
            -webkit-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            -moz-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
        }
        </style>
</head>
<body style="background-color:#E6E6FA">
    <form id="form1" runat="server">
        <div align="center">
             <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="11px" BackColor="#FF33CC">
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/FirstPage.aspx"></asp:MenuItem>
                               
                                <asp:MenuItem Text="About US" Value="About US" NavigateUrl="~/About Us.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="FeedBack" Value="FeedBack" NavigateUrl="~/Feedback.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/Contact Us.aspx"></asp:MenuItem>
                                
                                 
                            </Items>
                            <StaticHoverStyle BackColor="#99CCFF" BorderColor="#FF6666" BorderStyle="None" ForeColor="Black" Height="40px" />
                            <StaticMenuItemStyle Font-Bold="True" Font-Size="Large" HorizontalPadding="90px" ForeColor="Black" />
                            <StaticSelectedStyle BackColor="#FF5050" BorderColor="#FF6666" BorderStyle="Inset" ForeColor="#666666" Height="40px" />
                        </asp:Menu>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-12-lg mt-2">
                                <div class="card" style="width:28rem;">
                                    <asp:Image ID="Image1" CssClass="card-img-top" ImageUrl='<%# Eval("Pimage") %>' AlternateText="Product Image" runat="server" />
                                    <div class="card-body bg-dark">
                                        <h5 class="card-title text-white"><%# Eval("Pname")%></h5>
                                         <h6 class="card-title text-white">Price: ₹<%# Eval("Pprice")%></h6>
                                         <p class="card-title text-white">Description: <br/><%# Eval("Pdesc")%></p>
                                        <asp:Button ID="btn1" CssClass="btn btn-primary" runat="server" Text="Add Cart" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT [ProductId], [Pname], [Pdesc], [Pimage], [Pprice] FROM [Product1] WHERE ([ProductId] = @ProductId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductId" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
