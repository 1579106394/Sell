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

<jsp:include page="header.jsp" />

<!-- 轮播图 -->
<div id="carousel-example-generic" class="carousel slide header-slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/img/banner-1.png" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/banner-2.png" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/banner-3.png" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/banner-4.png" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
    </div>

    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- 轮播图结束 -->

<!-- 新闻资讯 -->
<div class="news">

    <div class="news-left">
        <ul class="list-group">
            <h4>[ 拍卖预告 ]</h4>
            <li class="list-group-item">江苏九德2015年迎春大型艺术品拍卖会
                <br> 作品征集中...
                <br> 欢迎致电:15365186060(徐)
                <br> 书画部:025-58061082
                <br> 邮箱：jsjiude@163.com
            </li>
        </ul>
    </div>

    <div class="news-right">
        <div class="top">
            <span>新闻资讯</span>
        </div>
        <div class="bottom">
            <ul class="list-group">
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
                <li class="list-group-item">Cras justo odio
                    <span class="date">2017-11-11</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 新闻资讯结束 -->

<!-- 拍品推荐 -->
<div class="lots">


    <div class="lot-right">
        <div class="top">
            <span>推荐拍品</span>
        </div>
        <div class="bottom">
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="${pageContext.request.contextPath}/img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>
            <div class="lot">
                <img src="img/s1.jpg" alt="">
                <a href="">作品名称</a>
            </div>

        </div>
    </div>
</div>
<!-- 拍品推荐结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp" />
<!-- 底部导航结束 -->


</body>

</html>