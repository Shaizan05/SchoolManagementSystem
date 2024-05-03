<%-- 
    Document   : BOOK
    Created on : 27-Apr-2024, 11:53:20 am
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:if test="${process eq 'class'}">


    <html>
        <head>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
            <link rel="stylesheet" href="js/style.css"/>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>class Page</title>
        </head>
        <body>
            <div id="maindiv">

                <div class="card-deck">
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("ResultSet");
                        while (rs.next()) {
                    %>
                    <div class="card" style="width:400px;border-radius: 7px;margin: 10px;height: 650px;">

                        <img class="card-img-top" src="https://static.vecteezy.com/system/resources/previews/007/469/004/non_2x/graduated-student-in-simple-flat-personal-profile-icon-or-symbol-people-concept-illustration-vector.jpg" alt="Card image cap">
                        <div class="card-body">
                            NAME :<h5 class="card-title"><%= rs.getString("username")%></h5>
                            EMAIL :<p class="card-text"><%= rs.getString("email")%></p>
                            AGE :<p class="card-text"><%= rs.getInt("age")%></p>
                            GENDER :<p class="card-text"><%= rs.getString("gender")%></p>
                            HEIGHT :<p class="card-text"><%= rs.getInt("HEIGHT")%></p>
                            WEIGHT :<p class="card-text"><%= rs.getFloat("WEIGHT")%></p>
                        </div>

                    </div>
                    <% }%>

                </div>
            </div>

        </body>
    </html>
</c:if>
