<%@ Page Language="C#" AutoEventWireup="true"  UnobtrusiveValidationMode="None" CodeBehind="Forget.aspx.cs" Inherits="WebApplication17.Forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1  
{  
width: 225px;  
}  
.style2  
{  
width: 155px;  
}  
.style6  
{  
text-align: left;  
font-size: large;  
text-decoration: underline;  
color: #0000FF;  
}  
.body {
    margin: 0;
    padding: 0;
    background-image: url('background.jpeg');
   
   
    font-family: sans-serif;
}
.container
{
    
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 350px;
    height: 250px;
    padding: 20px 40px;
    box-sizing: border-box;
    background: rgba(0, 0, 0, 0.5);
}

h2 {
    padding: 0;
    margin: 0;
    text-align: center;
    color: rgb(255, 217,9);
}
.style2
{
    font-weight: bold;
    color: #fff;
}
.txtemail, .Button
{
    width: 100%;
    margin-bottom: 10px;
}
.txtemail
{
    border: none;
    border-bottom: 3px solid #fff;
    outline: none;
    height: 40px;
    color: #fff;
    font-size:16px;
    background-color: transparent;
}
.btnsubmit
{
    border: none;
    outline: none;
    height: 40px;
    font-size: 16px;
    color: #fff;
    background-color: rgb(255, 9, 9);
    cursor: pointer;
    border-radius: 20px;
    transition: .3s ease-in-out;
}
.btnsubmit:hover
{
    background-color: rgb(255, 217,9);
}


        .auto-style2 {
            width: 199px;
            font-weight: bold;
            color: #fff;
            text-align: center;
        }
        .auto-style3 {
            width: 199px;
            font-weight: bold;
            color: #fff;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style6 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            color: #fff;
            font-size: 16px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: 3px solid #fff;
            margin-left: 0px;
            margin-bottom: 20px;
            background-color: transparent;
        }


    </style>
</head>
<body style= "background-image:url(pics/background.jpeg); background-repeat:no-repeat; background-size: cover; ">
    <form id="form1" runat="server">
        <div class="container">  
              <h2>Forget Password</h2><br/>



           <%-- <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br />  
             <asp:LinkButton ID="lnk_changepassword" runat="server"   
        onclick="lnk_changepassword_Click">Change Password</asp:LinkButton>
    </div>  
   --%>








                <table style="width:100%;">            
                    <tr>  
                      
                        <td class="auto-style3">  
EmailId:  
                        </td>  
                        </tr>
                    <tr>
                        <td>  
                            <asp:TextBox ID="TextBox1"  runat="server" CssClass="auto-style6" Height="31px"></asp:TextBox>  
                        </td>  
                    
                    </tr>  
                    
                    
                    <tr>
                        <td class="auto-style4">  
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click"  CssClass="btnsubmit"  Text="Submit" Width="215px"/>  
                          
                                                       
                        </td>  
                        </tr>
                    <tr>
                        <td class="auto-style4">  
                            <asp:Label ID="lbmsg" runat="server" ForeColor="#990033" Width="215px" BackColor="#990033"></asp:Label>  
                           
 </td>  
                    </tr>  
                   <tr>  
                         
                        <td class="auto-style2">  
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="203px">Back To Login</asp:LinkButton>
                        </td>  
                        </tr>
                </table>  
            </div>       
    </form>
</body>
</html>
