<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 08.05.2017
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<div id="myModalBox" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Заголовок модального окна -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Авторизация</h4>
            </div>
            <!-- Основное содержимое модального окна -->

            <div class="modal-body">
                <c:choose>
                <c:when test="${authUser.role == null}">
                <form:form method="POST" action="/user/authorization" modelAttribute="user" id="loginForm">
                            <div class="field">
                                <label>Логин пользователя:</label>
                                <div class="input"><form:input path="login" type="text" name="" value="" id="login"/></div>
                            </div>

                            <div class="field">
                                <a href="#" id="forgot">Забыли пароль?</a>
                                <label>Пароль:</label>
                                <div class="input"><form:input path="pass" type="pass" name="" value="" id="pass"/></div>
                            </div>
                <div class="submit">
                    <form:button>Войти</form:button>
                    <label id="remember"><input name="" type="checkbox" value=""/> Запомнить меня</label>
                </div>
                </form:form>
                </c:when>
                </c:choose>

            </div>
            <!-- Футер модального окна -->
            <div class="modal-footer">

                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                <button type="button" class="btn btn-primary">Войти</button>
            </div>

        </div>
    </div>
</div>



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
            <li><a href="news">Новости</a></li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Каталог <b class="caret"></b></a>
                <ul class="dropdown-menu" >

                    <li><a href="#">Фантастика</a></li>
                    <li><a href="#">Детектив</a></li>
                    <li><a href="#">Романтика</a></li>
                    <li><a href="#">Биография</a></li>
                    <li><a href="#">Детская литература</a></li>
                    <li><a href="#">Роман</a></li>
                    <li><a href="#">Ужасы</a></li>
                    <li><a href="#">Юмор</a></li>
                    <li><a href="#">Боевик</a></li>
                    <li class="divider"></li>
                    <li><a href="/books">Все жанры</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Статистика<b class="caret"></b></a>
                <ul class="dropdown-menu" >
                    <!--style=" background-color: black;color:white;"-->
                    <li><a href="/stat/column">Рейтинги</a></li>
                    <li><a href="/stat/pie">Популярность</a></li>
                </ul>
            </li>
        </ul>

        <!-- Список ссылок, расположенный справа -->

<c:choose>
    <c:when test="${authUser.role != null}">
        <spring:eval expression="authUser.role == 'user'" var="isUser"/>
        <spring:eval expression="authUser.role == 'admin'" var="isAdmin"/>


        <c:if test="${isUser == true}">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">${authUser.login}<b class="caret"></b></a>
                    <ul class="dropdown-menu" >
                        <!--style=" background-color: black;color:white;"-->
                        <li><a href="/user/profile/${authUser.id}">Профиль</a></li>
                        <li><a href="/user/exit">Выход</a></li>
                    </ul>
                </li>
            </ul>
        </c:if>

        <c:if test="${isAdmin == true}">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">${authUser.login}<b class="caret"></b></a>
                    <ul class="dropdown-menu" >
                        <!--style=" background-color: black;color:white;"-->
                        <li><a href="/user/profile/${authUser.id}">Профиль</a></li>
                        <li><a href="/admin">Администрирование</a></li>
                        <li><a href="/user/exit">Выход</a></li>
                    </ul>
                </li>
            </ul>
        </c:if>

    </c:when>
    <c:otherwise>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" id="authoriz">Войти</a></li>
        </ul>
    </c:otherwise>

</c:choose>
    </div>

</nav>

<script>

    $(document).ready(function(){
        //при нажатию на любую кнопку, имеющую класс
        $("#authoriz").click(function() {
            //открыть модальное окно с id
            $("#myModalBox").modal('show');
        });
    });

</script>