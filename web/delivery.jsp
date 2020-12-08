<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/8
  Time: 21:04
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
    <!-- icons -->

</head>
<body>





<div class="topbar-middle">
    <div class="container clearfix">
        <a href="index.jsp" type="button" class="btn btn-primary">主页</a>
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
                        <p>Don’t worry, we won’t spam you or sell your information.</p>
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



<div class="main-wrapper">
    <div class="container">
        <div class="tr-section tr-congrats text-center">
            <div class="congrats-content">
                <div class="icon">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                </div>
                <h1>你已付款完成</h1>
                <p>所有关于发货的信息我们都会用短信通知您</p>
            </div><!-- /.congrats-content -->
        </div><!-- /.tr-section -->
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
