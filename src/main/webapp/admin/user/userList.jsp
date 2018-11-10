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
    function newsList(p) {
        $('#currentPage').val(p)
        $('#form').submit()
    }
</script>
<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong>
            <small></small>
        </div>
    </div>

    <hr>
    <form id="form" class="am-form" action="${pageContext.request.contextPath}/api/user/admin/userList.html"
          method="post">
        <input id="currentPage" type="hidden" name="currentPage" value="${page.currentPage}"/>
        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
                <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                    </div>
                </div>
            </div>
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
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-check"><input type="checkbox"></th>
                            <th class="table-id">ID</th>
                            <th class="table-title">用户名</th>
                            <th class="table-type">昵称</th>
                            <th class="table-author am-hide-sm-only">性别</th>
                            <th class="table-author am-hide-sm-only">身份</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.list}" var="user" varStatus="index">
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>${index.index+1}</td>
                                <td>
                                    <a>${user.username}</a>
                                </td>
                                <td>${user.userNiko}</td>
                                <c:if test="${user.userSex == 1}">
                                    <td class="am-hide-sm-only">男</td>
                                </c:if>
                                <c:if test="${user.userSex == 2}">
                                    <td class="am-hide-sm-only">女</td>
                                </c:if>

                                <c:if test="${user.userRole == 1}">

                                    <td class="am-hide-sm-only">普通用户</td>
                                </c:if>
                                <c:if test="${user.userRole == 2}">

                                    <td class="am-hide-sm-only">管理员</td>
                                </c:if>

                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <c:if test="${user.userRole == 1}">
                                                <a href="${pageContext.request.contextPath}/api/user/admin/toAdmin/${user.userId}.html"
                                                   class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                        class="am-icon-pencil-square-o"></span> 设为管理员
                                                </a>
                                            </c:if>
                                            <c:if test="${user.userRole == 2}">
                                                <a href="${pageContext.request.contextPath}/api/user/admin/toAdmin/${user.userId}.html"
                                                   class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                        class="am-icon-pencil-square-o"></span> 取消管理员
                                                </a>
                                            </c:if>
                                            <a href="${pageContext.request.contextPath}/api/user/admin/deleteUser/${user.userId}.html"
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
                                        <a href="javascript:void(0);" onclick="newsList(${page.currentPage - 1})">«</a>
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
                                            <a href="javascript:void(0);" onclick="newsList(${p})">${p}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${page.currentPage != page.totalPage}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="newsList(${page.currentPage + 1})">»</a>
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