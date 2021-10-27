<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="WebApplication17.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 263px;
            width: 574px;
            margin-left: 597px;
        }
       
        .auto-style3 {
            font-size: medium;
        }
       
    </style>
 
</head>
<body style="background-image:url('pics/abo.jpeg'); background-size:cover">
    <form id="form1" runat="server">
      <div>
          
       
          <table width:"100%">

           <tr>
               <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/SHP.jpeg" Width="65px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </td>
                    <td style="width:1100px; height:40px; background-color:#5f98f3">
           <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="50px" Width="100%" Font-Size="Large" ForeColor="White">
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/FirstPage.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="About US" Value="About US" NavigateUrl="~/About Us.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="FeedBack" Value="FeedBack" NavigateUrl="~/Feedback.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/Contact Us.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Admin Login" Value="Admin Login" NavigateUrl="~/AdminLogin.aspx"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#99CCFF" BorderColor="#FF6666" BorderStyle="None" ForeColor="Black" Height="40px" />
                            <StaticMenuItemStyle Font-Bold="True" Font-Size="XX-Large" HorizontalPadding="35px" />
                            <StaticSelectedStyle BackColor="#FF5050" BorderColor="#FF6666" BorderStyle="Inset" ForeColor="#666666" Height="40px" />
                        </asp:Menu>
                         &nbsp;&nbsp;&nbsp;
                         </td>
                    </tr>
              <tr>
                  <td colspan="2" class="auto-style1">
                   <br/><br/>
                      <br />
                      <br />
                      <br />
                      <br />
&nbsp; <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      <asp:Label ID="Label1" runat="server" Text="About Us" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099" CssClass="auto-style3" Font-Names="Arial Black"></asp:Label><br/>
                
                     
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                      <%--<asp:Label ID="Label2" runat="server" Text="Second Hand Product(SHP) is a Online platform for buying services and goods such as Books,Cycle,Study Table etc. SHP connects local people to buy used goods and <br/>services by making it fast,easy and free for anyone to buy through their mobile phone or on the web.This platform provides an easy solution for the customer to buy the product without going there.  " Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>--%>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                  </td>
                  </tr>
              </table>
          <div>
               <p class="auto-style2" style="font-size: x-large; font-weight: bold; text-align:right;"> "Second Hand Product(SHP) is a Online platform for buying services and goods such as Books,Cycle,Study Table etc.
                           services by making it fast,easy and free for anyone to buy through their mobile phone or on the web.
                           This platform provides an easy solution for the customer to buy the product without going there.</p>
              </div>
          </div>
    </form>
</body>
</html>
