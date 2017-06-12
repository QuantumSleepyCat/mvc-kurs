<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 15.05.2017
  Time: 10:11
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
    <link rel='stylesheet' href='/resources/css/catalog/styleCatalog.css'  >
    <link rel='stylesheet' href='/resources/css/index_page/indexStyle.css'  >
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <script  src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>



</head>
<body>
<div class="container">
    <jsp:include page="../header.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="../nav.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="../slider.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>
    <div class="news">

        <div class="col-sm-4">
            <img src="/resources/images/comment/57.jpg" width="200">
            <h3 style="color: #2ad4d3;">${login}</h3>
        </div>
        <div class="col-sm-8">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Информация</a></li>
                <li><a data-toggle="tab" href="#menu1">Закладки</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active" style="margin-top: 10px; color: white;">
                    <p>Дата рождения:${date}</p>
                    <p>Пол:${pol}</p>
                    <p>Роль:${role}</p>
                </div>
                <div id="menu1" class="tab-pane fade" style="margin-top: 10px;">
                    <c:forEach var="us" items="${bookmarks}">
                        <div class="list-group" style="margin-bottom: 0px;">
                            <a href="/books/book/${us.book.id}" class="list-group-item" style="color: white; background-color: #040404; border-color: #2ad4d3;" >${us.book.title}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>
    </footer>
</div>
</body>
</html>
