<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="WebApplication17.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <table align:"center" align="center" style="width: 700px; height: 600px; background-color: #5f98f3">
                <tr>
                    <td colspan ="2" align:"center" class="auto-style1"><h2 class="auto-style1">Registration Page</h2></td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">First Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="54px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Last Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="54px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Email ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="54px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="54px" Width="271px" TextMode="Password"></asp:TextBox>
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
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="54px" Width="271px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%" class="auto-style2">Mobile Number:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="54px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan ="2" align:"center" class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Font-Size="Large" Height="51px" Width="231px" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
