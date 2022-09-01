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
            width: 1050px;
            text-align: center;
            border-top: 1px solid black;

            max-height: 1000px;
            margin: 5% auto 15%;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
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
    <title>Головна сторінка - NBAinUA</title>
</head>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
<script>
    var element = document.getElementById('news_div');
    var positionInfo = element.getBoundingClientRect();
    var height = positionInfo.height;
</script>
<body style="background-color:  #f3f3f3">
<div class="row">
    <div class="col-lg-8" >
        <div class="card shadow-sm table_div" >
            <h2 style="margin-top:5%">Новини</h2>

            <div style="overflow: auto;
            overflow-x: hidden; margin: 5%">
                <div class="news_main">
                    <div class="row">
                        <div class="col-6">
                                <c:forEach items="${firstNewsList}" var="article">
                                    <a style="color: black" href="/articles/${article.getId()}">
                                    <div class="card shadow-sm article " >

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
                        <div class="col-6">
                            <c:forEach items="${secondNewsList}" var="article">
                                <a style="color: black" href="/articles/${article.getId()}">

                                <div class="card shadow-sm article " >

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

            </div>

        </div>
    </div>

    <div class="col-lg-4">
        <div class="card shadow-sm news_div" style="margin-top: 10%; margin-bottom: 10%" id="news_div">


            <c:forEach var="game" items="${gamesList}">
            <table class="table table-bordered">
                <tr>
                    <div class="info_for_game" style="margin: auto">
                       <td>
                           <div class="logo">
                               <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getFirstTeam().getLogo()}" alt="logo">
                           </div>
                           <div>
                               <p class="team_name">${game.getFirstTeam().getName()}</p>
                           </div>
                       </td>
                        <td>
                            <div class="gametime">
                                <p>${game.getTime()}</p>
                                <c:if test="${game.isHasEnded()}">
                                    <p>${game.getFirstTeamScore()} : ${game.getSecondTeamScore()}</p>
                                </c:if>
                            </div>
                        </td>
                        <td>
                            <div class="logo">
                                <img  style="width: 75px; height: 50px" src="<%=application.getContextPath() %>/static/team-logos/${game.getSecondTeam().getLogo()}" alt="logo">
                            </div>
                            <div>
                                <p class="team_name">${game.getSecondTeam().getName()}</p>
                            </div>
                        </td>

                    </div>
                </tr>
            </table>
           <div class="row info_for_game">



           </div>
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
