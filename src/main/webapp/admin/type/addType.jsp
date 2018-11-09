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
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">新增类别</strong>
            <small></small>
        </div>
    </div>

    <hr>
    <div class="am-cf">
        <!-- content start -->
        <div class="">
            <div class="admin-content-body">
                <div class="am-g">
                    <form class="am-form am-form-horizontal" action="${pageContext.request.contextPath}/api/type/admin/addType.html" method="post"
                          style="padding-top: 30px;">
                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                分类名称
                            </label>
                            <div class="am-u-sm-10">
                                <input id="roleName" required="" placeholder="请输入分类名称" value="" name="typeName"
                                       type="text">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-2">
                                <input id="addRole" class="am-btn am-btn-success" value="新增" type="submit">
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