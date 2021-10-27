<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="ResetPassword.aspx.cs" Inherits="WebApplication17.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
      <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            align-content:center;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
            align-content:center;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
          .auto-style1 {
              text-align: center;
              width: 569px;
              height: 57px;
              margin-left: 162px;
          }
    </style>
</head>
<body style="width: 989px; background-image:url('https://rakuten.today/wp-content/uploads/2016/02/key_01-759x500.jpg'); margin-left: 172px; margin-top: 161px;" >
    <form id="form1" runat="server">
       <div class="container" style="background-color: #FFFFFF">
                <h1 class="auto-style1" style="background-color: #003380; color: #FFFFFF;">Reset Password </h1>
            <label for="uname"><b>New Password</b></label>
            <asp:TextBox runat="server" ID="tbNewPass" placeholder="New Password" TextMode="Password" Visible="true"></asp:TextBox>
            <label for="psw"><b>Confirm Password</b></label>
            <asp:TextBox runat="server" ID="tbConfirmPass" TextMode="Password" placeholder="Confirm Password" OnTextChanged="tbConfirmPass_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btRecPass" Visible="true" CssClass="lgnbtn" Onclick="btRecPass_Click" Text="RESET" />
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>

       </div> 

    </form>
</body>
</html>
