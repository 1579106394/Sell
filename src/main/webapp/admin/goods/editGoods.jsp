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
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/admin/editor/dist/css/wangEditor.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-1.11.3.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/res/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/admin/res/layui/layui.js"></script>

    <style type="text/css">
        #div1 {
            width: 100%;
            height: 300px;
        }
    </style>

    <script type="text/javascript">
        function formSubmit() {
            var article = $("#div1").html();
            $(".article").val(article);
            $("#form").submit();
        }
    </script>

    <script>
        layui.use('laydate', function () {
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#startTime', //指定元素
                type: 'datetime',
                format: 'yyyy年MM月dd日 HH:mm:ss'
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#endTime', //指定元素
                type: 'datetime',
                format: 'yyyy年MM月dd日 HH:mm:ss'

            });
        });
    </script>


</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">修改商品</strong>
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
                          action="${pageContext.request.contextPath}/api/goods/admin/editGoods.html" method="post"
                          style="padding-top: 30px;" enctype="multipart/form-data">

                        <!-- 富文本编辑器内容 -->
                        <input type="hidden" name="goodsArticle" class="article"/>
                        <!-- 用户id -->
                        <input type="hidden" name="user.userId" value="${sessionScope.user.userId }"/>
                        <%--商品id--%>
                        <input type="hidden" name="goodsId" value="${goods.goodsId}"/>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                商品标题
                            </label>
                            <div class="am-u-sm-4">
                                <input required="" value="${goods.goodsTitle}" name="goodsTitle"
                                       type="text">
                            </div>

                            <label class="am-u-sm-2 am-form-label">
                                商品类型
                            </label>
                            <div class="am-u-sm-4">
                                <select name="type.typeId" class="am-selected">
                                    <c:forEach items="${typeList}" var="type">
                                        <c:if test="${goods.type.typeId == type.typeId}">
                                            <option value="${type.typeId}" selected>${type.typeName}</option>
                                        </c:if>
                                        <c:if test="${goods.type.typeId != type.typeId}">
                                            <option value="${type.typeId}">${type.typeName}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>


                        </div>


                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                开始时间
                            </label>
                            <div class="am-u-sm-4">
                                <input required="" value="${goods.goodsStartedTime}" name="goodsStartedTime"
                                       type="text" id="startTime">
                            </div>

                            <label class="am-u-sm-2 am-form-label">
                                结束时间
                            </label>
                            <div class="am-u-sm-4">
                                <input required="" value="${goods.goodsEndTime}" name="goodsEndTime"
                                       type="text" id="endTime">
                            </div>
                        </div>


                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                起拍价格（元）
                            </label>
                            <div class="am-u-sm-4">
                                <input required="" value="${goods.goodsStartedPrice}" name="goodsStartedPrice"
                                       type="text">
                            </div>

                            <label class="am-u-sm-2 am-form-label">
                                商品图片
                            </label>
                            <div class="am-u-sm-4">
                                <input required="" value="" name="goodsPhoto"
                                       type="file">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                商品简介
                            </label>
                            <div class="am-u-sm-10">
                                <textarea required="" name="goodsBrief">${goods.goodsBrief}</textarea>
                            </div>
                        </div>


                        <div class="am-form-group">
                            <label class="am-u-sm-2 am-form-label">
                                商品内容
                            </label>
                            <div class="am-u-sm-10">

                                <!-- 富文本编辑器 -->

                                <div id="div1">
                                    ${goods.goodsArticle}
                                </div>


                                <script type="text/javascript"
                                        src="${pageContext.request.contextPath }/admin/editor/dist/js/wangEditor.js"></script>
                                <script type="text/javascript">
                                    $(function () {
                                        var editor = new wangEditor('div1');
                                        editor.create();
                                    });
                                </script>

                                <!-- 富文本编辑器 -->


                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-2">
                                <input class="am-btn am-btn-success" value="修改" type="button" onclick="formSubmit();">
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