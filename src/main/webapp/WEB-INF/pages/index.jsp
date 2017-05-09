<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 02.05.2017
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Онлайн библиотека книг</title>
    <link rel='stylesheet' href='/resources/css/index_page/indexStyle.css'  >
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <script  src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>



</head>
<body>
<div class="container">


    <jsp:include page="header.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="nav.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>


    <jsp:include page="slider.jsp"></jsp:include>

    <!--news-->
    <div class="clearfix" style="margin-top: 25px;"></div>

    <div class="news">
        <div class="lat_news"><h3>Последние новости</h3></div>
        <div class="clearfix" style="margin-top: 25px;"></div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="/resources/images/news_logo/${id0}.jpg" alt="..." width="300" height="200"  class="nw_l">
                <div class="news_about">
                    <h3>${title0}</h3>
                    <p>${description0}</p>
                </div>
                <p><button name="all_news_1" class="but">Подробнее</button></p>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="/resources/images/news_logo/${id1}.jpg" alt="..." width="300" height="200" class="nw_l">
                <div class="news_about">
                    <h3>${title1}</h3>
                        <p>${description1}</p>
                </div>
                <p><button name="all_news_2" class="but">Подробнее</button></p>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="/resources/images/news_logo/${id2}.jpg" alt="..." width="300" height="200" class="nw_l">

                <div class="news_about">
                    <h3>${title2}</h3>
                    <p>${description2}</p>
                </div>
                <p><button name="all_news_3" class="but">Подробнее</button></p>
            </div>
        </div>
    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <div class="news">
        <div class="lat_news"><h3>Новинки</h3></div>
        <div class="clearfix" style="margin-top: 25px;"></div>

        <div class="books">
            <div class="col-sm-3">
                <img src="/resources/images/books_promo/${idbook0}.jpg"  alt="Book1" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="/books/${idbook0}" class="book-title"><h3>${booktitle0}</h3></a></div>
            </div>
            <div class="col-sm-9">
                <div class="about"><i>Добавил: ${userAut0}, Дата: ${time0}</i></div>
            </div>
            <div class="col-sm-9">
                <div class="description">${bookdescrip0}</div>
            </div>
        </div>

        <div class="books">
            <div class="col-sm-3">
                <img src="/resources/images/books_promo/${idbook1}.jpg"  alt="Book2" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="/books/${idbook1}" class="book-title"><h3>${booktitle1}</h3></a></div>
            </div>
            <div class="col-sm-9">
                <div class="about"><i>Добавил: ${userAut1}, Дата: ${time1}</i></div>
            </div>
            <div class="col-sm-9">
                <div class="description">${bookdescrip1}</div>
            </div>
        </div>

        <div class="books">
            <div class="col-sm-3">
                <img src="/resources/images/books_promo/${idbook2}.jpg"  alt="Book3" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="/books/${idbook2}" class="book-title"><h3>${booktitle2}</h3></a></div>
            </div>
            <div class="col-sm-9">
                <div class="about"><i>Добавил: ${userAut2}, Дата: ${time2}</i></div>
            </div>
            <div class="col-sm-9">
                <div class="description">${bookdescrip2}</div>
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
