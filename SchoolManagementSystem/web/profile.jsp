<%-- 
    Document   : profile
    Created on : Apr 27, 2024, 12:15:21 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:if test="${process eq 'user'}">
        <%
            String sUser = (String) session.getAttribute("UserResult");
            String sEmail = (String) session.getAttribute("EmailResult");
            String sGender = (String) session.getAttribute("GenderResult");
        %>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Responsive User Profile Card using HTML and CSS</title>
            <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="profile/profile.css">
        </head>
        <body>

            <div class="wrapper">
                <div class="user-card">
                    <div class="user-card-img">
                        <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjxivAs4UknzmDfLBXGMxQkayiZDhR2ftB4jcIV7LEnIEStiUyMygioZnbLXCAND-I_xWQpVp0jv-dv9NVNbuKn4sNpXYtLIJk2-IOdWQNpC2Ldapnljifu0pnQqAWU848Ja4lT9ugQex-nwECEh3a96GXwiRXlnGEE6FFF_tKm66IGe3fzmLaVIoNL/s1600/img_avatar.png" alt="">
                    </div>
                    <div class="user-card-info">
                        <h2> <%=sUser%></h2>
                        <p><span>Email:</span>  <%=sEmail%></p>
                        <p><span>gender</span>  <%=sGender%></p>
                        <p><span>Location:</span> Palestine, Gaza Strip</p>
                        <p><span>Occupation:</span> Web Developer</p>
                        <p><span>About me:</span> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
        </body>
    </c:if>

</html>
