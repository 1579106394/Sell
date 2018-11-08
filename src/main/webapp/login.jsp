<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mycss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>

<body>

<jsp:include page="header.jsp"/>

<!-- 登录页面 -->
<div class="login">
    <div class="login-form">
        <div class="panel panel-default">
            <div class="panel-heading">用户登录</div>
            <div class="panel-body">
                <form action="${pageContext.request.contextPath}/api/user/login.html" method="post">
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon1">用户名</span>
                        <input type="text" class="form-control" name="username" placeholder="请输入账号" aria-describedby="sizing-addon1">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon2">&nbsp;密&nbsp;码&nbsp;&nbsp;</span>
                        <input type="password" class="form-control" name="password" placeholder="请输入密码" aria-describedby="sizing-addon2">
                    </div>
                    <br>

                    <span style="color:red;">${error}</span>

                    <br>
                    <button type="submit" class="btn btn-primary">登录</button>
                    <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-primary">注册</a>
                </form>
            </div>
        </div>

    </div>
</div>
<!-- 登录页面结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp"/>
<!-- 底部导航结束 -->


</body>

</html>