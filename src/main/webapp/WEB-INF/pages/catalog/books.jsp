<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 06.05.2017
  Time: 17:57
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
            <div class="lat_news"><h3>Книги</h3></div>
            <div class="clearfix" style="margin-top: 25px;"></div>
            <div class="col-sm-8">
            <c:forEach var="book" items="${bookList}">
            <div class="books">
                <div class="col-sm-4">
                    <img src="/resources/images/books_promo/${book.id}.jpg"  alt="Book3" width="191" height="300">
                </div>
                <div class="col-sm-8">
                    <div class="lat_news"><a href="/books/book/${book.id}" class="book-title"><h3>${book.title}</h3></a></div>
                </div>
                <div class="col-sm-8">
                    <div class="about"><i>Добавил: ${book.user.login}, Дата: ${book.date}, ${book.time}</i></div>
                </div>
                <div class="col-sm-8">
                    <div class="description">${book.description}</div>
                </div>
                <div class="clearfix" style="margin-top: 20px;"></div>
                <div class="col-sm-12">
                    <div class="about_bot_op"><i>Посмотрели: ${book.count_people}</i></div>
                </div>
            </div>
            </c:forEach>
            </div>

            <div class="col-sm-4">
                <div class="sort_search">
                    <div class="lat_news"><h3>Поиск</h3></div>
                    <div id="by_title">
                        <form>
                            <label>Название:</label>
                            </br>
                            <input type="text" name="by_title" class="pol" id="title_s" placeholder="Введите название...">
                            <input type="submit" name="search" value="Найти" class="but_s">
                        </form>
                    </div>
                    <div class="clearfix" style="margin-bottom: 20px;"></div>
                    <div id="by_author">
                        <form>
                            <label>Автор:</label></br>
                            <input type="text" name="by_author" class="pol" id="author_s" placeholder="Введите автора...">
                            <input type="submit" name="search" value="Найти" class="but_s">
                        </form>
                    </div>
                    <div class="clearfix" style="margin-bottom: 20px;"></div>
                    <div class="lat_news"><h3>Сортировка</h3></div>
                    <div id="sort">
                        <form action="/books/sort" method="POST">
                            <label>Категория:</label></br>
                            <select class="pol" name="sort_pol">
                                <option name="reit">По рейтингу</option>
                                <option name="popul">По популярности</option>
                            </select>
                            <input type="submit" name="search" value="Начать" class="but_s">
                        </form>
                    </div>
                </div>
            </div>

            <div class="clearfix" style="margin-top: 25px;"></div>
            <ul class="pagination" style="padding-left: 15px;">
                <c:forEach var="page" items="${pageList}">
                    ${page}
                </c:forEach>
            </ul>

        </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>
    </footer>
</div>
</body>
</html>
