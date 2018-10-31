﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script>
        function Login() {
            var url = "https://accounts.google.com/o/oauth2/v2/auth?";
            url += "scope=email profile&";
            url += "redirect_uri=http://localhost:63577/SSOcallback.aspx&";
            url += "response_type=code&";
            url += "client_id=709970692634-racas8jbr9ta34put8lg51pps952ol2n.apps.googleusercontent.com&";
            url += "state=12345&";
            url += "approval_prompt=force&";
            window.location.href = url;
        }
        

        $(function () {
            $('#Login').click(function (e) {
                Login();
            });
        });
    </script>
</head>
   
<body>
    <div class="row" style="margin:10px">
        <div>
            <button class="btn btn-success" id="Login">登入</button>
        </div>
    </div>
</body>
</html>