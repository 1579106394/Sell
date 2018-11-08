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
<!-- 面包屑 -->
<div class="bread">
    <ol class="breadcrumb">
        <li>
            <a href="#">首页</a>
        </li>
        <li>
            <a href="#">商品列表</a>
        </li>
        <li class="active">商品详情</li>
    </ol>
</div>
<!-- 面包屑结束 -->

<!-- 商品详情 -->
<div class="item-info">

    <div class="info-top">

        <!-- 左边轮播 -->
        <div class="info-top-left">
            <div id="carousel-example-generic" class="carousel slide header-slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="${pageContext.request.contextPath}/img/2.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/img/3.jpg" alt="...">
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
        </div>
        <!-- 左边轮播结束 -->

        <div class="info-top-right">
            <h4>宅漫 可爱 软萌 软妹 硬妹 长袖T恤 动漫卫衣 涤纶 抓绒卫衣 </h4>
            <p>
                <span class="badge">点击 23</span>
            </p>
            <p>
                <span>开始时间 2017-11-11 9:00</span>
                <span style="padding-left: 30px;">结束时间 2017-11-11 9:00</span>
            </p>
            <p>当前出价￥123</p>
            <p>出价人数 23</p>
            <p>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="价格">
                <span class="input-group-btn">
                            <button class="btn btn-danger" type="button">我要喊价</button>
                        </span>
            </div>
            </p>
        </div>
    </div>

    <div class="info-bottom">
        <div class="info-bottom-info">
            <table width="100%">
                <tr width="100%">
                    <td width="13%" align="right"></td>
                    <td>玻璃白冻,微透明,玻璃地,凝结成冻,有黑针,石质色彩柔和,有种水乳交融之美,冻地佳, 刀感好,雕兽钮。边缘润滑,形象饱满精致,而颇具古韵,无格裂,偶尔保养。玻
                    </td>
                </tr>
            </table>
        </div>
        <hr>
        <div class="info-bottom-info2">
            <table width="100%">
                <tr width="100%">
                    <td width="13%" align="right"></td>
                    <td>
                        <!-- 复制的淘宝 -->
                        <div class="hlg_list_21407744">
                            <p style="white-space: normal;text-align: center;">
                                <a target="_blank" href="https://zmzb.taobao.com/index.htm?spm=2013.1.w5002-16699154709.2.7eca700fMBnulx">
                                    <img src="https://img.alicdn.com/imgextra/i4/150624625/O1CN011k2IHGbm35rO372_!!150624625.jpg">
                                </a>
                            </p>
                            <p style="white-space: normal;text-align: center;">
                                <a target="_blank" href="https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-16699190823.53.582f9095XL93S5&amp;id=574446866009">
                                    <img src="https://img.alicdn.com/imgextra/i3/150624625/O1CN011k2IGUgGd1j1CQ8_!!150624625.jpg">
                                </a>
                            </p>
                            <p style="white-space: normal;text-align: center;">
                                <a target="_blank" href="https://item.taobao.com/item.htm?spm=2013.1.20141001.1.6ac52865Y8Ib3e&amp;id=575035104002&amp;scm=1007.12144.95220.42296_0&amp;pvid=7449d8ea-8adf-4bfe-8f40-b0be0ae95b22&amp;utparam=%7B%22x_hestia_source%22%3A%2242296%22%2C%22x_object_type%22%3A%22item%22%2C%22x_mt%22%3A0%2C%22x_src%22%3A%2242296%22%2C%22x_pos%22%3A1%2C%22x_pvid%22%3A%227449d8ea-8adf-4bfe-8f40-b0be0ae95b22%22%2C%22x_object_id%22%3A575035104002%7D">
                                    <img src="https://img.alicdn.com/imgextra/i4/150624625/O1CN011k2IGernB3GlTUE_!!150624625.jpg">
                                </a>
                            </p>
                            <p style="white-space: normal;text-align: center;">
                                <a target="_blank" href="https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-16699190823.293.782a9095dDcndX&amp;id=577197856657">
                                    <img src="https://img.alicdn.com/imgextra/i2/150624625/O1CN011k2IGVuA7fC51FN_!!150624625.jpg">
                                </a>
                            </p>
                        </div>

                        <!-- 复制的淘宝 -->
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <div class="info-history">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active">
                <a href="#price" aria-controls="home" role="tab" data-toggle="tab">出价历史</a>
            </li>
            <li role="presentation">
                <a href="#comment" aria-controls="profile" role="tab" data-toggle="tab">评论内容</a>
            </li>
        </ul>


        <div class="tab-content">
            <!-- 出价历史 -->
            <div role="tabpanel" class="tab-pane active info-history-price" id="price">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                            </p>
                            <p>
                                <span class="price-price">￥111元</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                            </p>
                            <p>
                                <span class="price-price">￥111元</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                            </p>
                            <p>
                                <span class="price-price">￥111元</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 出价历史结束 -->

            <!-- 评论内容 -->
            <div role="tabpanel" class="tab-pane info-history-comment" id="comment">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                            <p>
                                    <span class="comment-info">
                                            卖家服务态度很好，货很有艺术感，值得收藏与玩弄，大师级的作品就是不一样的,作哈哈品非常值得大家。
                                    </span>
                            </p>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                            <p>
                                    <span class="comment-info">
                                            卖家服务态度很好，货很有艺术感，值得收藏与玩弄，大师级的作品就是不一样的,作哈哈品非常值得大家。
                                    </span>
                            </p>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="user-img">
                            <img src="img/1.jpg" width="100%" height="100%">
                        </div>
                        <div class="price-info">
                            <p>
                                <span class="username">用户名</span>
                                <span class="price-date">2017-11-11 11:11:11</span>
                            </p>
                            <p>
                                    <span class="comment-info">
                                            卖家服务态度很好，货很有艺术感，值得收藏与玩弄，大师级的作品就是不一样的,作哈哈品非常值得大家。
                                    </span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 评论内容结束 -->
        </div>
    </div>

</div>
<!-- 商品详情结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp" />
<!-- 底部导航结束 -->


</body>

</html>