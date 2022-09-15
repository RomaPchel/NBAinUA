<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>

    <style>
        table, th, td {
            border-top: 1px solid black;
            text-align: center;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >

    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/player.css" >
    <title>Головна сторінка - NBAinUA</title>
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <!-- Font Awesome CSS -->
    <title>${team.getName()}</title>
</head>
<body style="background-color:  #f3f3f3">

<div class="student-profile py-4">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">
                <div class="card shadow-sm table_div">

                <div class="row container">
                    <div class="col-4 ">
                        <div class="row d-flex justify-content-center">
                            <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getFirstTeam().getLogo()}" alt="logo">
                        </div>
                        <div class="row d-flex justify-content-center">
                            <p >${game.getFirstTeam().getName()}</p>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <p>${game.getFirstTeam().getGamesWon()} - ${game.getFirstTeam().getGamesLost()}</p>
                        </div>
                    </div>
                    <div class="col-4 ">
                        <div class="row d-flex justify-content-center">

                            <p>${game.getTime()}</p>
                            <c:if test="${game.isHasEnded()}">
                                <p style="text-align: center; margin-top: 20px">${game.getFirstTeamScore()} : ${game.getSecondTeamScore()}</p>
                            </c:if>
                            <c:if test="${!game.isHasEnded()}">
                                <p style="text-align: center; margin-top: 20px"> Гра ще не почалась</p>
                            </c:if>

                        </div>

                    </div>

                    <div class="col-4">
                        <div class="row d-flex justify-content-center">
                            <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getSecondTeam().getLogo()}" alt="logo">
                        </div>
                        <div class="row d-flex justify-content-center">
                            <p >${game.getSecondTeam().getName()}</p>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <p>${game.getSecondTeam().getGamesWon()} - ${game.getSecondTeam().getGamesLost()}</p>
                        </div>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>

</body>

</html>