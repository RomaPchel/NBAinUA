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
        html, body {
            height: 100%;
            margin: 0;
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
    <title>${player.getFirstName()} ${player.getSecondName()}</title>
</head>
<body style="background-color:  #f3f3f3">

<div class="student-profile py-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent text-center">
                        <img class="profile_img" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${player.getId()}.png" alt="student dp">
                        <h3>${player.getFirstName()} ${player.getSecondName()}</h3>
                    </div>
                    <div class="card-body">
                        <p class="mb-0"><strong class="pr-1">ID:</strong>${player.getId()}</p>
                        <p class="mb-0"><strong class="pr-1">Команда:</strong>${player.getTeam().getName()}</p>
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
                                <th width="30%">Зріст</th>
                                <td width="2%">:</td>
                                <td>${player.getHeight()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Вага	</th>
                                <td width="2%">:</td>
                                <td>${player.getWeight()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Номер</th>
                                <td width="2%">:</td>
                                <td>${player.getNumber()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Позиція</th>
                                <td width="2%">:</td>
                                <td>${player.getPosition()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Університет/країна</th>
                                <td width="2%">:</td>
                                <td>${player.getFromOrAttended()}</td>
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
                                <th width="30%">Очки</th>
                                <td width="2%">:</td>
                                <td>${player.getPoints()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Передачі	</th>
                                <td width="2%">:</td>
                                <td>${player.getAssists()}</td>
                            </tr>
                            <tr>
                                <th width="30%">Підбори</th>
                                <td width="2%">:</td>
                                <td>${player.getRebounds()}</td>
                            </tr>

                        </table>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="card shadow-sm col-12" >

                <div style="overflow: auto;
            overflow-x: hidden; margin: 5%">

                    <table style="margin: 5% auto;border-top: 1px  solid black; background-color: #FFFFFF;  position: relative;
;  border-collapse: collapse;
" id='myTable' class="sortable;">

                        <div class="table-header" style="margin-right: 50%;position: sticky; top: 0;">

                            <tr style="top: 0; /* Don't forget this, required for the stickiness */">
                                <th>Гра</th>
                                <th>Результат</th>
                                <th>Хвилин</th>
                                <th>PTS</th>
                                <th>FGM</th>
                                <th>FGA</th>
                                <th>FG%</th>
                                <th>3PM</th>
                                <th>3PA</th>
                                <th>3P%</th>
                                <th>FTM</th>
                                <th>FTA</th>
                                <th>FT%</th>
                                <th>OREB</th>
                                <th>DREB</th>
                                <th>REB</th>
                                <th>AST</th>
                                <th>STL</th>
                                <th>BLK</th>
                                <th>TOV</th>
                                <th>PF</th>
                                <th>+/-</th>

                            </tr>
                        </div>
                        <div class="table-tabs" style="margin-right: auto; margin-left: auto; ">
                            <div style="margin: auto; ">
                                <c:forEach items="${lastFive}" var="game">

                                    <tr>

                                        <td style="height:80px;width:80px">${game.get(0)}</td>
                                        <td style="height:80px;width:80px">${game.get(1).substring(1,2)}</td>
                                        <td style="height:80px;width:80px">${game.get(2)}</td>
                                        <td style="height:80px;width:80px">${game.get(20)}</td>
                                        <td style="height:80px;width:80px">${game.get(3)}</td>
                                        <td style="height:80px;width:80px">${game.get(4)}</td>
                                        <td style="height:80px;width:80px">${game.get(5)}</td>
                                        <td style="height:80px;width:80px">${game.get(6)}</td>
                                        <td style="height:80px;width:80px">${game.get(7)}</td>
                                        <td style="height:80px;width:80px">${game.get(8)}</td>
                                        <td style="height:80px;width:80px">${game.get(9)}</td>
                                        <td style="height:80px;width:80px">${game.get(10)}</td>
                                        <td style="height:80px;width:80px">${game.get(11)}</td>
                                        <td style="height:80px;width:80px">${game.get(12)}</td>
                                        <td style="height:80px;width:80px">${game.get(13)}</td>
                                        <td style="height:80px;width:80px">${game.get(14)}</td>
                                        <td style="height:80px;width:80px">${game.get(15)}</td>
                                        <td style="height:80px;width:80px">${game.get(16)}</td>
                                        <td style="height:80px;width:80px">${game.get(17)}</td>
                                        <td style="height:80px;width:80px">${game.get(18)}</td>
                                        <td style="height:80px;width:80px">${game.get(19)}</td>
                                        <td style="height:80px;width:80px">${game.get(21)}</td>

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

</body>

</html>