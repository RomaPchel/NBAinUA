<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <style>
        table, th, td {
            border: 1px solid black;
            text-align: center;
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
            width: 750px;
            height: 200px;
            text-align: center;
            border: 1px solid black;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
    <title>Команди</title>
</head>
<body style="background-color: beige">

<div >
    <div class="search_div">
        <label for='myInput'>Search
            <input id='myInput' onkeyup='searchTable()' type='text' style="margin-top: 10%">
        </label>
    </div>
    <table style="margin-right: auto; margin-left: auto; margin-top:5%;border: 1px solid black; background-color: #FFFFFF" id='myTable'>

        <div class="table-header" style="margin-right: 50%;">

            <tr>
                <th>Лого</th>
                <th>Назва</th>
                <th>Конференція</th>
                <th>Дівізіон</th>
                <th>Позиція</th>
                <th>Рахунок</th>

            </tr>
        </div>
        <div class="table-tabs" style="margin-right: auto; margin-left: auto">
            <div style="margin: auto">
                <c:forEach items="${teamsList}" var="team">
                    <tr>
                        <td style="height:80px;width:80px">
                            <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/${team.getLogo()}" alt="logo">
                        </td>
                        <td style="height:80px;width:80px">${team.getFullName()}</td>
                        <td style="height:80px;width:80px">${team.getConference()}</td>
                        <td style="height:80px;width:80px">${team.getDivision()}</td>
                        <td style="height:80px;width:80px">${team.getStandings()}</td>
                        <td style="height:80px;width:80px">${team.getGamesWon()} - ${team.getGamesLost()}</td>

                    </tr>
                </c:forEach>
            </div>
        </div>
    </table>

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