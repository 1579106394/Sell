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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/admin/res/layui/layui.js"></script>


</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">我的信息</strong>
            <small></small>
        </div>
    </div>

    <hr>
    <div class="am-cf">
        <!-- content start -->
        <div class="">
            <div class="admin-content-body">
                <div class="am-g">
                    <form class="am-form am-form-horizontal" id="form"
                          action="${pageContext.request.contextPath}/api/user/admin/eidtUser.html" method="post"
                          style="padding-top: 30px;" enctype="multipart/form-data">

                        <input type="hidden" name="userId" value="${user.userId}" />

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                昵称
                            </label>
                            <div class="am-u-sm-10">
                                <input  required="" value="${user.userNiko}" name="userNiko"
                                       type="text">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                密码
                            </label>
                            <div class="am-u-sm-10">
                                <input  required="" value="${user.password}" name="password"
                                       type="password">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                头像
                            </label>
                            <div class="am-u-sm-10">
                                <input name="uploadFile" type="file">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                邮箱
                            </label>
                            <div class="am-u-sm-10">
                                <input class="am-form-file" required="" value="${user.userEmail}" name="userEmail"
                                       type="text">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                手机号
                            </label>
                            <div class="am-u-sm-10">
                                <input  required="" value="${user.userTelephone}" name="userTelephone"
                                       type="text">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                性别
                            </label>
                            <div class="am-u-sm-10">
                                <c:if test="${user.userSex == 1}">
                                    <input type="radio" name="userSex" value="1" class="am-radio-inline" checked> 男
                                    <input type="radio" name="userSex" value="2" class="am-radio-inline"> 女
                                </c:if>

                                <c:if test="${user.userSex == 2}">
                                    <input type="radio" name="userSex" value="1" class="am-radio-inline"> 男
                                    <input type="radio" name="userSex" value="2" class="am-radio-inline" checked> 女
                                </c:if>

                            </div>
                        </div>

                        <br>
                        <span style="color: red;">${error}</span>


                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-2">
                                <input class="am-btn am-btn-success" value="发布" type="submit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>

</body>


</html>