<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/8
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
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

</head>
<body>






<div class="tr-breadcrumb">
    <div class="container">
        <div class="breadcrumb-info">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>

            </ol>
            <div class="page-title">
                <h1>结算</h1>
            </div>
        </div>
    </div><!-- /.container -->
</div><!-- /.tr-breadcrumb -->

<div class="main-wrapper">
    <div class="container">
        <div class="tr-section products-description">


            <form class="contact-form" name="contact-form" method="post" action="#">
                <div class="payment-category">

                    <div class="container">
                        <div class="jumbotron">
                            <h1>总金额:<%=request.getParameter("countVal")%></h1>
                        </div>
                    </div>
                    <div class="buttons">
                        <a href="delivery.jsp"  class="btn btn-primary pull-right">付款</a>
                    </div>
                </div>
            </form>
        </div><!-- /.products-description -->

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
