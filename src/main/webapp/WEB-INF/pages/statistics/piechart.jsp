<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 15.05.2017
  Time: 9:29
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
                    ['Жанр', 'Просмотры'],
                    ['Фантастика',     18.09],
                    ['Фэнтези', 30.95],
                    ['Биография',    5.93],
                    ['Детективы', 15.03],
                    ['Детская литература',    4.93],
                    ['Роман',    9.93],
                    ['Ужасы',    6.93],
                    ['Юмор',    0.28],
                    ['Боевик',    7.93],
                ]);
                var options = {
                    title: 'Популярность жанров',
                    is3D: true,
                    pieResidueSliceLabel: 'Остальное'
                };
                var chart = new google.visualization.PieChart(document.getElementById('air'));
                chart.draw(data, options);
            }
        </script>
        <div id="air" style="width: 500px; height: 400px; position: relative; left: 25%;"></div>
        <br>
        <h3 style="color: #2ad4d3;">Статистика популярности по жанрам</h3>
    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>
    </footer>
</div>
</body>
</html>