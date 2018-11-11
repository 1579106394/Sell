<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/css/admin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-1.11.3.min.js"></script>
</head>

<script>
    function commentList(p) {
        $('#currentPage').val(p)
        $('#form').submit()
    }
</script>


<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">评论管理</strong>
            <small></small>
        </div>
    </div>

    <hr>
    <form id="form" class="am-form" action="${pageContext.request.contextPath}/api/comment/admin/commentList.html"
          method="post">
        <input id="currentPage" type="hidden" name="currentPage" value="${page.currentPage}"/>
        <input type="hidden" value="${sessionScope.user.userRole}" name="params.role"/>
        <div class="am-g">

            <div class="am-u-sm-12 am-u-md-3">

            </div>
            <div class="am-u-sm-12 am-u-md-3">
                <div class="am-input-group am-input-group-sm">
                    <input type="text" name="search" value="${page.search}" class="am-form-field">
                    <span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="submit">搜索</button>
          </span>
                </div>
            </div>
        </div>
        <div class="am-g">
            <div class="am-u-sm-12">

                <table class="am-table am-table-striped am-table-hover table-main comment-table">
                    <thead>

                    <tr>
                        <th class="table-check"><input type="checkbox"></th>
                        <th class="table-id">编号</th>
                        <th class="table-title">商品图片</th>
                        <th class="table-title">商品标题</th>
                        <th class="table-title">评论内容</th>
                        <th class="table-title">发布人</th>
                        <th class="table-title">评论时间</th>
                        <th class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${page.list}" var="comment" varStatus="index">
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>${index.index+1}</td>
                            <td style="overflow:hidden;">
                                <img src="${pageContext.request.contextPath}/${comment.goods.goodsImg}"
                                     style="width: 50px;height: 50px;"/>
                            </td>
                            <td><div style="max-height: 82px;">${comment.goods.goodsTitle}</div></td>
                            <td style="overflow:hidden;">
                                <div style="max-height: 82px;">${comment.commentArticle}</div>
                            </td>
                            <td>${comment.user.userNiko}</td>
                            <td>${comment.commentCreatedTime}</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">

                                        <a href="${pageContext.request.contextPath}/api/comment/admin/deleteComment/${comment.commentId}.html"
                                           class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span
                                                class="am-icon-trash-o"></span> 删除
                                        </a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="am-cf">
                    共 ${page.totalCount} 条记录
                    <div class="am-fr">
                        <ul class="am-pagination">

                            <c:if test="${page.currentPage != 1}">
                                <li>
                                    <a href="javascript:void(0);" onclick="commentList(${page.currentPage - 1})">«</a>
                                </li>
                            </c:if>

                            <c:forEach begin="1" end="${page.totalPage}" var="p">
                                <c:if test="${page.currentPage == p}">
                                    <li class="am-active">
                                        <a>${p}</a>
                                    </li>
                                </c:if>
                                <c:if test="${page.currentPage != p}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="commentList(${p})">${p}</a>
                                    </li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${page.currentPage != page.totalPage}">
                                <li>
                                    <a href="javascript:void(0);" onclick="commentList(${page.currentPage + 1})">»</a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </form>
</div>
</body>
</html>