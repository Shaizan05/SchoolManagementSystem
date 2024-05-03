<%-- 
    Document   : register
    Created on : Apr 15, 2024, 8:50:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="js/style.css"/>
    </head>
    <body>
        <form class="form-horizontal" id="f1">
            <center><h1>Register</h1></center>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">username</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="user" placeholder="Enter email">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" placeholder="Enter email">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">age</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="age" placeholder="Enter password">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">GENDER</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="gender" placeholder="Enter gender">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" onclick="return regvalid()">Submit</button>
                </div>
            </div>
            <div class="form-group" style="margin-left: 20%">
                <p>If you are already Registered, then Login<a href="login.jsp"> click here</a></p>
            </div>
        </form>
        <script src="js/script.js"></script>
    </body>
</html>
