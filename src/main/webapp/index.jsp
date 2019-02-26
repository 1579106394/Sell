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

<%--拍卖流程--%>
<dl class="auctionProcess container">
    <dt class="auctionProcess_title">
        <a hred="javascript:;" class="title_content">竞拍流程</a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num">1</span>
            <p class="step_txt">
                <span class="step_label">第一步</span>
                <br>
                <span class="step_name">浏览商品</span>
            </p>
        </a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num currentStep">2</span>
            <p class="step_txt">
                <span class="step_label">第二步</span>
                <br>
                <span class="step_name">出价竞拍</span>
            </p>
        </a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num">3</span>
            <p class="step_txt">
                <span class="step_label">第三步</span>
                <br>
                <span class="step_name">等待处理</span>
            </p>
        </a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num">4</span>
            <p class="step_txt">
                <span class="step_label">第四步</span>
                <br>
                <span class="step_name">竞拍成功</span>
            </p>
        </a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num">5</span>
            <p class="step_txt">
                <span class="step_label">第五步</span>
                <br>
                <span class="step_name">卖家发货</span>
            </p>
        </a>
    </dt>
    <dt class="auctionProcess_step">
        <a class="step_box">
            <span class="step_num">6</span>
            <p class="step_txt">
                <span class="step_label">第六步</span>
                <br>
                <span class="step_name">线下取货</span>
            </p>
        </a>
    </dt>
</dl>
<%--拍卖流程结束--%>

<!-- 新闻资讯 -->
<div class="news">

    <div class="news-left">
        <ul class="list-group">
            <h4>[ 拍卖预告 ]</h4>
            <li class="list-group-item">2018年迎春大型艺术品拍卖会
                <br> 作品征集中...
                <br> 欢迎致电:12312345678
                <br> 书画部:010-12345678
                <br> 邮箱：123456789@163.com
            </li>
        </ul>
    </div>

    <div class="news-right">
        <div class="top">
            <span>新闻资讯</span>
        </div>
        <div class="bottom">
            <ul class="list-group">

                <c:forEach items="${newsPage.list }" var="news">
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/api/news/readNews/${news.newsId}.html">
                                ${news.newsTitle}
                            <span class="date">${news.newsCreatedTime}</span>
                        </a>
                    </li>
                </c:forEach>
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

            <c:forEach items="${goodsPage.list}" var="goods">

                <div class="lot">
                    <a href="${pageContext.request.contextPath}/api/goods/readGoods/${goods.goodsId}.html">
                        <img src="${pageContext.request.contextPath}/${goods.goodsImg}" alt="">
                            ${goods.goodsTitle}
                    </a>
                </div>

            </c:forEach>

        </div>
    </div>
</div>
<!-- 拍品推荐结束 -->

<%--合资企业--%>
<div class="lots" style="height: 345px;">
    <div class="lot-right">
        <div class="auctionNew">
            <div class="top">
                <span>合作企业</span>
            </div>
            <div class="cooperation_box"><a href="http://368858.feijiu.net/" class="cooperation_a" title="石药集团"
                                            target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/91a0f8a5156e47a590f60646fcb5e49e.jpeg!/fwfh/175x64"
                    alt="石药集团" class="cooperation_img"></a><a href="http://880300.feijiu.net/" class="cooperation_a"
                                                              title="神威药业" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/af84c25e825c46acb3440fbce4135b3e.jpeg!/fwfh/175x64"
                    alt="神威药业" class="cooperation_img"></a><a href="http://6273851.feijiu.net/" class="cooperation_a"
                                                              title="东贝" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/d46c40114b294c769d2b60f8d2b39092.jpeg!/fwfh/175x64"
                    alt="东贝" class="cooperation_img"></a><a href="http://213221.feijiu.net/" class="cooperation_a"
                                                            title="中国电信" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/920ba2e6648b43b7b4fef48ae3dea079.jpeg!/fwfh/175x64"
                    alt="中国电信" class="cooperation_img"></a><a href="http://qq666.feijiu.net/" class="cooperation_a"
                                                              title="格力" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/7085787ea7144cf38b76616e145c72f8.jpeg!/fwfh/175x64"
                    alt="格力" class="cooperation_img"></a><a href="http://fj20100807125.feijiu.net/"
                                                            class="cooperation_a" title="中国联通" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/f6d099df5a2f495e892000bfd07d471a.jpeg!/fwfh/175x64"
                    alt="中国联通" class="cooperation_img"></a><a href="http://813909.feijiu.net/" class="cooperation_a"
                                                              title="鲁花" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/23d51ceb1cfe45c2bd8682fbdd622fe4.jpeg!/fwfh/175x64"
                    alt="鲁花" class="cooperation_img"></a><a href="http://289777.feijiu.net/" class="cooperation_a"
                                                            title="三星" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/11a34fb168bd40f09ef9e9a7105eb811.jpeg!/fwfh/175x64"
                    alt="三星" class="cooperation_img"></a><a href="http://8468056.feijiu.net/" class="cooperation_a"
                                                            title="铁建" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/eaf11ef60f2b4668b58bc5eaafa70827.jpeg!/fwfh/175x64"
                    alt="铁建" class="cooperation_img"></a><a href="http://383959655.feijiu.net/" class="cooperation_a"
                                                            title="嘉陵摩托" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/275c6/665fc00c4e854db8b47fdb11825e1d8a.jpeg!/fwfh/175x64"
                    alt="嘉陵摩托" class="cooperation_img"></a><a href="http://583313.feijiu.net/" class="cooperation_a"
                                                              title="贵州茅台" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/www/275c8/4bc7637b52e44c10a31faa441c8d7a5b.jpeg!/fwfh/175x64"
                    alt="贵州茅台" class="cooperation_img"></a><a href="http://shedongbu.feijiu.net/" class="cooperation_a"
                                                              title="山东潍坊" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/www/275c8/24447f98912741da9b37c8d154134e96.jpeg!/fwfh/175x64"
                    alt="山东潍坊" class="cooperation_img"></a><a href="http://fj20110326020.feijiu.net/"
                                                              class="cooperation_a" title="设备制造" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/www/275c8/37035772ebde48cdae83ca6f35c490f9.jpeg!/fwfh/175x64"
                    alt="设备制造" class="cooperation_img"></a><a href="http://ruixinyiyao123.feijiu.net/"
                                                              class="cooperation_a" title="医药化工" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/www/275c8/30f190d75165459d8b879499189f5035.jpeg!/fwfh/175x64"
                    alt="医药化工" class="cooperation_img"></a><a href="http://yangrong.feijiu.net/" class="cooperation_a"
                                                              title=" 纺织服装" target="_blank"><img
                    src="http://jupaiwang.b0.upaiyun.com/www/275c8/a727f34f40d14c0a9007543eb05ae9dc.jpeg!/fwfh/175x64"
                    alt=" 纺织服装" class="cooperation_img"></a></div>
        </div>
    </div>
</div>
<%--合资企业结束--%>

<!-- 底部导航 -->
<jsp:include page="footer.jsp"/>
<!-- 底部导航结束 -->


</body>

</html>