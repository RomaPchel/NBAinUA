<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" >
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
            margin: 5% auto 25%;
            margin-bottom: 15%;
            height: auto;
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
    <title>Команди</title>
</head>
<body style="background-color: #f3f3f3">

<div >
    <div class="card shadow-sm search_div" >
        <label for='myInput'>Знайти
            <input id='myInput' onkeyup='searchTable()' type='text' style="margin-top: 5%;">
        </label>
    </div>
    <div class="card shadow-sm table_div">
    <table>
        <tr>
            <td>

                <table style="margin-right: auto; margin-left: auto; margin-top:5%; background-color: #FFFFFF ;display:inline-table;
" id='myTable'>

            <div class="table-header" style="margin-right: 50%;">

                <tr>
                    <th>Лого</th>
                    <th>Назва</th>
                    <th>Дівізіон</th>
                    <th>Позиція</th>
                    <th>Рахунок</th>

                </tr>
            </div>
            <div class="table-tabs" style="margin-right: auto; margin-left: auto">
                <div style="margin: auto">
                    <c:forEach items="${westernTeamsList}" var="team">
                        <tr>
                            <td style="height:80px;width:80px">
                                <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${team.getLogo()}" alt="logo">
                            </td>
                            <td style="height:80px;width:80px">${team.getFullName()}</td>
                            <td style="height:80px;width:80px">${team.getDivision()}</td>
                            <td style="height:80px;width:80px">${team.getStandings()}</td>
                            <td style="height:80px;width:80px">${team.getGamesWon()} - ${team.getGamesLost()}</td>

                        </tr>
                    </c:forEach>
                </div>
            </div>
        </table>
        </td>
        <td>

            <table style="margin-right: auto; margin-left: auto; margin-top:5%; background-color: #FFFFFF ;display:inline-table;" id='myTable2'>

                <div class="table-header" style="margin-right: 50%;">

                    <tr>
                        <th>Лого</th>
                        <th>Назва</th>
                        <th>Дівізіон</th>
                        <th>Позиція</th>
                        <th>Рахунок</th>

                    </tr>
                </div>
                <div class="table-tabs" style="margin-right: auto; margin-left: auto">
                    <div style="margin: auto">
                        <c:forEach items="${easternTeamsList}" var="team">
                            <tr>
                                <td style="height:80px;width:80px">
                                    <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${team.getLogo()}" alt="logo">
                                </td>
                                <td style="height:80px;width:80px">${team.getFullName()}</td>
                                <td style="height:80px;width:80px">${team.getDivision()}</td>
                                <td style="height:80px;width:80px">${team.getStandings()}</td>
                                <td style="height:80px;width:80px">${team.getGamesWon()} - ${team.getGamesLost()}</td>

                            </tr>
                        </c:forEach>
                    </div>
                </div>
            </table>
        </td>
        </tr>
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
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable2");
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
