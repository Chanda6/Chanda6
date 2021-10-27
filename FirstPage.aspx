<%@ Page Title="" Language="C#" MasterPageFile="~/FirstPage.Master" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="WebApplication17.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 4px;
            margin-top: 18px;
        }
        .auto-style4 {
            margin-right: 1px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style ="width:1150px; height:30px">
    <tr style="background-color:#5f98f3">
        <td colspan="2" style="text-align:right">
            <asp:Label ID="Label1" runat="server" style="text-align:left" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift SemiBold" ForeColor="White"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" NavigateUrl="~/Login.aspx">Click to Login</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="Black" BorderColor="White" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Aqua" Height="29px" Width="105px" OnClick="Button1_Click" />
        </td>
        <td style ="text-align:right">
            <asp:DropDownList ID="ProductCategories" runat="server" AutoPostBack="True" BackColor="#5F98F3" Font-Bold="True" Font-Size="Medium" BorderColor="#5f98f3"  ForeColor="White" OnSelectedIndexChanged="ProductCategories_SelectedIndexChanged"></asp:DropDownList>
           &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="168px" CssClass="auto-style4"></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/pics/searchic.png" OnClick="ImageButton2_Click" Width="26px" CssClass="auto-style3" />
            </td>
    </tr>
</table>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT * FROM [Product1]"></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Height="293px" Width="310px" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
        
        <ItemTemplate>
            <table>
                <%--<tr>
                    <td style="text-align:center; background-color:#5f98f3"> <asp:Label ID="Label5" runat="server" Text='<%# Eval("Product_Name")%>' Font-Bold="True" Font-Names="open sans extrabold" ForeColor ="White"></asp:Label>
                    </td>
                        </tr>--%>
                        <tr>
                        <td style="text-align:center; background-color:#5f98f3"> <asp:Label ID="Label2" runat="server"  visible="false" Text='<%# Eval("ProductId") %>' Font-Bold="True" Font-Names="open sans extrabold" ForeColor ="White"></asp:Label>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="open sans extrabold" ForeColor ="White"></asp:Label>
                    </td>
                </tr>
               <tr>
                    <td style="text-align:center">
                       <%-- <asp:Image ID="Image1" runat="server"  BorderColor="#5F98F3" BorderWidth="1px" Height="279px" ImageUrl='<%# Eval("Pimage") %>' Width="278px" />--%>
                        <asp:ImageButton ID="ImageButton1" runat="server"  BorderColor="#5F98F3" BorderWidth="1px" Height="279px" ImageUrl='<%# Eval("Pimage") %>' Width="278px" CommandName="ViewPrdDetail" CommandArgument='<%# Eval("ProductId") %>' />
                        <div class="stock">
                            &nbsp;Stock:&nbsp;
                            <asp:Label ID="Label5" runat="server" BackColor='<%# (int)Eval ("Pquantity") <= 5 ? System.Drawing.Color.Pink: System.Drawing.Color.Yellow%>'></asp:Label>
                            &nbsp;&nbsp;
                            </div>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                        <asp:Label ID="Label3" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Pprice")%>' Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                    </td>
                </tr>
            

                <%--Product Wishlist,Quantity,Cart--%>
                <tr>
                    <td align:"center">
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="btnWishlist" Height="40px" ImageUrl="~/pics/heartoutline.png" Width="60px" CommandName="AddToWishList" CommandArgument='<%# Eval("ProductId")%>' />
                           &nbsp;&nbsp;
                        <span style="width:90px">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                            </span>&nbsp;&nbsp;
                        <span>
                            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="btnCart" ImageUrl="~/pics/CartLogo1.png" Width="65px" CommandName="AddToCart" CommandArgument='<%# Eval("ProductId")%>' Height="44px" />
                            </span>
                    </td>
                    </tr>

                <%--<tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" Height="40px" ImageUrl="~/pics/Cart.jpeg" Width="160px" />

                    </td>
                </tr>--%>

            </table>
            <br/>
            <br/>
        </ItemTemplate>
     </asp:DataList>
</asp:Content>
