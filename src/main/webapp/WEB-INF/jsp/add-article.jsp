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
          href="<%=application.getContextPath() %>/static/css/main.css" >
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
<div class="row">
    <div class="col-lg-10" >
        <div class="card shadow-sm table_div" >
            <h2>Створити новину</h2>
            <form method="post" action="${pageContext.request.contextPath}/articles/create">
                <table>

                    <tr>
                            <input type="text" name="title" placeholder="Введіть заголовок">
                    </tr>
                    <tr>
                            <input type="text" name="title" placeholder="Введіть заголовок">
                    </tr>
                    <tr>
                            <input type="text" name="content" placeholder="Добавте контент">
                    </tr>
                    <tr>
                            <input type="text" name="snippet" placeholder="Добавте сніппет">
                    </tr>
                    <tr>

                            <input type="text" name="previewImage" placeholder="Добавте прев'ю фото">
                    </tr>
                    <tr>

                            <input type="text" name="mainImage" placeholder="Добавте головне фото">
                    </tr>
                </table>




                <input type="submit">
            </form>


        </div>
    </div>


</div>

</body>

</html>
<%@include file="includes/footer.jsp"%>
