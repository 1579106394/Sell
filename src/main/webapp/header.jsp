<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>

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
            <c:if test="${sessionScope.user.userRole == 1}">
                <a href="${pageContext.request.contextPath}/admin/index.jsp" class="btn btn-default">个人中心</a>
            </c:if>
            <c:if test="${sessionScope.user.userRole == 2}">
                <a href="${pageContext.request.contextPath}/admin/index.jsp" class="btn btn-default">后台管理</a>
            </c:if>
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
                <ul id="ul" class="nav navbar-nav header-nav">

                </ul>
                <form id="searchForm" action="${pageContext.request.contextPath}/api/goods/goodsList${page.params.typeId}.html"
                      class="navbar-form navbar-right" method="post">
                    <input type="hidden" id="currentPage" name="currentPage" value="${page.currentPage}"/>
                    <div class="form-group">
                        <input type="text" name="search" value="${page.search}" class="form-control" placeholder="请输入关键字">
                    </div>
                    <button type="submit" class="btn btn-default">全局搜索</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<script>
    window.onload = function () {

        $.ajax({
            url: "${pageContext.request.contextPath}/api/type/typeList.action",
            type: "get",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            success: function (result) {
                var typeList = result.data
                var ul = document.getElementById("ul");
                var liArrays = ul.getElementsByTagName("li");
                //清除操作
                for(var i=0;i<liArrays.length;i++){
                    ul.removeChild(liArrays[i]);
                    i--;
                }
                $("#ul").append(
                    "<li>\n" +
                    "<a href=\"${pageContext.request.contextPath}/index.html\" style=\"color: #ffd797;\">网站首页</a>\n" +
                    "</li>"
                );
                for(var i = 0; i < typeList.length; i++) {
                    $("#ul").append(
                        "<li>\n" +
                        "<a href=\"${pageContext.request.contextPath}/api/goods/goodsList"+typeList[i].typeId+".html\" style=\"color: #ffd797;\">" +
                        ""+typeList[i].typeName+"</a>\n" +
                        "</li>"
                    );
                }
                $("#ul").append(
                    "<li>\n" +
                    "<a href=\"${pageContext.request.contextPath}/index.html\" style=\"color: #ffd797;\">联系我们</a>\n" +
                    "</li>"
                );
            }
        });

    }
</script>

<!-- 导航栏结束 -->
