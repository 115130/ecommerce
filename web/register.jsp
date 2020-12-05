<%--
  Created by IntelliJ IDEA.
  User: miao
  Date: 2020/12/5
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <%request.setCharacterEncoding("utf-8");%>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body id ="body">


<div class="container">
    <div class="jumbotron text-center mt-5"  >
        <h1 class="text-muted">注册</h1>
    </div>
    <form action="RegisterServlet" method="post">
        <div class="input-group mb-1">
            <input id="inputUser" name="user" type="text"  class="form-control rounded" placeholder="用户名" onblur="testUser()" >
            <span id="inputUserSpan" class="input-group-text d-none"></span>
        </div>
        <div class="input-group mb-1 mt-3 mb-5" >
            <input id="inputPassword" type="password" name="password" class="form-control rounded" placeholder="密码" onblur="testPassword()">
            <span id="inputPasswordSpan" class="input-group-text d-none"></span>
        </div>
        <div class="btn-group btn-group-lg container pl-5 pr-5 mt-5">
            <button type="submit" class="btn btn-primary ml-2 mr-2 rounded">注册</button>
        </div>
    </form>

</div>

<SCRIPT>
    $(function as(){
        $("[id=inputUser]").blur(
            function(){
                var userName=$("[id=inputUser]").val();
                var json={"name":userName};
                $.get("FindUserByNameServlet",json,callBack);//发送请求
                function callBack(data){
                    if(data==="ok"){

                        $("#inputUserSpan").css("color","green").html("用户名可以使用");

                    }else{
                        $("#inputUserSpan").css("color","red").html("用户名已被占用");
                    }
                }
            });
    });

    function testUser(){
        document.getElementById("inputUserSpan").removeAttribute("class");
        document.getElementById("inputUserSpan").setAttribute("class","input-group-text");
    }
    function testPassword(){
        var password=document.getElementById("inputPassword").value;
        document.getElementById("inputPasswordSpan").removeAttribute("class");
        document.getElementById("inputPasswordSpan").setAttribute("class","input-group-text");
        if(/[0-9A-Za-z]{6,20}/.test(password)){
            document.getElementById("inputPasswordSpan").innerHTML="密码合乎要求";
        }else{
            document.getElementById("inputPasswordSpan").innerHTML="密码需要六位";
        }
    }

    if(new Date().getHours()>=19){
        document.getElementById("body").setAttribute("class","bg-dark text-white");
    }else{
        document.getElementById("body").setAttribute("class","bg-light text-dark");
    }
</SCRIPT>


</body>
</html>
