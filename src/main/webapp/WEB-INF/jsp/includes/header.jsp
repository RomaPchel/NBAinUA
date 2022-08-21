<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
</head>
<body >
<div th:fragment="header">
    <header style="background-color: #FFFFFF">
        <div class="inner">
            <div class="logo">
                <div>
                    <!-- The below line can be an image or a h1, either will work -->
                    <!-- <h1>My Logo</h1> -->
                </div>
            </div>

            <nav>
                <!-- Each of the below lines look complicated. There is a reason for this markup though!
                <li> tag will be the container for the table.
                <span> will be the part that centers the content inside it
                <a> is the actual clickable part -->
                <li><span><a href="">Новини</a></span></li>
                <li><span><a href="${pageContext.request.contextPath}/players/show-all">Гравці</a></span></li>
                <li><span><a href="${pageContext.request.contextPath}/teams/show-all">Команди</a></span></li>
                <li><span><a href="">Ігри</a></span></li>
                <!-- On the line above, remove the class="button" if you don't want the final
                element to be a button -->
            </nav>
        </div>
    </header>
</div>
</body>
</html>