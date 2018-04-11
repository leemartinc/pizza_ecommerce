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
    <title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
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
    <% if (session.getAttribute("username") != null) {
    String username = (String) session.getAttribute("username");%>
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
                            <a href="checkout.jsp">
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
                    <h1><a href="index.jsp">Pizza</a></h1>
                </div>
                <div class=" h_menu4">
                    <ul class="memenu skyblue">
                        <li><a class="color8" href="shop.jsp">Shop</a></li>
                        
                        <!-- conditional if to show login or sign out-->
                        <li><a class="color4" href="login.jsp">Login</a></li>
                        <li><a class="color4" href="signup.jsp">Register</a></li>
                        <!-- -->
                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- products -->
    <!-- grow -->
    <div class="grow">
        <div class="container">
            <h2>Products</h2>
        </div>
    </div>
    <!-- grow -->
    <div class="pro-du">
        <div class="container">
            <div class="col-md-9 product1">
                
                
                <!--Gotta put this in a table-->
                <div class=" bottom-product">
                    <div class="col-md-6 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="single.html"><img class="img-responsive" src="images/pi3.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>
                        </div>
                        <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="single.html"><img class="img-responsive" src="images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>
                        </div>
                        <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class=" bottom-product">
                    <div class="col-md-6 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="single.html"><img class="img-responsive" src="images/pi5.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>
                        </div>
                        <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="single.html"><img class="img-responsive" src="images/pi.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>
                        </div>
                        <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"> </div>
                </div>


            </div>


            <div class="clearfix"></div>
        </div>
    </div>
    <!-- products -->
</body>
</html>
			