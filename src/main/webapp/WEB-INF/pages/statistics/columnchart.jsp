<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 15.05.2017
  Time: 9:31
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
        <script src="https://www.google.com/jsapi"></script>
        <script>
            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Жанр', 'Мужчины', 'Женщины'],
                    ['Фантастика', 4.7, 4.2],
                    ['Фэнтези', 4.8, 4.6],
                    ['Биография', 3.9, 4.3],
                    ['Детективы', 3.3, 4.0],
                    ['Детская литература', 3.5, 3.5],
                    ['Роман', 4.0, 4.6],
                    ['Ужасы', 4.3, 4.5],
                    ['Юмор', 3.8, 3.6],
                    ['Боевик', 4.7, 3.8]
                ]);
                var options = {
                    title: 'Средний рейтинг жанры',
                    hAxis: {title: 'ед.'},
                    vAxis: {title: 'ед.'}
                };
                var chart = new google.visualization.ColumnChart(document.getElementById('oil'));
                chart.draw(data, options);
            }
        </script>
        <div id="oil" style="width: 700px; height: 600px; position: relative;left: 20%"></div>
        <br>
        <h3 style="color: #2ad4d3;">Средний рейтинг по жанрам</h3>
    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>
    </footer>
</div>
</body>
</html>