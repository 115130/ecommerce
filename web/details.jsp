<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/6
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Theme Region">
    <meta name="description" content="">

    <title>Carrito | Ecommerce HTML Template.</title>

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
<div class="tr-breadcrumb">
    <div class="container">
        <div class="breadcrumb-info">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Product Details</li>
            </ol>
            <div class="page-title">
                <h1>Product Details</h1>
            </div>
        </div>
    </div><!-- /.container -->
</div><!-- /.tr-breadcrumb -->

<div class="main-wrapper product-details">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-lg-3">
                <div class="product-categories tr-section">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#faq-1">
                                    <span>Latest Arrivals</span>
                                </a>
                            </div><!-- panel-heading -->


                        </div><!-- panel -->

                        <div class="panel panel-default">


                            <div id="faq-2" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <ul class="tr-list">

                                    </ul>
                                </div>
                            </div>
                        </div><!-- panel -->

                        <div class="panel panel-default">


                            <div id="faq-3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="tr-list">

                                    </ul>
                                </div>
                            </div>
                        </div><!-- panel -->

                        <div class="panel panel-default">

                            <div id="faq-4" class="panel-collapse collapse">
                                <div class="panel-body">

                                </div>
                            </div>
                        </div><!-- panel -->

                        <div class="panel panel-default">

                            <div id="faq-5" class="panel-collapse collapse">
                                <div class="panel-body">

                                </div>
                            </div>
                        </div><!-- panel -->

                        <div class="panel panel-default">


                            <div id="faq-6" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="tr-list">

                                    </ul>
                                </div>
                            </div>
                        </div><!-- panel -->
                    </div>
                </div><!-- /.product-categories -->
            </div>

            <div class="col-md-8 col-lg-9">
                <!-- /.product-details -->
                <c:forEach items="${list}" var="product">
                <div class="tr-section product-details">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-details-slider mt-5">
                                <div class="product">
                                    <img src="images/${product["productName"]}.png" alt="Image" class="img-fluid">
                                </div>
                                <div class="product">
                                    <img src="images/${product["productName"]}.png" alt="Image" class="img-fluid">
                                </div>
                            </div><!-- /.product-details-slider -->
                        </div>
                        <div class="col-lg-6">
                            <div class="products-details-info">
                                <ul class="tr-list list-inline tr-share-content">
                                    <li class="share-icon">
                                        <i class="fa fa-share-alt" aria-hidden="true"></i>
                                        <span><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></span>
                                    </li>
                                </ul><!-- /.tr-share -->

                                <h1>${product["productName"]}</h1>
                                <div class="rating-star">
                                    <ul class="tr-list rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    </ul>
                                </div><!-- /.rating-star -->
                                <div class="quantity-price">
                                    <div class="price">
                                        <span id="Price">${product["productPrice"]}</span>
                                    </div>
                                    <div class="quantity" data-trigger="spinner">
                                        <a class="btn" href="javascript:;" data-spin="down"><i class="fa fa-minus"></i></a>
                                        <input type="text" id="productQuantity" name="quantity" value="1" title="quantity" class="input-text">
                                        <a class="btn" href="javascript:;" data-spin="up"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                                <div class="add-to-cart">
                                    <button id="buttonAddCart" class="btn btn-primary ">加入购物车</button>
                                    <span class="icon icon-pulse"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <SCRIPT>
                    $(function as(){
                        $("[id=buttonAddCart]").click()(
                            function(){
                                var json={"productName":${product["productName"]},
                                    "productQuantity":[]

                                };
                                $.get("FindUserByNameServlet",json,callBack);//发送请求
                                function callBack(data){
                                    if(data=="error"){
                                        $("#inputUserSpan").css("color","green").html("用户名可以使用");
                                    }else{
                                        $("#inputUserSpan").css("color","red").html("用户名已被占用");
                                    }
                                }
                            });
                    });
                </SCRIPT>
                </c:forEach>

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
                                            <input class="form-control" required="required"  type="email" placeholder="Enter Your Email Id">
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