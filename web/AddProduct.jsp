<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/8
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>管理用户</title>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="AdminUserServlet" class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-left"></em> 用户管理</a>
                </li>
                <li>
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            商品管理
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="AdminProductServlet">管理商品</a></li>
                            <li><a href="AddProduct.jsp">添加商品</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-right"></em> 订单管理</a>
                </li>

                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">高级选项<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="DELETEUSERServlet" id="DELETEUSER">清理所有已删除用户</a>
                        </li>
                        <li>
                            <a id="PageDark">黑暗模式</a>
                        </li>
                        <li>
                            <a href="OutLoginServlet">退出登录</a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

<form role="form" action="AdminAddProductServlet" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label id="name">商品名称</label>
        <input type="text" class="form-control" name="productName"
               placeholder="请输入商品名称">
    </div>
    <div class="form-group">
        <label for="inputfile" class="center-block">照片</label>
        <input type="file" class="center-block" id="inputfile">
        <div class="form-group">
            <label id="Count">商品数量</label>
            <input type="text" class="form-control" name="productCount"
                   placeholder="请输入商品数量">
        </div>
        <div class="form-group">
            <label id="Price">商品价格</label>
            <input type="text" class="form-control" name="productPrice"
                   placeholder="请输入商品价格">
        </div>
        <div class="form-group">
            <label id="Product">商品属性</label>
            <input type="text" class="form-control" name="productProduct"
                   placeholder="请输入商品属性">
        </div>
        <button type="submit" class="btn btn-default center-block">添加用户</button>
    </div>
</form>
</body>
</html>
