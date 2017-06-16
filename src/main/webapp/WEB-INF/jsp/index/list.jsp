<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yuyufeng
  Date: 2017/6/2
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/jsp/index/include/head.jsp" %>
</head>
<body>
<!-- Navigation -->
<%@include file="/WEB-INF/jsp/index/include/nav.jsp" %>

<header class="intro-header" style="background-image: url('${staticServer}/static/vendor/cleanblog/img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>文章列表</h1>
                    <hr class="small">
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <c:forEach items="${page}" var="a">
                <div class="post-preview">
                    <a href="${appServer}/article/${a.articleId}">
                        <h2 class="post-title">
                            ${a.articleTitle}
                        </h2>
                        <h3 class="post-subtitle">
                                ${a.articleSubtitle}
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">yyf</a> ${a.articleTime}</p>
                </div>
                <hr>
            </c:forEach>

            <!-- Pager -->
            <ul class="pager">
                <li class="next">
                    <a href="#">查看更多&rarr;</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<%@include file="/WEB-INF/jsp/index/include/foot.jsp" %>
</body>
</html>