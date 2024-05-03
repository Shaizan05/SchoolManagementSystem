
<%-- 
    Document   : userProcess
    Created on : Apr 26, 2024, 7:57:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${process eq 'setting'}">
    <%
        String sUser = (String) session.getAttribute("UserResult");
        String sEmail = (String) session.getAttribute("EmailResult");
        String sGender = (String) session.getAttribute("GenderResult");
    %>

    <html>
        <head>
            <link rel="stylesheet" href="js/setting.css"/>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>setting Page</title>

        </head>
        <body>
            <div class="container">
                <div class="amd-app">
                    <div class="amd-intro">
                        <h1 class="text-center"> Settings</h1>
                        <hr>
                    </div>
                    <div class="amd-info text-center">
                        <h4>Name:</h4>
                        <p><%=sUser%></p>

                        <h4>GENDER:</h4>
                        <p><%=sGender%></p>

                        <h4>Email:</h4>
                        <p><%=sEmail%></p>
                        <div class="amd-action text-center">
                            <button class="btn btn-primary" onclick="supdate()">Update Account</button></br>
                            <!--<button class="btn btn-danger">Delete Account</button>-->
                        </div>

                    </div>

                </div>
            </div>
            <div id="sajax"></div>
        </body>
    </html>
</c:if>
