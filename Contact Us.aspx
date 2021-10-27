<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="WebApplication17.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
           margin:0;
           padding:0;
           box-sizing:border-box;
        }
        
        .auto-style1 {
  background-color:darksalmon;
  border: none;
  color: black;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
}

.auto-style1:hover {
  background-color:darkcyan;
  color: white;
}
 a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: #04AA6D;
  color: white;
}
.contact-parent 
{
    display:flex;
    margin:80px 0;
}
.contact-child 
{
    display:flex;
    flex:1;
    box-shadow:0px 0px 10px -2px rgba(0,0,0,0.75);
}
.child1 {
    background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
    background-image: url(pics/p8.jpg);
    background-size: cover;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    color: #fff;
    padding: 100px 0;
}
.child1p
{
    padding-left:20%;
    font-size:20px;
    text-shadow:0px 0px 2px #000;
}

.child1 span
{
    font-size:16px;
    color:#9df2fd;
}

.child2
{
    flex-direction:column;
    justify-content:space-around;
    align-items:center;
}
.inside-contact
{
    width:90%;
    margin:0 auto;
}
.inside-contact h2
{
    text-transform:uppercase;
    text-align:center;
    margin-top:50px;
}
.inside-contact h3
{
    text-align:center;
    font-size:16px;
    color:#0085e2;
}
.inside-contact input, .inside-contact-textarea 
{
    width:100%;
    background-color:#eee;
    border:1px solid rgba(0,0,0,0.48);
    padding:5px 10px;
    margin-bottom:20px;
}
.inside-contact input[type=submit]
{
    background-color:#000;
    color:#fff;
    transition:0.2s;
    border:2px solid #000;
    margin:30px 0;
}
.inside-contact input[type=submit]:hover
{
    background-color:#fff;
    color:#000;
    transition:0.2s;
}
@media screen and (max-width:991px)
{
    .contact-parent
    {
        display:block;
        width:100%;
    }
    .child1
    {
        display:none;
    }
    .child2 {
        background-image: linear-gradient(rgba(255,255,255,0.7),rgba(255,255,255,0.7));
       /* background-image: url(pics/p8.jpg);*/
        background-size: cover;
    }
    .inside-contact-input, .inside-contact-textarea 
    {
        background-color:#808080;
    }
}


        .auto-style2 {
            text-align: center;
        }


        </style>
</head>
<body style="background-image:url('pics/p8.jpg')">
    <div class="auto-style2">
    <form id="form1" runat="server">
        <div>
             <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="50px" Width="100%" Font-Size="Large" ForeColor="Black" BackColor="Silver">
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/FirstPage.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="About US" Value="About US" NavigateUrl="~/About Us.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="FeedBack" Value="FeedBack" NavigateUrl="~/Feedback.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/Contact Us.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Admin Login" Value="Admin Login" NavigateUrl="~/AdminLogin.aspx"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#99CCFF" BorderColor="Black" BorderStyle="None" ForeColor="White" Height="40px" />
                            <StaticMenuItemStyle Font-Bold="True" Font-Size="XX-Large" HorizontalPadding="35px" />
                            <StaticSelectedStyle BackColor="#FF5050" BorderColor="#FF6666" BorderStyle="Inset" ForeColor="#666666" Height="40px" />
                        </asp:Menu>
             <div class="container">
                <div class="contact-parent">
                    <div class="contact-child">
                    <p class="auto-style2"  >
                        <i class="fas fa-map-marker-alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="~/pics/loc.png" Width="22px" />
                        &nbsp;</i>Address<br />
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shree Shanta Peetham
                        <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Banathali Vidypeeth,Rajasthan
                            <br />
                        </span>
                    
                       
                            <br />
                             <br />
                            <i class="fas fa-phone-alt "></i><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image4" runat="server" Height="28px" ImageUrl="~/pics/PHONE.jpg" Width="35px" />
                        &nbsp;Let's Talk<br /><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7845609223</span> <br />
                            <br /><br /><br /> 
                          
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/pics/email.png" Width="28px" />
                        General Support<br />
                                <span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chandakumari26008@gmail.com</span>
                       <br />
                       </p>
                    </div>
                    <div class="contact-child child2" style="background-image:url('pics/p8.jpg')">
                        <div class="inside contact">
                            <h2 class="auto-style3">&nbsp;Contact Us</h2>
                            <h3><asp:Label ID="confirm" runat="server" Text=""></asp:Label></h3>
                            <p>&nbsp;Name:&nbsp;
                            <asp:TextBox ID="txt_name" runat="server" Required="required" Height="28px" Width="135px"></asp:TextBox>
                            </p>
                            <br /><br />
                            <p>&nbsp;Email:&nbsp;
                            <asp:TextBox ID="txt_email" runat="server" Required="required" Height="28px" Width="135px"></asp:TextBox>
                            </p>
                            <br /><br />
                            <p>&nbsp;Phone:&nbsp; <asp:TextBox ID="txt_phone" runat="server" Required="required" Height="28px" Width="135px"></asp:TextBox>
                            </p>
                            <br /><br />
                            <p>&nbsp;Subject:&nbsp;
                            <asp:TextBox ID="txt_subject" runat="server" Required="required" Height="28px" Width="135px"></asp:TextBox>
                            </p>
                            <br />
                            <p>&nbsp;Message:&nbsp;</p>
                               
                            <asp:TextBox ID="txt_message" runat="server" Required="required" TextMode="MultiLine" Rows="3" ></asp:TextBox>
                            <br />
                            <asp:Button ID="btn_send" runat="server" Text="SEND" CssClass="auto-style1" OnClick="btn_send_Click" Height="44px" Width="145px" />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
                  
            </div>
        </div>
       
    </form>
    </div>
</body>
</html>
