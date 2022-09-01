<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <style>
        .header {
            width: 100vw;
            height: 100px;
            border-bottom: solid 1px rgba(16, 16, 16, 0.1);

        }

        /* Add some top padding to the page content to prevent sudden quick movement (as the header gets a new position at the top of the page (position:fixed and top:0) */
        .sticky + .content {
            padding-top: 102px;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
</head>
<script>
    // When the user scrolls the page, execute myFunction
    window.onscroll = function() {myFunction()};

    // Get the header
    var header = document.getElementById("myHeader");

    // Get the offset position of the navbar
    var sticky = header.offsetTop;

    // Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }
    }
</script>
<body >
<div class="header" id="myHeader">
    <header style=" background: #fff; position: fixed; z-index: 1000;" >
        <div class="inner" >
            <div class="logo">
                <div>
                    <!-- The below line can be an image or a h1, either will work -->
                    <h1><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/800px-Flag_of_Ukraine.svg.png" alt="ukr flag"></h1>

                </div>
                <div style="display: table-cell; vertical-align: middle;">

                    <h1 style="margin-left: 25%"> NBAinUA</h1>
                </div>

            </div>



            <nav>
                <!-- Each of the below lines look complicated. There is a reason for this markup though!
                <li> tag will be the container for the table.
                <span> will be the part that centers the content inside it
                <a> is the actual clickable part -->

                <li><span><a class="button" href="${pageContext.request.contextPath}/">Новини</a></span></li>
                <li><span><a class="button" href="${pageContext.request.contextPath}/players/show-all">Гравці</a></span></li>
                <li><span><a class="button" href="${pageContext.request.contextPath}/teams/show-all">Команди</a></span></li>
                <li><span><a class="button" href="${pageContext.request.contextPath}/games">Ігри</a></span></li>
                <!-- On the line above, remove the class="button" if you don't want the final
                element to be a button -->
            </nav>
        </div>
    </header>
</div>

</body>
</html>