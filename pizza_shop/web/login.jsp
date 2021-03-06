<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--fonts-->
    <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <!-- start menu -->
    <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/memenu.js"></script>
    <script>
        $(document).ready(function() {
            $(".memenu").memenu();
        });
    </script>
    <script src="js/simpleCart.min.js">
    </script>
</head>

<body>
    <!--header-->
    <div class="header">
        <div class="header-top">
            <div class="container">
                <div class="social">
                </div>
                <div class="header-left">

                    <div class="search-box">
                        <div id="sb-search" class="sb-search">
                            <form action="#" method="post">
                                <input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"> </span>
                            </form>
                        </div>
                    </div>

                    <!-- search-scripts -->
                    <script src="js/classie.js"></script>
                    <script src="js/uisearch.js"></script>
                    <script>
                        new UISearch(document.getElementById('sb-search'));
                    </script>
                    <!-- //search-scripts -->

                    <div class="ca-r">
                        <div class="cart box_1">
                            <a href="checkout.html">
                                <h3>
                                    <div class="total">
                                        <span class="simpleCart_total"></span> </div>
                                    <img src="images/cart.png" alt="" /></h3>
                            </a>
                            <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
        <div class="container">
            <div class="head-top">
                <div class="logo">
                    <h1><a href="index.html">Pizza</a></h1>
                </div>
                <div class=" h_menu4">
                    <ul class="memenu skyblue">
                        <li><a class="color8" href="index.html">Frozen</a></li>
                        <li><a class="color1" href="#">Baked</a>
                        </li>
                        <li class="grid"><a class="color2" href="#">Combos</a>
                        </li>
                        <!-- conditional if to show login or sign out-->
                        <li><a class="color4" href="login.html">Login</a></li>
                        <li><a class="color4" href="login.html">Logout</a></li>
                        <!-- -->
                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- grow -->
    <div class="grow">
        <div class="container">
            <h2>Login</h2>
        </div>
    </div>
    <!-- grow -->
    <!--content-->
    <div class="container">
        <div class="account">
            <div class="account-pass">
                <div class="col-md-8 account-top">
                    <span style="color: red">${message}<br /></span>
                    <form action="user" method="post">

                        <div>
                            <span>Username</span>
                            <input name="username" type="text">
                        </div>
                        <div>
                            <span>Password</span>
                            <input name="username" type="password">
                        </div>
                        <input type="submit" value="Login">
                    </form>
                    <a href="signup.jsp">Register</a>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>

    </div>

    <!--//content-->

</body>
</html>
			