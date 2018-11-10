<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/css/global.css">
    <script src="${pageContext.request.contextPath}/admin/res/layui/layui.js"></script>
</head>
<body>
<div class="header">
    <div class="main">
        <a href="index.jsp" style="margin-left: 30px;line-height: 65px; color: white;font-size: 18px;">中国拍卖网系统后台</a>
        <div class="nav">

        </div>

        <div class="nav-user">
            <!-- 登入后的状态 -->
            <a class="avatar" href="javascript:void(0)">
                <img src="${pageContext.request.contextPath}/${sessionScope.user.userImg}">
                <c:if test="${sessionScope.user.userFlag == 1}">
                    <cite style="color: white;">用户</cite>
                </c:if>
                <c:if test="${sessionScope.user.userFlag == 2}">
                    <cite style="color: white;">管理员</cite>
                </c:if>
            </a>
            <div class="nav">
                <a href="${pageContext.request.contextPath}/api/user/logout.html"><i class="iconfont icon-tuichu"
                                                                                     style="top: 0; font-size: 22px;"></i>退了</a>
            </div>

        </div>
    </div>
</div>


<div class="main fly-user-main layui-clear">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item layui-this"><a href="${pageContext.request.contextPath}/api/type/admin/typeList.html" target="right"> <i
                class="layui-icon">&#xe609;</i> 分类管理 </a></li>

        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/api/news/admin/newsList.html" target="right"> <i
                class="layui-icon">&#xe63c;</i> 新闻中心</a></li>
        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/api/goods/admin/goodsList.html" target="right"> <i
                class="layui-icon">&#xe698;</i> 商品管理</a></li>
        <li class="layui-nav-item"><a href="typeList.jsp" target="right"> <i
                class="layui-icon">&#xe60e;</i> 出价历史 </a></li>
        <li class="layui-nav-item "><a href="news/newsList.jsp" target="right"> <i
                class="layui-icon">&#xe611;</i> 商品评论</a></li>
        <li class="layui-nav-item  "><a href="javascript:void(0)" onclick="updatePwd('修改密码',2)"> <i
                class="layui-icon">&#xe60e;</i> 交易历史 </a></li>
        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/api/user/admin/userList.html" target="right"> <i
                class="layui-icon">&#xe770;</i> 用户管理 </a></li>
        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/api/user/admin/myinfo.html" target="right"> <i
                class="layui-icon">&#xe716;</i> 个人信息 </a></li>
    </ul>

    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>

    <div class="fly-panel fly-panel-user">
        <div class="layui-tab layui-tab-brief" lay-filter="user">

            <div class="layui-tab-content" style="padding: 20px;padding-top: 0px;">
                <iframe width="85%" style="border: none;" height="1000px" border="none"
                        name="right"></iframe>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/myplugs/js/plugs.js"></script>

<script>
    layui.use('element', function () {
        var element = layui.element();
    });
</script>
<script>

    layui.cache.page = '';
    layui.cache.user = {
        username: '游客'
        , uid: -1
        , avatar: '../res/images/avatar/00.jpg'
        , experience: 83
        , sex: '男'
    };
    layui.config({
        version: "2.0.0"
        , base: '../res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');

    //添加编辑弹出层
    function updatePwd(title, id) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "updatePwd.html"
        });
    }
</script>
</body>
</html>