<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/3
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="bootstrap/js/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="bootstrap/js/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top ">

    <!-- Brand -->
    <a class="navbar-brand" href="#">Logo</a>
    <ul class="navbar-nav container-fluid">
        <!-- <ol class="breadcrumb">
          <li class="breadcrumb-item active"><a href="#">Home</a></li>
        </ol> -->



        <!-- Dropdown -->
        <div class="btn-group ml-auto">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                设置
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">用户中心</a>
                <a class="dropdown-item" href="#">购物车</a>
                <a class="dropdown-item" href="#">注销登录</a>
            </div>
        </div>
</nav>


</body>
</html>
