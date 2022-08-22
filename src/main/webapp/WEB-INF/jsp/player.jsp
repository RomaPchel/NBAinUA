<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="includes/header.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>

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
<body style="background-color: beige">

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
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Інша інформація</h3>
                    </div>
                    <div class="card-body pt-0">
                        <p>123</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>