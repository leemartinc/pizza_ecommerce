<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Parlor</title>
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
                        <li><a class="color8" href="shop.jsp">Shop</a></li>
                        <% if (session.getAttribute("username") != null) { %>
                        <!-- conditional if to show login or sign out-->
                        <li><a class="color4" href="/user">Logout</a></li>
                        <!-- -->
                        <% } else { %>
                        <li><a class="color4" href="login.jsp">Login</a></li>
                        <li><a class="color4" href="signup.jsp">Register</a></li>
                        <% } %>
                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <div class="banner">
        <div class="container">
            <script src="js/responsiveslides.min.js"></script>
            <script>
                $(function() {
                    $("#slider").responsiveSlides({
                        auto: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        pager: true,
                    });
                });
            </script>
            <div id="top" class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li>

                        <div class="banner-text">
                            <h3>Lorem Ipsum is </h3>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>

                        </div>

                    </li>
                    <li>

                        <div class="banner-text">
                            <h3>There are many </h3>
                            <p>Popular belief Contrary to , Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>


                        </div>

                    </li>
                    <li>
                        <div class="banner-text">
                            <h3>Sed ut perspiciatis</h3>
                            <p>Lorem Ipsum is not simply random text. Contrary to popular belief, It has roots in a piece of classical Latin literature from 45 BC.</p>


                        </div>

                    </li>
                </ul>
            </div>

        </div>
    </div>

    <!--content-->
    <div class="container">
        <div class="cont">
            <div class="content">
                <div class="content-top-bottom">
                    <h2>Featured PIZZA</h2>
                    <div class="col-md-6 men">
                        <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/t1.jpg" alt="" style="width:700px;height:500px;">
						<div class="b-wrapper">

											<h3 class="b-animate b-from-top top-in   b-delay03 ">
                                                                                            
											<h3 class="b-animate b-from-top top-in   b-delay03 " style="width:700px;height:500px;">

												<span>Pepperoni Pizza</span>	
											</h3>
										</div>
					</a>


                    </div>
                    <div class="col-md-6">
                        <div class="col-md1 ">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/t2.jpg" alt="" style="width:700px;height:500px;">
							<div class="b-wrapper">
											<h3 class="b-animate b-from-top top-in1   b-delay03 " style="width:700px;height:500px;">
												<span style="">Cheese Pizza</span>	
											</h3>
										</div>
						</a>

                        </div>

                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="content-top">
                    <h1>Recommended</h1>
                    <div class="grid-in">
                        <div class="col-md-3 grid-top simpleCart_shelfItem">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/t3.jpeg" alt="" style="height: 128px">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 " style="width: inherit; height: inherit;">
									<span>Mac n' Cheese</span>
									
								</h3>
							</div>
						</a>


                            <p><a href="single.html">Mac n' Cheese</a></p>
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="col-md-3 grid-top simpleCart_shelfItem">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/pi.jpg" alt="" style="height: 128px;">
							<div class="b-wrapper">
											<h3 class="b-animate b-from-left    b-delay03 " style="width: inherit; height: inherit;">
												<span>Meatball</span>	
											</h3>
										</div>
						</a>
                            <p><a href="single.html">Meatball</a></p>
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="col-md-3 grid-top simpleCart_shelfItem">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/p2.jpg" alt="" style="height: 128px;">
							<div class="b-wrapper">
<<<<<<< Updated upstream:pizza_shop/web/templateToUseLater/index.html
											<h3 class="b-animate b-from-left    b-delay03 ">
=======
											<h3 class="b-animate b-from-left    b-delay03 " style="width: inherit; height: 128px;">
>>>>>>> Stashed changes:pizza_shop/web/index.html
												<span>Hawaiian</span>	
											</h3>
										</div>
						</a>
                            <p><a href="single.html">Hawaiian</a></p>
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="col-md-3 grid-top">
                            <a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="images/pi4.jpg" alt="" style="height: 128px;">
							<div class="b-wrapper">
<<<<<<< Updated upstream:pizza_shop/web/templateToUseLater/index.html
											<h3 class="b-animate b-from-left    b-delay03 ">
=======
											<h3 class="b-animate b-from-left    b-delay03 " style="width: inherit; height: inherit;">
>>>>>>> Stashed changes:pizza_shop/web/index.html
												<span>The Special</span>	
											</h3>
										</div>
						</a>
                            <p><a href="single.html">The Special</a></p>
                            <a href="#" class="item_add">
                                <p class="number item_price"><i> </i>$500.00</p>
                            </a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!----->
        </div>
        <!---->
    </div>
</body>
</html>
			