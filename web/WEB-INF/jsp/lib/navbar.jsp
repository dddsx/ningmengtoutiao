<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="path" />
<!-- 导航条 -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header"> <a class="navbar-brand" href="${path}/article/recommend">今天头条</a> </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">天气<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=3" width="130" height="230" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" ></iframe>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav" style="float: right">
                <c:if test="${empty sessionScope.sessionUser}">
                <li>
                    <a href="${path}/user/login">登录</a>
                </li>
                <li><a href="${path}/user/register">注册</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.sessionUser}">
                    <li><img src="${path}/${applicationScope.headPicPath}/${sessionScope.sessionUser.picName}" alt="???" class="img-circle headPic"></li>
                    <!-- 用户下拉菜单 -->
                    <li>
                        <a class="dropdown-toggle username" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.sessionUser.showName}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a style="color:#555555" href="#" onclick="{alert('敬请期待!')}">我的收藏</a></li>
                            <li><a style="color:#555555" href="#" onclick="{alert('敬请期待!')}">我的关注</a></li>
                            <li><a style="color:#555555" href="#" onclick="{alert('敬请期待!')}">我的粉丝</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a style="color:#555555" href="${path}/user/myspace">个人资料</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a style="color:#555555" href="${path}/user/logout">退出</a></li>
                        </ul>
                    </li>
                    <li><a href="${path}/write">发文</a></li>
                </c:if>
                <li><a href="mailto:dddsx6324@163.com">反馈</a></li>
                <li><a href="http://www.12377.cn/" target="_blank">投诉</a></li>
            </ul>
        </div>
    </div>
</nav>
