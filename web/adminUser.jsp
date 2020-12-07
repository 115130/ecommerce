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
                    <a class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-left"></em> 用户管理</a>
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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ol>
                <c:forEach items="${list}" var="user">
                    <div class="container">
                        <li>
                                ${user["userName"]}
                            <div class="input-group">
                                <span class="input-group-addon">密码</span>
                                <input type="text" value="123" class="form-control">
                            </div>
                            <button id="modifyButton" type="submit" class="btn btn-default btn-info pull-right">提交更改</button>
                            <button id="deleteButton" type="button" class="btn btn-default btn-danger pull-right">删除</button>
                        </li>
                    </div>
                </c:forEach>
                <script>
                    $(function(){
                        $("#deleteButton").click(
                            function (){
                            var json={"name":${user["userName"]}}
                            $.get("ServletDeleteUser",json)
                        }
                    )
                    $(function(){
                        $("#DELETEUSER").click(
                            function (){
                                $.get("ServletDeleteUser")
                            }
                        )
                        $(function(){
                            $("#deleteButton").click(
                                function (){
                                    var json={"name":${user["userName"]}}
                                    $.get("ServletDeleteUser",json)
                                }
                            )
                    });
                    $(function(){
                        $("#modifyButton").click(
                            function (){
                                var json={"password":$("#inputPassword").val()},
                                    {"name":${user["userName"]}}
                                $.get("ModifyUserServlet",json)
                            }
                        )
                    });
                </script>
            </ol>
        </div>
    </div>
</div>

</body>
</html>
