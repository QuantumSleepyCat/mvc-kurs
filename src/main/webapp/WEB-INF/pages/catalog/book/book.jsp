<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 10.05.2017
  Time: 15:19
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
    <jsp:include page="../../header.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="../../nav.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="../../slider.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>
    <div class="news">
        <div class="col-sm-7 col-md-5">
        <img src="/resources/images/books_promo/${id}.jpg"  alt="Book_page" width="380"></div>
    <div class="col-sm-5 col-md-7" id="back_des">
        <div class="lat_news"><h3>${title}</h3></div>
        <div class="rai" id="reit_bord">
            <div class="col-sm-2"><span id="rai_title">Рейтинг:</span></div><div class="col-sm-3" style="min-width: 154px; left: 15px">
            <div class="rating" style="font-size: 20px"></div>
            <span>Значение: ${rating}</span>
        </div><div class="col-sm-3">Голосов: ${count}</div>
            <br>
        </div>
        <div class="clearfix" ></div>
        <div class="ab_book">
            Жанр: ${genre}
            <br>
            Автор: ${author}
            <br>
            Издательство: ${edit}
            <br>
            Год: ${year}
        </div>
        <div class="line"></div>
        <div class="descrab">
            Описание:<br>
            ${description}
        </div>
        <div class="line" style="margin-bottom: 10px;"></div>
        <a href="#spoiler-1" data-toggle="collapse" class="btn btn-success">Скачать</a>
        <a href="#spoiler-1" class="btn btn-success" style="float:right;">Читать</a>
        <div class="collapse" id="spoiler-1">
            <div class="links">
                <a href="#">Источник 1</a>
                <br>
                <a href="#">Источник 2</a>
            </div>
        </div>
        <div class="about" id="info"><i>Добавил: ${userAut}, Дата: ${time}</i></div>
        <div class="clearfix" style="margin-top: 25px;"></div>

    </div>
        <div class="clearfix" style="margin-top: 25px;"></div>
        <%--<div class="row">--%>
            <div class="cl-*-*" id="comments">
                <div class="lat_news"><h3>Отзывы пользователей:</h3></div>
                <c:choose>
                    <c:when test="${size_list!=0}">
                <c:forEach items="${com_list}" var="com" varStatus="comStat">
                <c:choose>
                    <c:when test="${comStat.count%2==0}">
                <div class="col-sm-12"><div class="comm"><div class="user_av">
                    <img src="/resources/images/comment/57.jpg" width="65" style="float: left;">
                    <strong class="log_us">${com.user.login}</strong><div class="time"><i>Дата: ${com.date} Время ${com.time}</i></div>
                <div class="text_comment">${com.message}</div>
                </div>
                </div>
                </div>
                    </c:when>
                    <c:otherwise>
                <div class="col-sm-12"><div class="comm" style="background-color: #333333"><div class="user_av" >
                    <img src="/resources/images/comment/57.jpg" width="65" style="float: left;">
                    <strong class="log_us">${com.user.login}</strong><div class="time"><i>Дата: ${com.date} Время ${com.time}</i></div>
                    <div class="text_comment">${com.message}</div>
                </div>
                </div>
                </div>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
                    </c:when>
                </c:choose>
                <div class="clearfix" style="margin-bottom: 20px;"></div>
                <c:choose>
                    <c:when test="${authUser.role != null}">
                        <spring:eval expression="authUser.role == 'user'" var="isUser"/>
                        <spring:eval expression="authUser.role == 'admin'" var="isAdmin"/>


                        <c:if test="${isUser == true}">
                            Будет поле
                        </c:if>

                        <c:if test="${isAdmin == true}">
                            Будет поле
                        </c:if>

                    </c:when>
                    <c:otherwise>
                        <div class="alert alert-danger">
                            <strong>Ошибка!</strong> Только зарегистрированные пользователи могут оставалять отзывы.
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        <%--</div>--%>
    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич, Куртасова Ольга, Жлобич Ангелина</h5>
    </footer>


<script>

    $('.rating').stars();

    // 3 Stars with tootltip and callback
    $('.rating').stars({
        stars: 0,
        value: ${rating},
        click: function(index) {

        }
    });
</script>

</body>
</html>