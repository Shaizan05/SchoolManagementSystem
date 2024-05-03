<%-- 
    Document   : Dashboard
    Created on : Apr 17, 2024, 6:58:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.0.5/css/dataTables.dataTables.css" />
        <link rel="stylesheet" href="js/style.css"/>

        <script src="https://cdn.datatables.net/2.0.5/js/dataTables.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body onload="DashLoad('homeload')">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img style="border: 1px;border-radius: 23px;" height="50px" width="50px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf5QoVTudbTzzXHRMn_twW87s3fxwtj9jcJJVSFKGu23c3-yph5LDAACcphxQLVaOBjuQ&usqp=CAU" alt="alt"/>
                </div>
                <ul class="nav navbar-nav">
                    <li onclick="DashLoad('homeload')"><a> <span class="glyphicon glyphicon-home"></span> Home</a></li>
                    <li onclick="DashLoad('studload')"><a> <span class="glyphicon glyphicon-education"></span> Student</a></li>
                    <li onclick="DashLoad('teachload')"><a> <span class="glyphicon glyphicon-user"></span> Teacher</a></li>
                    <li onclick="DashLoad('libload')"><a><span class="glyphicon glyphicon-book"></span> Library</a></li>

                </ul>
                <form style="margin-left: 450px" class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <ul class="nav navbar-nav">
                    <li style="margin-left:10px;" onclick="Logout()"><a>Log Out <span class="glyphicon glyphicon-log-out"></span></a></li>
                </ul>
            </div>

        </nav>    
        <div id="load"></div>
        <script src="js/script.js"></script>
    </body>
</html>
