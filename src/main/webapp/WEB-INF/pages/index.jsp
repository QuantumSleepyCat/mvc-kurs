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
    <link rel='stylesheet' href='resources/css/index_page/indexStyle.css'  >
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
    <script  src="resources/js/jquery-2.1.4.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>



</head>
<body>
<div class="container">
    <header>
        <div id="logo">
            <div name="logo" class="col-sm-9 col-md-9 left" id="lg"><a href="\"><div class="lg_home"></div></a></div>
            <div class="col-sm-3 col-md-3 right" id="search">
                <form class="navbar-form" role="search" >
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Поиск" name="q">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" id="search_btn"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </header>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <jsp:include page="nav.jsp"></jsp:include>

    <div class="clearfix" style="margin-top: 25px;"></div>

    <div id="slid">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../../resources/images/slider/lib1.jpg" alt="About book">
                    <div class="carousel-caption">
                        <h3>Los Angeles</h3>
                        <p>LA is always so much fun!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="../../resources/images/slider/bk1.jpg" alt="About book">
                    <div class="carousel-caption">
                        <h3>Chicago</h3>
                        <p>Thank you, Chicago!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="../../resources/images/slider/lib2.jpg" alt="About book">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!--news-->
    <div class="clearfix" style="margin-top: 25px;"></div>

    <div class="news">
        <div class="lat_news"><h3>Последние новости</h3></div>
        <div class="clearfix" style="margin-top: 25px;"></div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="resources/images/news_logo/${id0}.jpg" alt="..." width="300" height="200"  class="nw_l">
                <div class="news_about">
                    <h3>${title0}</h3>
                    <p>${description0}</p>
                </div>
                <p><button name="all_news_1" class="but">Подробнее</button></p>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="resources/images/news_logo/${id1}.jpg" alt="..." width="300" height="200" class="nw_l">
                <div class="news_about">
                    <h3>${title1}</h3>
                        <p>${description1}</p>
                </div>
                <p><button name="all_news_2" class="but">Подробнее</button></p>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail news_tab">
                <img src="resources/images/news_logo/${id2}.jpg" alt="..." width="300" height="200" class="nw_l">

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
                <img src="resources/images/books_promo/${idbook0}.jpg"  alt="Book1" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="books/${idbook0}" class="book-title"><h3>${booktitle0}</h3></a></div>
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
                <img src="resources/images/books_promo/${idbook1}.jpg"  alt="Book2" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="books/${idbook1}" class="book-title"><h3>${booktitle1}</h3></a></div>
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
                <img src="resources/images/books_promo/${idbook2}.jpg"  alt="Book3" width="191" height="300">
            </div>
            <div class="col-sm-9">
                <div class="lat_news"><a href="books/${idbook2}" class="book-title"><h3>${booktitle2}</h3></a></div>
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
