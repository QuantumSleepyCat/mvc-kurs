<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 06.05.2017
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <nav class="navbar navbar-default" id="nav_ed">
        <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->

        <div class="navbar-header">
            <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->
            <a href="/" class="navbar-brand">Books</a>
        </div>
        <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->
        <div class="collapse navbar-collapse" id="main-menu" style="background-color: #2ad4d3;">
            <!-- Список ссылок, расположенных слева -->
            <ul class="nav navbar-nav">
                <!--Элемент с классом active отображает ссылку подсвеченной -->
                <li><a href="/">Главная <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Статьи</a></li>
                <li><a href="news">Новости</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Каталог <b class="caret"></b></a>
                    <ul class="dropdown-menu" >

                        <li><a href="#">Фантастика</a></li>
                        <li><a href="#">Детектив</a></li>
                        <li><a href="#">Романтика</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="active">Все жанры</a></li>
                    </ul>
                </li>
                <li><a href="news">Новинки</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Статистика<b class="caret"></b></a>
                    <ul class="dropdown-menu" >
                        <!--style=" background-color: black;color:white;"-->
                        <li><a href="#">Рейтинги</a></li>
                        <li><a href="#">Популярность</a></li>
                    </ul>
                </li>
            </ul>

            <!-- Список ссылок, расположенный справа -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Войти</a></li>
            </ul>
        </div>

    </nav>

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

    <div class="clearfix" style="margin-top: 25px;"></div>

    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>
    </footer>
</div>
</body>
</html>
