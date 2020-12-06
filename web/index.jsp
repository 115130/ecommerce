<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/3
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Theme Region">
    <meta name="description" content="">

    <title>主页</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">


    <!-- icons -->
    <link rel="icon" href="https://demo.themeregion.com/carrito/images/ico/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" sizes="57x57" href="images/ico/apple-touch-icon-57-precomposed.png">
    <!-- icons -->


</head>
<body>




<div class="tr-topbar">
    <div class="container clearfix">
        <div class="select-language">
            <div class="tr-dropdown">

            </div>
        </div>
        <div class="topbar-right">
            <ul class="tr-list">
                <li><span><a href="#"><span class="icon icon-support"></span>+123456789</a></span></li>
                <li><a href="#"><span class="icon icon-send"></span>abcdefg@asz.com</a></li>

            </ul>


        </div>
    </div><!-- /.container -->
</div><!-- /.tr-topbar -->

<div class="topbar-middle">
    <div class="container clearfix">
        <a class="tr-logo logo" href="index.jsp"><img class="img-fluid" src="images/logo.png" alt="Logo"></a>
        <a class="tr-logo tr-logo-2" href="index.jsp"><img class="img-responsive" src="images/logo-white.png" alt="Logo"></a>
        <form class="search-form" action="#" id="search" method="get">
            <input class="form-control" name="search" type="text" placeholder="在这里输入">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form><!-- /.form -->
        <div class="right-content">
            <div class="tr-user">
                <div class="user-image">
                    <img src="images/others/user.png" alt="Image" class="img-fluid">
                </div>
                <div class="user-option">
                    <div class="tr-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">用户
                            <span class="caret"></span></a>
                        <ul class="tr-dropdown-menu">
                            <li><a href="#">设置</a></li>
                            <li><a href="login.jsp">注销登录</a></li>
                        </ul>
                    </div><!-- /.dropdown -->
                </div>
            </div><!-- /.tr-user -->

            <ul class="tr-list cart-content">

            </ul>
        </div>
    </div><!-- /.container -->
</div><!-- /.topbar-middle -->

<!-- user-modal -->
<div class="user-modal">
    <div id="modal-signin" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="user-account text-center">
                        <h1>Create Account</h1>
                        <p>Don’t worry, we won’t spam you or sell your information.</p>
                        <form action="#" class="tr-form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary">Sign In</button>
                            <div class="forgot-password">
                                <a href="#">Forgot Password</a>
                            </div>
                            <ul class="tr-list social">
                                <li class="pull-left"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="pull-right"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.modal-signin -->

    <div id="modal-signup" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="user-account text-center">
                        <h1>Create Account</h1>
                        <p>别担心，我们不会给你发垃圾邮件或出售你的信息</p>
                        <form action="#" class="tr-form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <span>By continuing, you agree to our Terms of Use and Privacy Policy.</span>
                            <button type="submit" class="btn btn-primary">Create account</button>
                            <div class="already-acount">
                                <a href="#">Already have an acount?</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.modal-signup -->
</div><!-- /.user-modal -->



<div class="tr-banner">
    <div id="home-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item item active">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="banner-info">
                                <div class="info-middle">
                                    <span class="click-cart" data-animation="animated fadeInDown">Click Cart</span>
                                    <h1 data-animation="animated fadeInDown"><span>Athen</span> Flight Sneakers</h1>
                                    <div class="paragraphs" data-animation="animated fadeInDown">
                                        <p>I want to share with you their experiences, the difficulties were in my way</p>
                                    </div>
                                    <div data-animation="animated fadeInUp" class="buy-now">
                                        <span>￥130</span>
                                        <a class="btn btn-primary" href="#">购买</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="banner-image" data-animation="animated fadeInUp">
                                <div class="info-middle">
                                    <img src="images/others/banner-img.png" alt="Image" class="img-fluid">
                                </div>
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.carousel-item -->
            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="banner-info">
                                <div class="info-middle">
                                    <span class="click-cart" data-animation="animated fadeInDown">Click Cart</span>
                                    <h1 data-animation="animated fadeInDown"><span>Athen</span> 跑鞋</h1>
                                    <div class="paragraphs" data-animation="animated fadeInDown">
                                        <p>I want to share with you their experiences, the difficulties were in my way</p>
                                    </div>
                                    <div data-animation="animated fadeInUp" class="buy-now">
                                        <span>$130</span>
                                        <a class="btn btn-primary" href="#">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div data-animation="animated fadeInDown" class="banner-image">
                                <div class="info-middle">
                                    <img src="images/others/banner-img.png" alt="Image" class="img-fluid">
                                </div>
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.carousel-item -->
            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="banner-info">
                                <div class="info-middle">
                                    <span class="click-cart" data-animation="animated fadeInDown">Click Cart</span>
                                    <h1 data-animation="animated fadeInDown"><span>Athen</span> Flight Sneakers</h1>
                                    <div class="paragraphs" data-animation="animated fadeInDown">
                                        <p>I want to share with you their experiences, the difficulties were in my way</p>
                                    </div>
                                    <div data-animation="animated fadeInUp" class="buy-now">
                                        <span>$130</span>
                                        <a class="btn btn-primary" href="#">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div data-animation="animated fadeInUp" class="banner-image">
                                <div class="info-middle">
                                    <img src="images/others/banner-img.png" alt="Image" class="img-fluid">
                                </div>
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.carousel-item -->
            <div class="carousel-item">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="banner-info">
                                <div class="info-middle">
                                    <span class="click-cart" data-animation="animated fadeInDown">Click Cart</span>
                                    <h1 data-animation="animated fadeInDown"><span>Athen</span> Flight Sneakers</h1>
                                    <div class="paragraphs" data-animation="animated fadeInDown">
                                        <p>I want to share with you their experiences, the difficulties were in my way</p>
                                    </div>
                                    <div data-animation="animated fadeInUp" class="buy-now">
                                        <span>$130</span>
                                        <a class="btn btn-primary" href="#">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div data-animation="animated fadeInRight" class="banner-image">
                                <div class="info-middle">
                                    <img src="images/others/banner-img.png" alt="Image" class="img-fluid">
                                </div>
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.carousel-item -->
        </div><!-- /.carousel-inner -->
        <div class="container indicators-content">
            <ol class="carousel-indicators">
                <li data-target="#home-carousel" data-slide-to="0"></li>
                <li data-target="#home-carousel" data-slide-to="1"  class="active"></li>
                <li data-target="#home-carousel" data-slide-to="2"></li>
                <li data-target="#home-carousel" data-slide-to="3"></li>
            </ol>
        </div><!-- /.container -->
    </div><!-- /#home-carousel -->
</div><!-- /.tr-banner -->

<div class="main-wrapper">
    <div class="container">
        <div class="tr-promotion">
            <div class="row">
                <div class="col-md-5 col-lg-4">
                    <div class="promotion promotion-left">
                        <div class="left-content">
                            <h1>New Arrivalls</h1>
                            <span>1000+ New Accessories</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 col-lg-8">
                    <div class="promotion promotion-right">
                        <div class="right-content">
                            <h1>Discount 25% on All Clickcart</h1>
                            <h2>Electronics Items</h2>
                            <p>consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore, Lorem ipsum dolor sit amet .</p>
                            <a class="btn btn-primary" href="#">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div><!-- /.row -->
        </div><!-- /.tr-promotion -->



        <c:forEach items="${list}" var="product">
            <div class="tr-section products">
                <div class="product-category">
                    <a href="listing.jsp" class="category-title">
                        <h1>Men's Shopping</h1>
                        <span class="category-icon"> <img src="images/others/category1.png" alt="Icon" class="img-fluid"></span>
                    </a>
                    <ul class="tr-list category-list">
                        <li class="active">
                            <span>商品</span>
                            <a href="DetailsServlet?productName=${product["productName"]}" class="category-info">
                                <div class="category-image">



                                    <img  src="images/${product['productName']}.png" alt="Image" class="img-fluid">
                                </div>
                                <div class="overlay">
                                    <h2>${product["productName"]}</h2>
                                    <span class="color">${product["productProperty"]}</span>
                                    <span class="price">￥${product["productPrice"]}</span>
                                </div>
                            </a>
                        </li>

                        <li><span><a href="#">+ More Category</a></span></li>
                    </ul>
                </div>
            </div><!-- /.products -->
        </c:forEach>





    </div><!-- /.container -->
</div><!-- /.main-wrapper -->

<div class="tr-convenience">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon1.png" alt="Image" class="img-fluid">
                    </div>
                    <span>Free Delivery</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon2.png" alt="Image" class="img-fluid">
                    </div>
                    <span>Clients Discounts</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon3.png" alt="Image" class="img-fluid">
                    </div>
                    <span>Return Of Goods</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon4.png" alt="Image" class="img-fluid">
                    </div>
                    <span>Many Brands</span>
                </div>
            </div>
        </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.tr-convenience -->

<div class="tr-footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="left-content">
                        <h3>Sign up for newsletter</h3>
                        <p>Enter your email to receive relevant messaging tips and examples.</p>
                        <form action="#">
                            <input class="form-control" type="email" required="required" placeholder="Enter Your Email Id">
                            <input type="submit" class="btn">
                        </form>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h3>We Accept</h3>
                    <p>Enter your email to receive relevant messaging tips and examples.</p>
                    <div class="payment-card">
                        <ul class="tr-list">
                            <li><img src="images/others/card1.png" alt="Image" class="img-fluid"></li>
                            <li><img src="images/others/card2.png" alt="Image" class="img-fluid"></li>
                            <li><img src="images/others/card3.png" alt="Image" class="img-fluid"></li>
                            <li><img src="images/others/card4.png" alt="Image" class="img-fluid"></li>
                            <li><img src="images/others/card5.png" alt="Image" class="img-fluid"></li>
                            <li><img src="images/others/card6.png" alt="Image" class="img-fluid"></li>
                        </ul>
                    </div><!-- /.payment-card -->
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.footer-top -->
    <div class="footer-bottom">
        <div class="container">
            <div class="footer-widget">
                <div class="footer-logo">
                    <a href="#"><img src="images/footer-logo.png" alt="Logo" class="img-fluid"></a>
                </div>
                <span>Copyright &copy; 2017 <a href="#">Carrito</a></span>
                <span>Design By<a href="#"> Theme Region</a></span>
            </div><!-- /.footer-widget -->
            <div class="footer-widget">
                <h3>Product</h3>
                <ul class="tr-list">
                    <li><a href="#">Pricing</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">Customers</a></li>
                    <li><a href="#">One-Click Apps</a></li>
                    <li><a href="#">API</a></li>
                </ul>
            </div><!-- /.footer-widget -->
            <div class="footer-widget">
                <h3>Company</h3>
                <ul class="tr-list">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div><!-- /.footer-widget -->
            <div class="footer-widget">
                <h3>Help</h3>
                <ul class="tr-list">
                    <li><a href="#">Getting Started</a></li>
                    <li><a href="#">Feedback</a></li>
                    <li><a href="#">Referral Program</a></li>
                    <li><a href="#">Network Status</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div><!-- /.footer-widget -->
            <div class="footer-widget">
                <h3>Social</h3>
                <ul class="tr-list">
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a></li>
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a></li>
                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i>LinkedIn</a></li>
                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i>Google</a></li>
                </ul>
            </div><!-- /.footer-widget -->
        </div><!-- /.container -->
    </div><!-- /.footer-bottom -->
</div><!-- /.tr-footer -->



<!-- JS -->
<script src="js/jquery.min.js"></script>
<script src="js/tether.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/jquery-ui-min.js"></script>
<script src="js/jquery.spinner.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>

