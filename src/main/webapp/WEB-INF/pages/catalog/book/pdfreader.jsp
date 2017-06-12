<%--
  Created by IntelliJ IDEA.
  User: QuantumCat
  Date: 14.05.2017
  Time: 21:37
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
    <div class="news" style="    padding-left: 13%; overflow: auto;">

        <script src="/resources/js/pdfreader/build/pdf.js"></script>

        <h1 style="color: #2ad4d3">Чтение онлайн</h1>

        <div>
            <button id="prev">Previous</button>
            <button id="next">Next</button>
            &nbsp; &nbsp;
            <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>
        </div>

        <canvas id="the-canvas"></canvas>


    </div>
    <div class="clearfix" style="margin-top: 25px;"></div>
    <footer>
        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич, Куртасова Ольга, Жлобич Ангелина</h5>
    </footer>


    <script>
        var url = '/resources/books/${id}.pdf';

        // The workerSrc property shall be specified.
        PDFJS.workerSrc = '/resources/js/pdfreader/build/pdf.worker.js';

        var pdfDoc = null,
            pageNum = 1,
            pageRendering = false,
            pageNumPending = null,
            scale = 1.4,
            canvas = document.getElementById('the-canvas'),
            ctx = canvas.getContext('2d');

        /**
         * Get page info from document, resize canvas accordingly, and render page.
         * @param num Page number.
         */
        function renderPage(num) {
            pageRendering = true;
            // Using promise to fetch the page
            pdfDoc.getPage(num).then(function(page) {
                var viewport = page.getViewport(scale);
                canvas.height = viewport.height;
                canvas.width = viewport.width;

                // Render PDF page into canvas context
                var renderContext = {
                    canvasContext: ctx,
                    viewport: viewport
                };
                var renderTask = page.render(renderContext);

                // Wait for rendering to finish
                renderTask.promise.then(function() {
                    pageRendering = false;
                    if (pageNumPending !== null) {
                        // New page rendering is pending
                        renderPage(pageNumPending);
                        pageNumPending = null;
                    }
                });
            });

            // Update page counters
            document.getElementById('page_num').textContent = pageNum;
        }

        /**
         * If another page rendering in progress, waits until the rendering is
         * finised. Otherwise, executes rendering immediately.
         */
        function queueRenderPage(num) {
            if (pageRendering) {
                pageNumPending = num;
            } else {
                renderPage(num);
            }
        }

        /**
         * Displays previous page.
         */
        function onPrevPage() {
            if (pageNum <= 1) {
                return;
            }
            pageNum--;
            queueRenderPage(pageNum);
        }
        document.getElementById('prev').addEventListener('click', onPrevPage);

        /**
         * Displays next page.
         */
        function onNextPage() {
            if (pageNum >= pdfDoc.numPages) {
                return;
            }
            pageNum++;
            queueRenderPage(pageNum);
        }
        document.getElementById('next').addEventListener('click', onNextPage);

        /**
         * Asynchronously downloads PDF.
         */
        PDFJS.getDocument(url).then(function(pdfDoc_) {
            pdfDoc = pdfDoc_;
            document.getElementById('page_count').textContent = pdfDoc.numPages;

            // Initial/first page rendering
            renderPage(pageNum);
        });
    </script>

</body>
</html>
