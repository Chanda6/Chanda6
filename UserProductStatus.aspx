<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductStatus.aspx.cs" Inherits="WebApplication17.UserProductStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <style>
        .progress
        {
            
        }
        ul
        {
            text-align:center;
        }
        ul li
        {
            display:inline-block;
            width:200px;
            position:relative;
        }
        ul li .fa
        {
            background:#ccc;
            width:16px;
            height:16px;
            color:white;
            border-radius:50px;
            padding:5px;
        }
        ul li .fa ::after 
        {
            content:'';
            background:#ccc;
            height:5px;
            width:205px;
            display:block;
            position:absolute;
            left:0 ;
            top: 10px;
            z-index:-1;
        }
        .ul li:nth-child(1).fa
        {
            background:#148e14;
        }
        ul li:nth-child(1).fa::after
        {
            background-color:#148e
        }
        
        </style>
</head>
<body style="background-image:url(/pics/del.jpeg); background-position:right; background-repeat:no-repeat">
    
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
