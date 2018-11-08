<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- 顶部 -->
<div class="header">
    <img src="${pageContext.request.contextPath}/img/logo.png" class="header-logo">
    <span class="header-title">中 国 拍 卖 网</span>


        <div class="btn-group">
            <c:if test="${sessionScope.user == null}">
            <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-default">登录</a>
            <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-default">注册</a>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <a class="btn btn-default">${sessionScope.user.userNiko}</a>
                <a href="${pageContext.request.contextPath}/admin/index.jsp" class="btn btn-default">后台管理</a>
                <a href="${pageContext.request.contextPath}/api/user/logout.html" class="btn btn-default">注销</a>
            </c:if>
        </div>




</div>
<!-- 顶部结束 -->

<!-- 导航栏 -->
<div class="header-nav-div">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav header-nav">
                    <li>
                        <a href="#" style="color: #ffd797;">网站首页</a>
                    </li>

                    <c:forEach items="${sessionScope.typeList}" var="type">
                        <li>
                            <a href="${pageContext.request.contextPath}/goods/goodsList/${type.typeId}.html" style="color: #ffd797;">${type.typeName}</a>
                        </li>
                    </c:forEach>

                    <li>
                        <a href="#" style="color: #ffd797;">联系我们</a>
                    </li>

                </ul>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="请输入关键字">
                    </div>
                    <button type="submit" class="btn btn-default">全局搜索</button>
                </form>
            </div>
        </div>
    </nav>
</div>
<!-- 导航栏结束 -->
