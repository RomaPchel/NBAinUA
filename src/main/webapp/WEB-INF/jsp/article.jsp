<jsp:useBean id="article" scope="request" type="ua.pchel.nbainua.hibernate.models.Article"/>
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
        .table_div{
            background-color: white;
            height: auto;
              width: 1050px;
              text-align: center;
              border-top: 1px solid black;
            margin: 5% auto 10%;
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
    <title>Команди</title>
</head>
<body style="background-color: #f3f3f3">
<div class="card shadow-sm col-10 table_div" >

    <div class="col-12">
        <div  style="margin:5% auto 5%;  width: 80%">
            <h2>${article.title}</h2>
            <p style="font-size: 24px">${article.snippet}</p>
        </div>

        <div class="img-div">
            <img style="width: 80%" src="${article.mainImage}" alt="article image">
        </div>
        <div style="margin:5% auto 5%; width: 70%">
            <p style="text-align: left; font-size: 24px;line-height: 2;">  ${article.content}</p>
        </div>
    </div>
</div>

</body>
</html>
<%@include file="includes/footer.jsp"%>
