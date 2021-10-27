<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication17.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    
    <link href ="Style1.css" rel ="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

    <style type="text/css">
       
        .span
{
    position:absolute;
    right:15px;
    transform:translate(0,-50%);
     top:50%;
     cursor:pointer;
}
.fa
{
    font-size:20px;
    color:#7a797e;
}
h2 {
    padding: 0;
    margin: 0;
    text-align: center;
    color: rgb(255, 217,9);
}
        .auto-style2 {
            height: 493px;
        }
       .loginbox i{
            float: right;
  margin-left: -25px;
/*  margin-top: -1px;*/
 /* margin-bottom:2px;*/
  position: relative;
  z-index: 2;
}
       
    </style>
</head>
<body style= "background-image:url(pics/background.jpeg)">
    <div class="loginbox">

        <img src ="pics/person.png" alt ="Alternate Text" class ="user"/>
        <h2>Log In Here</h2>
        <form runat ="server" class="auto-style2">
            <asp:Label Text ="Email" CssClass ="lblemail" runat="server" />
            <asp:TextBox runat="server" Cssclass="txtemail" placeholder="Enter Email" ID="TextBox1"/>
            
            <asp:Label Text ="Password" CssClass ="lblpass" runat="server"/>   
           
            <asp:TextBox runat="server" CssClass="txtpass" TextMode = "Password" placeholder="********" ID="TextBox2" />
             <span id="cont" >
         <i id="togglePassword" class="fa fa-eye"></i>
             
          </span>
            <asp:Button Text ="Sign In" CssClass="btnsubmit" runat="server" OnClick="ImageButton1_Click"/>
            <%--<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>--%>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="#FF3399">Forget Password</asp:LinkButton>
           &nbsp;&nbsp;&nbsp
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="Large" ForeColor="Blue">Register Here</asp:LinkButton>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label> 
        </form>
        <%--<asp:Label ID="Label2" runat="server"></asp:Label>   
    <%--<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>--%>
        </div>
   <script type="text/javascript">
       var togglePassword = document.querySelector('#togglePassword');
       var password = document.querySelector('#TextBox2');
       togglePassword.addEventListener('click', function (e) {
           const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
           password.setAttribute('type', type);
           this.classList.toggle('fa-eye-slash');
       });
   </script>
</body>
</html>
