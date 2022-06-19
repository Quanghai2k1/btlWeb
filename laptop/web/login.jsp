<%-- 
    Document   : login
    Created on : Apr 17, 2022, 12:00:34 AM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <title>Login</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="sign-in sign">
                <p id="qs">Bạn đã có tài khoản?</p>
                <form action="signin" method="post">
                    <p id="alert">${mess}</p>
                    <input class="UP" type="text" name="user" id="user" placeholder="Username">
                    <input class="UP" type="password" name="pass" id="pass" placeholder="Password">
                    <input type="submit" value="Sign In" name="signin" class="button-sign">
                </form>
                <div class="remember-forgot">
                    <div class="remember">
                        <input id="remember" value="Remember" type="checkbox" name="remember"> <span>Remember Me</span>
                    </div>
                    <a href="" id="forgot">Forgot Password</a>
                </div>

                <p id="or">--Or Sign in With--</p>
                <div class="face-google">
                    <button id="face">Facebook</button>
                    <button id="Google">Google</button>
                </div>

                <p id="qs1">--Nếu đã có tài khoản--</p>
            </div>


            <div class="sign-up sign">
                <p id="qs">Bạn chưa có tài khoản?</p>
                <p id="alert">${mess}</p>
                <form action="signup" method="post">
                    
                    <input class="UP" type="text" name="user" id="user" placeholder="Tên tài khoản">
                    <input class="UP" type="password" name="pass" id="pass" placeholder="Mật khẩu">
                    <input class="UP" type="password" name="repass" id="repass" placeholder="Nhập lại mật khẩu">
                    <input class="UP" type="text" name="sdt" id="user" placeholder="Số điện thoại">
                    <input class="UP" type="text" name="diachi" id="user" placeholder="Địa chỉ">
                    <input type="submit" value="Sign Up" class="button-sign">

                </form>
                <p id="qs1">--Nếu đã có tài khoản--</p>
            </div>

            <button id="but-toggle">Sign in / Sign up</button>
        </div>

        <script>
            $(document).ready(function(){
                $(".sign-up").hide();

                $("#but-toggle").click(function(){
                    $(".sign-in,.sign-up").toggle();
                })
            })
        </script>
    </body>
</html>
