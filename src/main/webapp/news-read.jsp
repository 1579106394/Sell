<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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

<!-- 面包屑 -->
<div class="bread">
    <ol class="breadcrumb">
        <li>
            <a href="${pageContext.request.contextPath}/">首页</a>
        </li>
        <li class="active">新闻阅读</li>
    </ol>
</div>
<!-- 面包屑结束 -->

<!-- 阅读新闻 -->
<div class="read-news">
    <p class="news-title">${news.newsTitle}</p>
    <p class="news-date">作者： ${news.user.userNiko}&nbsp;&nbsp;&nbsp;发布时间：${news.newsCreatedTime}</p>
    <div class="news-info">
        ${news.newsArticle}
    </div>

</div>
<!-- 阅读新闻结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp"/>
<!-- 底部导航结束 -->


</body>

</html>