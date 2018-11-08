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
            <a href="#">首页</a>
        </li>
        <li class="active">商品列表</li>
    </ol>
</div>
<!-- 面包屑结束 -->

<!-- 拍卖品列表 -->
<div class="sel-list">

    <div class="sel-right">
        <div class="bottom">
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>
            <div class="sel">
                <img src="img/s1.jpg" class="img-responsive img-rounded">
                <p class="sel-price">当前出价
                    <span>￥123</span>
                </p>
                <p class="sel-date">结束时间 2017-11-11</p>
                <p>
                    <span class="badge">竞拍结束</span>
                    <span class="badge">点击 23</span>
                    <span class="badge">出价 11</span>
                </p>
                <a href="">作品名称</a>
            </div>

        </div>

    </div>
    <!-- 分页开始 -->

    <div class="page row">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <!-- go -->

                <!-- go结束 -->
                <div class="input-group">
                    <input type="text" class="form-control" style="width: 56.4px;">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">转到</button>
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