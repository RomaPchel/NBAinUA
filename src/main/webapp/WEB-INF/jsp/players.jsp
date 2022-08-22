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
        .search_div{
            margin: 5% auto;
            background-color: white;
            width: 750px;
            height: 120px;
            text-align: center;
            border: 1px solid black;
        }
        a{
            color: black !important;
        }
        .table_div{
            background-color: white;
            width: 1000px;
            text-align: center;
            border-top: 1px solid black;
            overflow: auto;
            overflow-x: hidden;
            max-height: 100vh;
            margin: 5% auto 15%;
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
    <title>Гравці</title>
</head>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

<body style="background-color:  #f3f3f3">

    <div style="margin-top: 5%; margin-bottom: 15%" >

            <div class="card shadow-sm search_div" >
                    <label for='myInput'>Знайти
                        <input id='myInput' onkeyup='searchTable()' type='text' style="margin-top: 5%;">
                    </label>
            </div>

                <div class="card shadow-sm table_div" style="margin-bottom: 15%">

                    <table style="margin: 5% auto;border-top: 1px  solid black; background-color: #FFFFFF;  position: relative;
;  border-collapse: collapse;
" id='myTable' class="sortable;">

                        <div class="table-header" style="margin-right: 50%;position: sticky;">

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
                        <div class="table-tabs" style="margin-right: auto; margin-left: auto">
                            <div style="margin: auto">
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