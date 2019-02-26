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

    <script type="text/javascript">
        function addPrice() {
            var currentPrice = '${goods.goodsCurrentPrice}'
            var id = '${goods.goodsId}'
            var myPrice = $('#currentPrice').val()
            if (parseFloat(myPrice) <= parseFloat(currentPrice)) {
                alert("喊价不能低于当前价格！")
            } else {
                $('#form').submit()
            }
        }
    </script>
</head>

<body>

<jsp:include page="header.jsp"/>
<!-- 面包屑 -->
<div class="bread">
    <ol class="breadcrumb">
        <li>
            <a href="${pageContext.request.contextPath}/index.html">首页</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/api/goods/goodsList.html">商品列表</a>
        </li>
        <li class="active">商品详情</li>
    </ol>
</div>
<!-- 面包屑结束 -->

<!-- 商品详情 -->
<div class="item-info">

    <div class="info-top">

        <!-- 左边轮播 -->
        <div class="info-top-left" style="height: 100%;">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height: 100%;">
                <div class="carousel-inner" role="listbox" style="height: 100%;">
                    <div class="item active" style="height: 100%;">
                        <img src="${pageContext.request.contextPath}/${goods.goodsImg}" alt="..." style="height: 100%;">
                    </div>
                </div>

            </div>
        </div>
        <!-- 左边轮播结束 -->

        <div class="info-top-right">
            <h4>${goods.goodsTitle}</h4>
            <p>
                <span class="badge">点击 ${goods.goodsClickNum}</span>
            </p>
            <p>
                <span>开始时间 ${goods.goodsStartedTime}</span>
                <span style="padding-left: 30px;">结束时间 ${goods.goodsEndTime}</span>
            </p>
            <p>当前出价￥${goods.goodsCurrentPrice}</p>
            <p>出价人数 ${goods.goodsPriceNum}</p>
            <p>
            <form action="${pageContext.request.contextPath}/api/history/addPriceHistory.html" id="form" method="post">
                <%--隐藏域，商品id--%>
                <input type="hidden" name="goods.goodsId" value="${goods.goodsId}"/>
                <%--隐藏域，用户id--%>
                <input type="hidden" name="user.userId" value="${sessionScope.user.userId}"/>
                <div class="input-group">

                    <input type="text" class="form-control"
                           value="${goods.goodsCurrentPrice}" placeholder="价格" id="currentPrice" name="historyPrice">
                    <span class="input-group-btn">
                        <c:if test="${sessionScope.user.userRole==1 }">
                            <button class="btn btn-danger" type="button" onclick="addPrice()">我要喊价</button>
                        </c:if>
                    </span>
                </div>
            </form>
            </p>
        </div>
    </div>

    <div class="info-bottom">
        <div class="info-bottom-info">
            <table width="100%">
                <tr width="100%">
                    <td width="13%" align="right"></td>
                    <td>
                        ${goods.goodsBrief}
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
                        ${goods.goodsArticle}
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
                    <c:forEach items="${historyList}" var="history">

                        <li class="list-group-item">
                            <div class="user-img">
                                <img src="${pageContext.request.contextPath}/${history.user.userImg}" width="100%"
                                     height="100%">
                            </div>
                            <div class="price-info">
                                <p>
                                    <span class="username">${history.user.userNiko}</span>
                                </p>
                                <p>
                                    <span class="price-price">￥${history.historyPrice}元</span>
                                    <span class="price-date">${history.historyCreatedTime}</span>
                                </p>
                            </div>
                        </li>

                    </c:forEach>
                </ul>
            </div>
            <!-- 出价历史结束 -->

            <!-- 评论内容 -->
            <div role="tabpanel" class="tab-pane info-history-comment" id="comment">
                <ul class="list-group">
                    <c:forEach items="${commentList}" var="comment">
                        <li class="list-group-item">
                            <div class="user-img">
                                <img src="${pageContext.request.contextPath}/${comment.user.userImg}" width="100%" height="100%">
                            </div>
                            <div class="price-info">
                                <p>
                                    <span class="username">${comment.user.userNiko}</span>
                                    <span class="price-date">${comment.commentCreatedTime}</span>
                                </p>
                                <p>
                                    <span class="comment-info">
                                     ${comment.commentArticle}
                                    </span>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>

                <!-- 评论框 -->
                <div class="comment-textarea">
                    <form action="${pageContext.request.contextPath}/api/comment/addComment.html" method="POST"
                          role="form">
                        <legend>发表评论</legend>
                        <%--隐藏域，商品id--%>
                        <input type="hidden" name="goods.goodsId" value="${goods.goodsId}"/>
                        <%--隐藏域，用户id--%>
                        <input type="hidden" name="user.userId" value="${sessionScope.user.userId}"/>

                        <textarea class="form-control" rows="3" name="commentArticle"></textarea>
                        <br>
                        <button type="submit" class="btn btn-primary">评论</button>
                    </form>
                </div>
                <!-- 评论框结束 -->
            </div>
            <!-- 评论内容结束 -->
        </div>
    </div>

</div>
<!-- 商品详情结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp"/>
<!-- 底部导航结束 -->


</body>

</html>