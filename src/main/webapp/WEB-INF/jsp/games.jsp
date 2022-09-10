<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>
<html>
<head>
    <style>
        table, th, td {
            text-align: center;
            border-top: 1px solid black
        }
        html, body {
            height: 100%;
            margin: 0;
        }
        .search_div{
            margin-right: auto;
            margin-left: auto;
            margin-top: 5%;
            background-color: white;
            width: 500px;
            height: 100px;
            text-align: center;
            border: 1px solid black;
        }
        .table_div{
            background-color: white;
            width: 1200px;
            text-align: center;
            border-top: 1px solid black;
            margin: 5% auto 15%;
            height: auto;
        }
    </style>
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >

    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/player.css" >
    <title>Головна сторінка - NBAinUA</title>
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>

</head>

<script src="../../../resources/static/js/datepicker.js"></script>

<body style="background-color: #f3f3f3">
        <div class="card shadow-sm table_div">


        <h1 style="text-align: center">${noGamesMessage}</h1>

    <form onchange="this.form.submit()" action="${pageContext.request.contextPath}/games">
        <label for="date">Виберіть день</label>
        <input type="date" name="date" id="date">
        <input type="submit">
    </form>

        <c:forEach var="game" items="${gamesList}">
            <div class="game_div " style="background-color: white; box-shadow: #101010">



                <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley" style="text-decoration: none; color:black ">
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
                </a>


            </div>

         <br/>
        </c:forEach>
    </div>

</body>
</html>
<%@include file="includes/footer.jsp"%>
