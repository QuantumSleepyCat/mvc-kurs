<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 14.05.2017
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
    <meta charset="utf-8">
    <title>Онлайн библиотека книг</title>


    <script  src="/resources/js/jquery-2.1.4.min.js"></script>



    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fullscreen Pageflip Layout with BookBlock</title>
    <meta name="description" content="Fullscreen Pageflip Layout with BookBlock" />
    <meta name="keywords" content="fullscreen pageflip, booklet, layout, bookblock, jquery plugin, flipboard layout, sidebar menu" />
    <meta name="author" content="Codrops" />
    <link rel="stylesheet" type="text/css" href="/resources/FullscreenBookBlock/css/jquery.jscrollpane.custom.css" />
    <link rel="stylesheet" type="text/css" href="/resources/FullscreenBookBlock/css/bookblock.css" />
    <link rel="stylesheet" type="text/css" href="/resources/FullscreenBookBlock/css/custom.css" />
    <script src="/resources/FullscreenBookBlock/js/modernizr.custom.79639.js"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <script type="text/javascript" src="/resources/js/rating/jquery-stars-master/dist/stars.min.js"></script>

</head>
<body>
<div id="container" class="container">

    <div class="menu-panel">
        <h3>Table of Contents</h3>
        <ul id="menu-toc" class="menu-toc">
            <li class="menu-toc-current"><a href="#item1">Self-destruction</a></li>
            <c:forEach var="item" begin="1" end="${size}">
            <li><a href="#${item}">Глава ${item}</a></li>
            </c:forEach>
        </ul>
    </div>

    <div class="bb-custom-wrapper">
        <div id="bb-bookblock" class="bb-bookblock">

            <c:forEach var="gl" items="${glav}" varStatus="i">
            <div class="bb-item" id="item${i}">
                <div class="content">
                    <div class="scroller">
                       ${glav}
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>

        <nav>
            <span id="bb-nav-prev">&larr;</span>
            <span id="bb-nav-next">&rarr;</span>
        </nav>

        <span id="tblcontents" class="menu-button">Table of Contents</span>

    </div>

</div><!-- /container -->
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
<script src="/resources/FullscreenBookBlock/js/jquery.mousewheel.js"></script>
<script src="/resources/FullscreenBookBlock/js/jquery.jscrollpane.min.js"></script>
<script src="/resources/FullscreenBookBlock/js/jquerypp.custom.js"></script>
<script src="/resources/FullscreenBookBlock/js/jquery.bookblock.js"></script>
<script src="/resources/FullscreenBookBlock/js/page.js"></script>
<script>
    $(function() {

        Page.init();

    });
</script>
</body>
</html>
