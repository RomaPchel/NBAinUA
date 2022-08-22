<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <style>

    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
    <title>Гравці</title>
</head>
<body style="background-color: beige">

    <div style="margin-top: 15%" >
        <div class="search_div">
            <label for='myInput'>Search
                <input id='myInput' onkeyup='searchTable()' type='text' style="margin-top: 10%">
            </label>
        </div>
    <table style="margin-right: auto; margin-left: auto; margin-top:5%;border: 1px solid black; background-color: #FFFFFF" id='myTable'>

    <div class="table-header" style="margin-right: 50%;">

        <tr>
            <th>Ім'я</th>
            <th>Прізвище</th>
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
                    <td style="height:80px;width:80px"><a href="${pageContext.request.contextPath}/players/${player.getId()}">${player.getFirstName()}</a></td>
                    <td style="height:80px;width:80px"><a href="${pageContext.request.contextPath}/players/${player.getId()}">${player.getSecondName()}</a></td>
                    <td style="height:80px;width:80px">${player.getTeam().getName()}</td>
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