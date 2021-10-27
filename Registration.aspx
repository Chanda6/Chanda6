<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Registration.aspx.cs" Inherits="WebApplication17.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
       
  <%--<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>--%>
    <style type="text/css">    
    .auto-style1 {
            text-align:center;
        }
        .auto-style2 {
            font-weight: bold;
            text-align: center;
        }
        .btn1
        {
          padding:10px;
           transform:translate(-50%,-50%);
           width:200px;
           height:60px;
           /*text-align:center;*/
           line-height:30px;
           color:#fff;
           font-size:24px;
           text-transform:uppercase;
           text-decoration:none;
           font-family:sans-serif;
           box-sizing:border-box;
           background:linear-gradient(90deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
          /*  background:linear-gradient(90deg,#03a9f4,#ffeb3b);*/
           background-size:400%;
           border-radius:30px;
           cursor:pointer;
        } 
        .btn1:hover
        {
            animation:animate 8s linear infinite;
        }
        @keyframes animate
        {
           0%
           {
               background-position:0%;
           }
           100%
           {
               background-position:400%;
           }
        }
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align:"center" align="center" style="width: 700px; height: 600px;  background:linear-gradient(135deg,#71b7e6,#9b59b6)";>
                <tr>
                    <td colspan ="2" align:"center" class="auto-style1"><h2 class="auto-style1" style="font-family: 'MS Sans Serif'; font-style: italic; color: #FFCC00; font-size: xx-large; font-weight: bolder; text-transform: uppercase; text-decoration: underline;">Registration HERE</h2></td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">First Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="54px" Width="271px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters allow" Font-Bold="False" Font-Italic="True" Font-Names="Matura MT Script Capitals" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Last Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="54px" Width="271px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last name is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters allow" Font-Bold="False" Font-Italic="True" Font-Names="Matura MT Script Capitals" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Email ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="54px" Width="271px" ValidationGroup="Email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email ID is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter Valid EmailID" Font-Bold="False" Font-Italic="True" Font-Names="Matura MT Script Capitals" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="54px" Width="271px" TextMode="Password" MinLength="8"></asp:TextBox>
                     <%-- <div>
                        <span>
                <i class="fa fa-eye" aria-hidden="true" id="eye" onclick="toggle()"></i>
                </span>
                          </div>
                <script>
                    var state =false;
                    function toggle()
                    {
                            if(state)
                            {
                                    document.getElementById("password").setAttribute("type","password");
                                    document.getElementById("eye").style.color='#7a797e';
                                    state=false;
                            }
                            else
                            {
                                    document.getElementById("password").setAttribute("type","text");
                                    document.getElementById("eye").style.color='#5887ef';
                                    state=true;
                             }
                    }
                </script>--%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                       <%-- <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password length must be greater than 8" Font-Bold="False" Font-Italic="True" Font-Names="Matura MT Script Capitals" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red">*</asp:CustomValidator>--%>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="54px" Width="271px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password must be same" Font-Bold="False" Font-Italic="True" Font-Names="Matura MT Script Capitals" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Mobile Number:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="54px" Width="271px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Mobile Number is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Hostel Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="54px" Width="271px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Hostel Name is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Room Number:</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Height="54px" Width="271px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Room Number is empty" Font-Bold="False" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
              
              <tr>   
                    <td colspan ="2" align:"center" class="auto-style1"><br/><br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="REGISTER" CssClass="btn1" Font-Bold="True" Font-Size="Large"  Height="50px" Width="231px" OnClick="Button1_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" NavigateUrl="~/Login.aspx">Login Here</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                       <%-- <asp:Label ID="Label1" runat="server"></asp:Label>--%>
                    &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Strikeout="False" ForeColor="Red" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
