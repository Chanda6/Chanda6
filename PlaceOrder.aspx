<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="PlaceOrder.aspx.cs" Inherits="WebApplication17.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 687px;
        }
        .auto-style3 {
            width: 687px;
            text-align: center;
        }
        .auto-style4 {
            width: 699px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 699px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
            width: 386px;
        }
        .auto-style8 {
            width: 386px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin-top:30px;width:400px;height:400px;background-color:darkcyan"; align:"center" align="center">
                <tr>
                    <td colspan:"2"  align:"center" style="vertical-align:top" class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan:"2" style="vertical-align:top" class="auto-style4" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" OnTextChanged="TextBox1_TextChanged" Width="300px" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Empty" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="First Name must be in characters" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>

                    </td>
                    <td style="vertical-align:top" colspan:"2" class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" OnTextChanged="TextBox1_TextChanged" Width="300px" placeholder="Last Name" CssClass="auto-style1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Empty" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Last Name must be in characters" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" align:"center" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" BackColor="Black" BorderWidth="2px" Height="111px" ImageUrl="~/pics/visaimage.jpg" Width="647px" />
                    </td>
                </tr>
                <tr>
                     <td class="auto-style2" align:"center" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Card Number" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="vertical-align:top" class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="47px" OnTextChanged="TextBox1_TextChanged" Width="869px" placeholder="16 Digits" CssClass="auto-style1" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card Number is Empty" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>

                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Card No. Must be equal to 16 digit" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Expiry Date" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style8" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:top" class="auto-style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" OnTextChanged="TextBox1_TextChanged" Width="300px" placeholder="MM/YY(Eg:09/1999)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiry Date is Empty" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="vertical-align:top" class="auto-style8">
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" OnTextChanged="TextBox1_TextChanged" Width="300px" placeholder="3 Digits" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV is Empty" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="vertical-align:top" class="auto-style5">
                        &nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" Height="99px" OnTextChanged="TextBox1_TextChanged" Width="759px" placeholder="Billing Address" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Empty" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="44px" Width="190px" OnClick="Button1_Click" />
                    </td>
                    </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" HeaderText="Fixed the following errors" />
                    </td>
               </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/AddToCart.aspx">Previous Page</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/FirstPage.aspx">Home Page</asp:HyperLink>
                    </td>
               </tr>
            </table>
        </div>
    </form>
</body>
</html>
