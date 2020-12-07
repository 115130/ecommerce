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
    <title>管理</title>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->

       <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
       <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->

<div class="container">
  <div class="row clearfix">
      <div class="col-md-12 column">
          <ul class="nav nav-tabs">
              <li class="active">
                  <a href="AdminUserServlet" class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-left"></em> 用户管理</a>
              </li>
              <li>
                  <a class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-center"></em> 商品管理</a>
              </li>
              <li>
                  <a class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-right"></em> 订单管理</a>
              </li>

              <li class="dropdown pull-right">
                  <a href="#" data-toggle="dropdown" class="dropdown-toggle">高级选项<strong class="caret"></strong></a>
                  <ul class="dropdown-menu">
                      <li>
                          <a id="DELETEUSER">清理所有已删除用户</a>
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

</body>
</html>
