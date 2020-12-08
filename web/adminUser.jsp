<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/7
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                            <a href="ExitLoginServlet">退出登录</a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ol>
                <c:forEach items="${list}" var="user">
                    <div class="container">
                        <li>

                                <label name="username">${user["userName"]}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">密码</span>
                                    <input id="password" type="text"  value="${user["userPassword"]}" class="form-control">
                                </div>
                                <a href="ModifyUserServlet?userName=${user["userName"]}&password="  id="modifyButton" type="button" class="btn btn-default btn-info pull-right">提交更改</a>
                                <a href="DeleteServletUser?userName=${user["userName"]}" id="deleteButton" type="button" class="btn btn-default btn-danger pull-right">删除</a>
                        </li>
                    </div>
                </c:forEach>
            </ol>
        </div>
    </div>
</div>
<script>
    $(function (){
        $("#password").blur(
            function (){
                var href=$("#modifyButton").attr("href");
                var href1=$("#password").val().toString();
                $("#modifyButton").attr("href",href+href1)
            }
        )
    })
</script>
</body>
</html>
