<jsp:useBean id="randomPlayer" scope="request" type="ua.pchel.nbainua.hibernate.models.Player"/>
<%@ page import="ua.pchel.nbainua.hibernate.models.Player" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>
<jsp:useBean id="playersList" scope="request" type="java.util.List"/>

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
        .random_player{
            margin: 5% auto;
            background-color: white;
            width: 1000px;
            text-align: center;
            border: 1px solid black;
            padding: 2%;
        }
        .news_div{
            background-color: white;
            width: 500px;
            text-align: center;
            border: 1px solid black;
        }
        a{
            color: black ;
        }
        .table_div{
            background-color: white;
            width: 1000px;
            text-align: center;
            border-top: 1px solid black;

            max-height: 750px;
            margin: 5% auto 15%;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >

    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/player.css" >
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/article.css" >
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <!-- Font Awesome CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
    <title>Гравці</title>
</head>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

<body style="background-color:  #f3f3f3">
<div class="row">
<div class="col-lg-8" >
<div class="card shadow-sm random_player" >
    <div class="row flex-d align-items-center">
        <h4 style="margin-right: 30%">Рандомний гравець</h4>

    </div>
    <div class="row">

        <div class="col-lg-6">
                <img style="width: 150px;" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${randomPlayer.getId()}.png" alt="Image not found" onerror="this.onerror=null;this.src='https://cdn.nba.com/headshots/nba/latest/260x190/logoman.png';" />

               <p style="margin-top: 5%; font: 24px bold;"> <a href="${pageContext.request.contextPath}/players/${randomPlayer.getId()}"> ${randomPlayer.getFirstName()} ${randomPlayer.getSecondName()}</a></p>
        </div>
        <div class="col-lg-6">
            <table class="table table-bordered">
                <tr>
                    <th width="30%">Команда</th>
                    <td><a href="${pageContext.request.contextPath}/teams/${randomPlayer.getTeam().getId()}">${randomPlayer.getTeam().getName()}</a></td>
                </tr>
                <tr>
                    <th width="30%">Очки</th>
                    <td>${randomPlayer.getPoints()}</td>
                </tr>
                <tr>
                    <th width="30%">Передачі	</th>
                    <td>${randomPlayer.getAssists()}</td>
                </tr>
                <tr>
                    <th width="30%">Підбори</th>
                    <td>${randomPlayer.getRebounds()}</td>
                </tr>

            </table>
        </div>
    </div>


</div>

    <div class="card shadow-sm table_div" >
        <label for='myInput'>Знайти
            <input id='myInput' onkeyup='searchTable()' type='text' style="margin-top: 5%">
        </label>
        <div style="overflow: auto;
            overflow-x: hidden; margin: 5%">

        <table style="margin: 5% auto;border-top: 1px  solid black; background-color: #FFFFFF;  position: relative;
;  border-collapse: collapse;
" id='myTable' class="sortable;">

            <div class="table-header" style="margin-right: 50%;position: sticky; top: 0;">

                <tr style="top: 0; /* Don't forget this, required for the stickiness */">
                    <th>Фото</th>
                    <th>Ім'я</th>
                    <th>Команда</th>
                    <th>Зріст</th>
                    <th>Номер</th>
                    <th>Позиція</th>
                    <th>Вага</th>
                    <th>Звідки</th>
                </tr>
            </div>
            <div class="table-tabs" style="margin-right: auto; margin-left: auto; ">
                <div style="margin: auto; ">
                    <c:forEach items="${playersList}" var="player">

                        <tr>
                            <td style="height:80px;width:80px">
                                <img style="width: 100px; height: 75px" src="https://cdn.nba.com/headshots/nba/latest/1040x760/${player.getId()}.png" alt="Image not found" onerror="this.onerror=null;this.src='https://cdn.nba.com/headshots/nba/latest/260x190/logoman.png';" />
                            </td>
                            <td style="height:80px;width:80px"><a href="${pageContext.request.contextPath}/players/${player.getId()}">${player.getFirstName()} ${player.getSecondName()}</a></td>
                            <td style="height:80px;width:80px"><a href="${pageContext.request.contextPath}/teams/${player.getTeam().getId()}">${player.getTeam().getName()}</a></td>
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

<div class="col-lg-4">
    <div class="card shadow-sm news_div" style="margin-top: 10%">

        <c:forEach items="${newsList}" var="article">
            <a style="color: black" href="/articles/${article.getId()}">

            <div class="card shadow-sm articlePlayersPage " >

                <div class="articleContent row">

                        <div class="image col-4">
                            <img class="imagePlayersPage" src="${article.getImage()}" >
                        </div>


                    <div class="articleBody col-8">
                        <p class="articleTitle"> ${article.getTitle()}</p>

                        <p class="snippet"> ${article.getSnippet()}</p>
                    </div>
                </div>
                <div class="articleFooter">
                    <p class="date">${article.getDate()}</p>
                </div>
            </div>
            </a>
        </c:forEach>

    </div>
</div>
</div>

</body>
<script>
    function searchTable() {
        let input, filter, found, table, tr, td, i, j;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td");
            for (j = 0; j < td.length; j++) {
                if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
                    found = true;
                }
            }
            if (found) {
                tr[i].style.display = "";
                found = false;
            } else {
                tr[i].style.display = "none";
            }
        }
    }
</script>
</html>
<%@include file="includes/footer.jsp"%>
