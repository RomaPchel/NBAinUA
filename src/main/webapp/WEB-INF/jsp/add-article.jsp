<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <style>

        html, body {
            height: 100%;
            margin: 0;
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
        table{

        }
        th, td {
            border-top: 1px solid black;
            text-align: center;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/includes.css" >
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/main.css" >
    <link rel="stylesheet" type="text/css"
          href="<%=application.getContextPath() %>/static/css/player.css" >

    <!-- Bootstrap CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>

    <title>Гравці</title>
</head>

<body style="background-color:  #f3f3f3">
<div class="row">
    <div class="col-lg-10" >
        <div class="card shadow-sm table_div" >
            <h2>Створити новину</h2>
            <div class="container flex-d align-items-center">

            <form method="post" action="${pageContext.request.contextPath}/articles/create">

                <div class="container flex-d align-items-center">

                        <div class="row createRow">
                            <input class="contentRow" type="text" name="content" placeholder="Добавте контент">
                        </div>
                        <div class="row createRow">
                            <input type="text" name="snippet" placeholder="Добавте сніппет">
                        </div>

                        <div class="row createRow">
                            <input type="text" name="previewImage" placeholder="Добавте прев'ю фото">
                        </div>

                        <div class="row createRow">
                            <input type="text" name="mainImage" placeholder="Добавте головне фото">
                        </div>


                     <input type="submit">

                </div>

            </form>
            </div>


        </div>
    </div>


</div>

</body>

</html>
<%@include file="includes/footer.jsp"%>
