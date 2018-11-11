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
<script>
    function goodsList(p) {
        $('#currentPage').val(p)
        $('#searchForm').submit()
    }
</script>
<body>

<jsp:include page="header.jsp"/>
<!-- 面包屑 -->
<div class="bread">
    <ol class="breadcrumb">
        <li>
            <a href="${pageContext.request.contextPath}/index.html">首页</a>
        </li>
        <li class="active">商品列表</li>
    </ol>
</div>
<!-- 面包屑结束 -->

<!-- 拍卖品列表 -->
<div class="sel-list">

    <div class="sel-right">
        <div class="bottom">

            <c:forEach items="${page.list}" var="goods">
                <div class="sel">
                    <a href="${pageContext.request.contextPath}/api/goods/readGoods/${goods.goodsId}.html">
                        <img src="${pageContext.request.contextPath}/${goods.goodsImg}"
                             class="img-responsive img-rounded">
                        <p class="sel-price">当前出价
                            <span>￥${goods.goodsCurrentPrice}</span>
                        </p>
                        <p class="sel-date">结束时间 ${goods.goodsEndTime}</p>
                        <p>
                            <span class="badge">点击 ${goods.goodsClickNum}</span>
                            <span class="badge">出价 ${goods.goodsPriceNum}</span>
                        </p>
                            ${goods.goodsTitle}
                    </a>
                </div>
            </c:forEach>

        </div>

    </div>
    <!-- 分页开始 -->

    <div class="page row">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${page.currentPage == 1}">
                    <li>
                        <a class="disabled" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${page.currentPage != 1}">
                    <li>
                        <a href="javascript:void(0)" onclick="goodsList(${page.currentPage - 1})" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>

                <c:forEach begin="1" end="${page.totalPage}" var="p">
                    <c:if test="${p == page.currentPage}">
                        <li class="active">
                            <a href="javascript:void(0)">${p}</a>
                        </li>
                    </c:if>
                    <c:if test="${p != page.currentPage}">
                        <li>
                            <a href="javascript:void(0)" onclick="goodsList(${p})">${p}</a>
                        </li>
                    </c:if>
                </c:forEach>

                <c:if test="${page.currentPage == page.totalPage}">
                    <li class="disabled">
                        <a aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${page.currentPage != page.totalPage}">
                    <li>
                        <a href="javascript:void(0)" onclick="goodsList(${page.currentPage + 1})" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <!-- go -->

                <!-- go结束 -->
                <div class="input-group">
                    <input type="text" id="go" value="${page.currentPage}" class="form-control" style="width: 56.4px;">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="goodsList($('#go').val())">转到</button>
                    </span>
                </div>
            </ul>
        </nav>
    </div>
    <!-- 分页结束 -->
</div>
<!-- 拍卖品列表结束 -->


<!-- 底部导航 -->
<jsp:include page="footer.jsp"/>
<!-- 底部导航结束 -->


</body>

</html>