<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication17.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    html, body {
  border: 0;
  padding: 0;
  margin: 0;
  height: 100%;
}

body {
  /*background-image:url(pics/bfora.jpg);*/
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 16px;
}

form {
  background: white;
  width: 40%;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
  font-family: lato;
  position: relative;
  color: #333;
  border-radius: 10px;
}
form header {
  background: blue;
  padding: 30px 20px;
  color: white;
  font-size: 1.2em;
  font-weight: 600;
  border-radius: 10px 10px 0 0;
}
form label {
  margin-left: 40px;
  display: inline-block;
  margin-top: 30px;
  margin-bottom: 5px;
  position: relative;
}
form .help {
  margin-left: 20px;
  font-size: 0.8em;
  color: #777;
}
.Button {
  position: relative;
  margin-top: 30px;
  margin-bottom: 30px;
  left: 50%;
  transform: translate(-50%, 0);
  font-family: inherit;
  color: white;
  background: #FF3838;
  outline: none;
  border: none;
  padding: 5px 15px;
  font-size: 1.3em;
  font-weight: 400;
  border-radius: 3px;
  box-shadow: 0px 0px 10px rgba(51, 51, 51, 0.4);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}
.Button:hover {
  background: #ff5252;
}

    .auto-style1 {
        width: 472px;
        height: 310px;
            text-align: center;
        }

    .auto-style2 {
        margin-top: 26px;
    }

        .auto-style3 {
            width: 443px;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: large;
        }

    </style>
</head>
<body style= "background-image:url(pics/adminlog.jpg);">
    <form id="form1" runat="server">
        <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>--%>
        <div class="auto-style1">
            <header class="auto-style3">Admin Login</header>
  <label class="auto-style5"><span class="auto-style4">&nbsp;&nbsp;&nbsp;</span> Username<span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</label><asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="137px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="It must not be null" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>

            <br />

  <label><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="24px" Width="135px"></asp:TextBox>
<asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Valid Password" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
            <%--<asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox2" FilterType="Custom" validChars="Characters" runat="server"></asp:FilteredTextBoxExtender>--%>

  
         <br/><br/><br/>

            <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/pics/AdminLogin.jpg" OnClick="ImageButton1_Click" Width="166px" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style2" DisplayMode="List" Height="59px" />
        </div>
    </form>
</body>
</html>
