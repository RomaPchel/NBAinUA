<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>
<html>
<head>
    <title>Головна сторінка - NBAinUA</title>
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
</head>

<script src="../../../resources/static/js/datepicker.js"></script>

<body style="background-color: #f3f3f3">
<div style="margin-top: 5%">

    <h1 style="text-align: center">${noGamesMessage}</h1>

    <c:forEach var="game" items="${gamesList}">

    <div class="col-lg-12">

        <div class="card shadow-sm game_div" style="background-color: #FFFFFF; box-shadow: #101010">
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley" style="text-decoration: none; color:black ">
                <div class="info_for_game">
                    <div class="team_container">
                        <div class="logo">
                            <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getFirstTeam().getLogo()}" alt="logo">
                        </div>
                        <div>
                            <p class="team_name">${game.getFirstTeam().getName()}</p>
                        </div>
                        <div>
                            <p>${game.getFirstTeam().getGamesWon()} - ${game.getFirstTeam().getGamesLost()}</p>
                        </div>
                    </div>
                    <div class="gametime">
                        <p>${game.getTime()}</p>
                        <c:if test="${game.isHasEnded()}">
                            <p>${game.getFirstTeamScore()} : ${game.getSecondTeamScore()}</p>
                        </c:if>
                    </div>

                    <div class="team_container">
                        <div class="logo">
                            <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getSecondTeam().getLogo()}" alt="logo">
                        </div>
                        <div>
                            <p class="team_name">${game.getSecondTeam().getName()}</p>
                        </div>
                        <div>
                            <p>${game.getSecondTeam().getGamesWon()} - ${game.getSecondTeam().getGamesLost()}</p>
                        </div>
                    </div>
                </div>
            </a>

            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley" style="text-decoration: none; color:black; ">
                <div class="game_navigation" style="border-top: 1px solid black">
                    <p>Open</p>
                </div>
            </a>

        </div>
        <br/>
        </c:forEach>
    </div>
</div>
</body>
</html>
<%@include file="includes/footer.jsp"%>
