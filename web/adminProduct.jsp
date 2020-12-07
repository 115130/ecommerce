<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/7
  Time: 22:11
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
                    <a href="AdminProductServlet" class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-center"></em> 商品管理</a>
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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ol>
                <c:forEach items="${list}" var="product">
                    <div class="container">
                        <li>
                            <label>商品</label>
                            <div class="input-group">
                                <span class="input-group-addon">商品名称</span>
                                <input id="productName" type="text"  value="${product["productName"]}" class="form-control">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon">商品数量</span>
                                <input id="productCount" type="text"  value="${product["productCount"]}" class="form-control">
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">商品价格</span>
                                <input id="productPrice" type="text"  value="${product["productPrice"]}" class="form-control">
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">商品属性</span>
                                <input id="productProperty" type="text"  value="${product["productProperty"]}" class="form-control">
                            </div>
                            <a href="ModifyProductServlet?"  id="modifyButton" type="button" class="btn btn-default btn-info pull-right">提交更改</a>
                            <a href="DeleteServletUser?userName=${product["userName"]}" id="deleteButton" type="button" class="btn btn-default btn-danger pull-right">删除</a>
                        </li>
                    </div>
                </c:forEach>
            </ol>
        </div>
    </div>
</div>
<script>
    $(function (){
        $("#productCount").blur(
            function (){
                var productProperty=$("#productCount").attr("id");
                var productPropertyVal=$("#productCount").val().toString();
                var productPropertyUrl=productProperty+"="+productPropertyVal+"&";
                $("#modifyButton").attr("href",$("#modifyButton").attr("href")+productPropertyUrl)
            }
        )
    })
    $(function (){
        $("#productCount").blur(
            function (){
                var productCount=$("#productCount").attr("id");
                var productCountVal=$("#productCount").val().toString();
                var productCountUrl=productCount+"="+productCountVal+"&";
                $("#modifyButton").attr("href",$("#modifyButton").attr("href")+productCountUrl)
            }
        )
    })
    $(function (){
        $("#productPrice").blur(
            function (){
                var productPrice=$("#productPrice").attr("id");
                var productPriceVal=$("#productPrice").val().toString();
                var productPriceUrl=productPrice+"="+productPriceVal+"&";
                $("#modifyButton").attr("href",$("#modifyButton").attr("href")+productPriceUrl)
            }
        )
    })
    $(function (){
        $("#productName").blur(
            function (){
                var productName=$("#productName").attr("id");
                var productNameVal=$("#productName").val().toString();
                var productNameUrl=productName+"="+productNameVal+"&";
                $("#modifyButton").attr("href",$("#modifyButton").attr("href")+productNameUrl)
            }
        )
    })
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
