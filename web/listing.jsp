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
<body id="body">






<div class="tr-menu">

</div><!-- /.tr-menu -->

<div class="tr-breadcrumb">
    <div class="container">
        <div class="breadcrumb-info">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">主页</a></li>
                <li class="breadcrumb-item active">购物车</li>
            </ol>
            <div class="page-title">
                <h1>购物车</h1>
            </div>
        </div>
    </div><!-- /.container -->
</div><!-- /.tr-breadcrumb -->

<div class="main-wrapper">
    <div class="container">

        <div class="tr-section products-description">
            <div class="cart-title">
                <span>购物车</span>
            </div>

            <form class="woocommerce-cart-form" action="#">
                <div class="item-info-menu">
                    <div class="row">
                        <div class="col-md-5">
                            <span>Item</span>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <span>Color</span>
                        </div>
                        <div class="col-md-2">
                            <span>QTY</span>
                        </div>
                        <div class="col-lg-1 col-md-2">
                            <span class="price">Price</span>
                        </div>
                    </div><!-- /.row -->
                </div>
                <ul class="tr-list cart-list">
<c:forEach items="${list}" var="productList">
                    <li class="cart-item remove-item">
                        <span class="remove-icon"><i class="fa fa-times" aria-hidden="true"></i></span>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="product">
                                    <a href="details.html">
                                                <span class="product-image">
                                                    <img src="images/product/product2.png" alt="Image" class="img-fluid">
                                                </span>
                                        <span class="product-title">${productList["ProductName"]}</span>
                                        <span class="color">${productList["ProductProperty"]}</span>
                                    </a>
                                </div><!-- /.product -->
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="tr-color">
                                    <input type="radio" name="sellType" id="color2">
                                    <label></label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div  class="quantity" data-trigger="spinner">
                                    <a class="btn pull-left" href="javascript:;" data-spin="down"><i class="fa fa-minus"></i></a>
                                    <input type="text" id="count" name="quantity" value="${productList["ProductCount"]}" title="quantity" class="input-text">
                                    <a class="btn pull-right" href="javascript:;" data-spin="up"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-2 pull-right">
                                <span id="OnePrice" class="price ">￥${productList["ProductPrice"]}</span>
                            </div>
                        </div>
                    </li>
                </ul>
            </form>
            <ul class="tr-list cart-totals">
                <li>
                    <div class="row">
                        <div class="col-4 col-lg-9 col-md-8">
                            <span>总计</span>
                        </div>

                        <div class="col-4 col-lg-1 col-md-2">
                            <span id="AllPrice" class="price">$79.99</span>
                        </div>
                    </div>
                </li>
</c:forEach>
            </ul>
            <div class="buttons">

                <a href="BillServlet" id="countM"  class="btn btn-primary pull-right">结算</a>
            </div>
        </div><!-- /.products-description -->
    </div><!-- /.container -->
</div><!-- /.main-wrapper -->
<script>
    $(function (){
        $("#body").mousemove(
            function (){
                var count=$("#count").val();
                var price=$("#OnePrice").val();
                var a= parseInt(count)+parseInt(price);
                $("#AllPrice").val(a);
                $("#countM").attr("href",$("#countM").attr("href")+"?"+"count"+a)
            })
    })
</script>
<div class="tr-convenience">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon1.png" alt="Image" class="img-fluid">
                    </div>
                    <span>无需邮费</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon2.png" alt="Image" class="img-fluid">
                    </div>
                    <span>良好的客服</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon3.png" alt="Image" class="img-fluid">
                    </div>
                    <span>可随时退货</span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="convenience">
                    <div class="icon">
                        <img src="images/others/icon4.png" alt="Image" class="img-fluid">
                    </div>
                    <span>品类繁多</span>
                </div>
            </div>
        </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.tr-convenience -->

<div class="tr-footer">

    <div class="footer-bottom">
        <div class="container">

            <div class="footer-widget">
                <h3>商品</h3>
                <ul class="tr-list">
                    <li><a href="#">定价</a></li>
                    <li><a href="#">特征</a></li>
                    <li><a href="#">消费</a></li>
                    <li><a href="#">一次点击</a></li>
                    <li><a href="#">API</a></li>
                </ul>
            </div><!-- /.footer-widget -->
            <div class="footer-widget">
                <h3>Company</h3>
                <ul class="tr-list">
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">博客</a></li>
                    <li><a href="#">职业</a></li>
                    <li><a href="#">联系我们</a></li>
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
