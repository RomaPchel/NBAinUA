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
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <!-- Font Awesome CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
    <title>${team.getName()}</title>
</head>
<body style="background-color:  #f3f3f3">

<div class="student-profile py-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent text-center">
                        <img  style="width: 150px; height: 150px" src="<%=application.getContextPath() %>/static/team-logos/${team.getLogo()}" alt="logo">
                        <h3>${team.getName()}</h3>
                    </div>
                    <div class="card-body">
                        <p class="mb-0"><strong class="pr-1">Позиція:</strong>${team.getStandings()}</p>
                        <p class="mb-0"><strong class="pr-1">Команда:</strong>${team.getAbbreviation()}</p>
                        <p class="mb-0"><strong class="pr-1">Рекорд:</strong>${team.getGamesWon()} - ${team.getGamesLost()}</p>

                    </div>
                    <div class="card-body">
                        <p class="mb-0"><strong class="pr-1">Очки:</strong>${team.getStandings()}</p>
                        <p class="mb-0"><strong class="pr-1">Передачі:</strong>${team.getAbbreviation()}</p>
                        <p class="mb-0"><strong class="pr-1">Підбори:</strong>${team.getGamesWon()} - ${team.getGamesLost()}</p>

                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Загальна інформація</h3>
                    </div>
                    <div class="card-body pt-0">
                        <table class="table table-bordered">
                            <tr>
                                <th width="30%">Конференція</th>
                                <td width="2%">:</td>
                                <td>${team.getConference()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Дівізіон</th>
                                <td width="2%">:</td>
                                <td>${team.getDivision()}</td>
                            </tr>

                            <tr>
                                <th width="30%">Місто</th>
                                <td width="2%">:</td>
                                <td>Вінниця</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="height: 26px"></div>

                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Статистика</h3>
                    </div>
                    <div class="card-body pt-0">
                        <table class="table table-bordered">
                            <tr>
                                <th width="30%">Лідер по очкам</th>
                                <td width="2%">:</td>
                                <td>                                    <img style="width: 100px; height: 75px" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${leadersMap.get("pointsLeader").getId()}.png" alt="student dp"></p>
                                    <p>
                                    ${leadersMap.get("pointsLeader").getFirstName()} ${leadersMap.get("pointsLeader").getSecondName()} ${leadersMap.get("pointsLeader").getPoints()} ppg
                                </td>
                            </tr>
                            <tr>
                                <th width="30%">Лідер по передачах</th>
                                <td width="2%">:</td>
                                <td>                                     <img style="width: 100px; height: 75px" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${leadersMap.get("assistsLeader").getId()}.png" alt="student dp"></p>
                                    <p>
                                    ${leadersMap.get("assistsLeader").getFirstName()} ${leadersMap.get("assistsLeader").getSecondName()} ${leadersMap.get("pointsLeader").getAssists()} apg
                                </td>
                            </tr>

                            <tr>
                                <th width="30%">Лідер по підборах</th>
                                <td width="2%">:</td>
                                <td>                                    <img style="width: 100px; height: 75px" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${leadersMap.get("reboundsLeader").getId()}.png" alt="student dp"></p>
                                    <p>
                                    ${leadersMap.get("reboundsLeader").getFirstName()} ${leadersMap.get("reboundsLeader").getSecondName()} ${leadersMap.get("pointsLeader").getRebounds()} rpg
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
                <div style="height: 26px"></div>
            </div>

        </div>

            <div class="col-lg-12">

                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Гравці</h3>
                    </div>
                    <div class="card-body pt-0">
                        <table style="margin: 5% auto;border-top: 1px  solid black; background-color: #FFFFFF;  position: relative;
;  border-collapse: collapse;
" id='myTable' class="sortable;">

                            <div class="table-header" style="margin-right: 50%;position: sticky;">

                                <tr style="top: 0; /* Don't forget this, required for the stickiness */">
                                    <th>Фото</th>
                                    <th>Ім'я</th>
                                    <th>Очки</th>
                                    <th>Передачі</th>
                                    <th>Підбори</th>
                                    <th>Зріст</th>
                                    <th>Номер</th>
                                    <th>Позиція</th>
                                    <th>Вага</th>
                                    <th>Звідки</th>
                                </tr>
                            </div>
                            <div class="table-tabs" style="margin-right: auto; margin-left: auto">
                                <div style="margin: auto">
                                    <c:forEach items="${playersList}" var="player">

                                        <tr>
                                            <td style="height:80px;width:80px">
                                                <img style="width: 100px; height: 75px" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${player.getId()}.png" alt="Image not found" onerror="this.onerror=null;this.src='https://cdn.nba.com/headshots/nba/latest/260x190/logoman.png';" />
                                            </td>
                                            <td style="height:80px;width:80px"><a href="${pageContext.request.contextPath}/players/${player.getId()}">${player.getFirstName()} ${player.getSecondName()}</a></td>
                                            <td style="height:80px;width:80px">${player.getPoints()}</td>
                                            <td style="height:80px;width:80px">${player.getAssists()}</td>
                                            <td style="height:80px;width:80px">${player.getRebounds()}</td>
                                            <td style="height:80px;width:80px">${player.getHeight()}</td>
                                            <td style="height:80px;width:80px">${player.getNumber()}</td>
                                            <td style="height:80px;width:80px">${player.getPosition()}</td>
                                            <td style="height:80px;width:80px">${player.getWeight()}</td>
                                            <td style="height:80px;width:80px">${player.getFromOrAttended()}</td>

                                        </tr>

                                    </c:forEach>
                                </div>
                            </div>
                        </table>
                    </div>
                </div>
                </div>
        </div>
    </div>
</div>

</body>

</html>