<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>
<html>
<head>
    <title>Головна сторінка</title>
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
</head>
<body style="background-color: azure">
<div style="margin-top: 2%">
    <h1 style="text-align: center">${noGamesMessage}</h1>

    <c:forEach var="game" items="${gamesList}">

    <div class="game_div" style="background-color: #FFFFFF; box-shadow: #101010">
        <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley" style="text-decoration: none; color:black ">
            <div class="info_for_game">
                <div class="team_container">
                    <div class="logo">
                        <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/${game.getFirstTeam().getLogo()}" alt="logo">
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
                </div>

                <div class="team_container">
                    <div class="logo">
                         <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/${game.getSecondTeam().getLogo()}" alt="logo">
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
            <div class="game_navigation">
                <p>Open</p>
            </div>
        </a>

    </div>
    <br/>
</c:forEach>
</div>

</body>
</html>