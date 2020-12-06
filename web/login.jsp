<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/3
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body id="body">

<div class="container">
    <div class="jumbotron text-center mt-5"  >
        <h1 class="text-muted">登录</h1>
    </div >
    <form action="LoginServlet" method="post">
        <div class="input-group mb-1">
            <input id="inputUser" name="name" type="text"  class="form-control rounded" placeholder="用户名" >
            <span id="inputUserSpan" class="input-group-text d-none"></span>
        </div>
        <div class="input-group mb-1 mt-3 mb-5" >
            <input id="inputPassword" name="password" type="password" class="form-control rounded" placeholder="密码">
            <span id="inputPasswordSpan" class="input-group-text d-none"></span>
        </div>
        <label id="label1"></label>
        <div class="btn-group btn-group-lg container pl-5 pr-5 mt-5">
            <button id="login_button"  type="submit" class="btn btn-primary ml-2 mr-2 rounded" disabled> 登录</button>
            <a type="button" href="register.jsp" class="btn btn-primary ml-2 mr-2 rounded">注册</a>
        </div>
    </form>


</div>


<SCRIPT>
    $(function (){
        $("[id=inputPassword]").blur(
            function  a(){
                if(!($("[id=inputUser]").val()&&$("[id=inputPassword]").val())){
                    $("#label1").html("请输入用户名或者密码");
                }else{
                    $("#label1").html("");
                    document.getElementById("login_button").removeAttribute("disabled");
                }

            }
        )
    });
    $(function(){
        $("[id=inputUser]").blur(
            function(){
            var userName=$("[id=inputUser]").val();
            var json={"name":userName};
            $.get("FindUserByNameServlet",json,callBack);//发送请求

            function callBack(data) {
                if (data === "error") {
                    testUser();
                    $("#inputUserSpan").css("color", "green").html("用户名不存在");
                } else {
                    testPassword();
                }

            }
    });
    });
    function testUser(){
        document.getElementById("inputUserSpan").removeAttribute("class");
        document.getElementById("inputUserSpan").setAttribute("class","input-group-text");
    }
    function testPassword(){
        document.getElementById("inputUserSpan").setAttribute("class","input-group-text d-none");
    }
</SCRIPT>
<SCRIPT>
    if(new Date().getHours()>=19){
        document.getElementById("body").setAttribute("class","bg-dark text-white");
    }else{
        document.getElementById("body").setAttribute("class","bg-light text-dark");
    }
</SCRIPT>
</body>
</html>
