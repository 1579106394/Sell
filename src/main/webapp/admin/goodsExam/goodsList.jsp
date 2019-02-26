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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">商品审核</strong>
            <small></small>
        </div>
    </div>

    <hr>
    <form id="form" class="am-form" action="#"
          method="post">
        <div class="am-g">

            <div class="am-u-sm-12 am-u-md-3">
                <input type="text" name="params[goodsUser]" placeholder="请输入作者" value="${page.search}" class="am-form-field"/>
            </div>
            <div class="am-u-sm-12 am-u-md-3">
                <div class="am-input-group am-input-group-sm">
                    <input type="text" name="params[goodsTitle]" placeholder="请输入商品标题" value="${page.search}" class="am-form-field"/>
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
                        <th class="table-id">编号</th>
                        <th class="table-title">图片</th>
                        <th class="table-title">标题</th>
                        <th class="table-title">起拍价格</th>
                        <th class="table-title">当前价格</th>
                        <th class="table-title">发布人</th>
                        <th class="table-title">发布日期</th>
                        <th class="table-title">结束日期</th>
                        <th class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <img src="" alt="图片丢失了" style="width: 50px;height: 50px;">
                        </td>
                        <td>【下单低至8899元 套餐一享无线充套餐】Apple/苹果 iPhone Xs Max 64G 全网通4G手机双卡双待苹果Xsmax</td>
                        <td>9599.0</td>
                        <td>9599.0</td>
                        <td>哈哈哈</td>
                        <td>2019年02月24日 15:10:32</td>
                        <td>2019年02月28日 00:00:00</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 通过
                                    </a>
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <img src="" alt="图片丢失了" style="width: 50px;height: 50px;">
                        </td>
                        <td>【下单低至8899元 套餐一享无线充套餐】Apple/苹果 iPhone Xs Max 64G 全网通4G手机双卡双待苹果Xsmax</td>
                        <td>9599.0</td>
                        <td>9599.0</td>
                        <td>哈哈哈</td>
                        <td>2019年02月24日 15:10:32</td>
                        <td>2019年02月28日 00:00:00</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 通过
                                    </a>
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <img src="" alt="图片丢失了" style="width: 50px;height: 50px;">
                        </td>
                        <td>【下单低至8899元 套餐一享无线充套餐】Apple/苹果 iPhone Xs Max 64G 全网通4G手机双卡双待苹果Xsmax</td>
                        <td>9599.0</td>
                        <td>9599.0</td>
                        <td>哈哈哈</td>
                        <td>2019年02月24日 15:10:32</td>
                        <td>2019年02月28日 00:00:00</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 通过
                                    </a>
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <img src="" alt="图片丢失了" style="width: 50px;height: 50px;">
                        </td>
                        <td>【下单低至8899元 套餐一享无线充套餐】Apple/苹果 iPhone Xs Max 64G 全网通4G手机双卡双待苹果Xsmax</td>
                        <td>9599.0</td>
                        <td>9599.0</td>
                        <td>哈哈哈</td>
                        <td>2019年02月24日 15:10:32</td>
                        <td>2019年02月28日 00:00:00</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 通过
                                    </a>
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <img src="" alt="图片丢失了" style="width: 50px;height: 50px;">
                        </td>
                        <td>【下单低至8899元 套餐一享无线充套餐】Apple/苹果 iPhone Xs Max 64G 全网通4G手机双卡双待苹果Xsmax</td>
                        <td>9599.0</td>
                        <td>9599.0</td>
                        <td>哈哈哈</td>
                        <td>2019年02月24日 15:10:32</td>
                        <td>2019年02月28日 00:00:00</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 通过
                                    </a>
                                    <a href="#" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
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