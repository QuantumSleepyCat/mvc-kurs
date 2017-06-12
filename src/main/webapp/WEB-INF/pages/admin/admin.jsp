<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 15.05.2017
  Time: 1:54
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
    <link rel='stylesheet' href='/resources/css/catalog/book/bookStyle.css'  >
    <link rel='stylesheet' href='/resources/css/catalog/styleCatalog.css'  >
    <link rel='stylesheet' href='/resources/css/index_page/indexStyle.css'  >
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <script  src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <script type="text/javascript" src="/resources/js/rating/jquery-stars-master/dist/stars.min.js"></script>

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
<c:choose>
<c:when test="${authUser.role != null}">
    <spring:eval expression="authUser.role == 'user'" var="isUser"/>
    <spring:eval expression="authUser.role == 'admin'" var="isAdmin"/>

    <c:if test="${isAdmin == true}">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Книги</a></li>
            <li><a data-toggle="tab" href="#menu1">Пользователи</a></li>
            <li><a data-toggle="tab" href="#menu2">Новости</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active" style="margin-top: 10px;">
                <c:forEach var="book" items="${books}">
                <div class="list-group" style="margin-bottom: 0px;">
                    <a href="edit/book/${book.id}" class="list-group-item" style="color: white; background-color: #040404; border-color: #2ad4d3;" >${book.title}</a>
                </div>
                </c:forEach>
            </div>
            <div id="menu1" class="tab-pane fade" style="margin-top: 10px;">
                <c:forEach var="us" items="${users}">
                    <div class="list-group" style="margin-bottom: 0px;">
                        <a href="edit/user/${us.id}" class="list-group-item" style="color: white; background-color: #040404; border-color: #2ad4d3;" >${us.login}</a>
                    </div>
                </c:forEach>
            </div>
            <div id="menu2" class="tab-pane fade" style="margin-top: 10px;">
                <c:forEach var="n" items="${news}">
                    <div class="list-group" style="margin-bottom: 0px;">
                        <a href="edit/user/${n.id}" class="list-group-item" style="color: white; background-color: #040404; border-color: #2ad4d3; ">${n.title}</a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:if>
</c:when>
    <c:otherwise>
        <div class="alert alert-danger">
            <strong>Ошибка!</strong> Только администраторы имеют доступ к данной странице.
        </div>
    </c:otherwise>
</c:choose>
    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич, Куртасова Ольга, Жлобич Ангелина</h5>
    </footer>



</body>
</html>
