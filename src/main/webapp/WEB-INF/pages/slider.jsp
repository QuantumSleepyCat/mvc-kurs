<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 09.05.2017
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h3>Л. Гинзбург</h3>
                    <p>Профессионализм – это обращенное в профессию творчество.</p>
                </div>
            </div>

            <div class="item">
                <img src="../../resources/images/slider/bk1.jpg" alt="About book">
                <div class="carousel-caption">
                    <h3>Г. Форд</h3>
                    <p>Собраться вместе – это начало, остаться вместе – это успех.</p>
                </div>
            </div>

            <div class="item">
                <img src="../../resources/images/slider/lib2.jpg" alt="About book">
                <div class="carousel-caption">
                    <h3>И. Бродский</h3>
                    <p>Свобода существует затем, чтобы ходить в библиотеку.</p>
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

