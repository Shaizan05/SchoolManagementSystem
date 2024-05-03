<%-- 
    Document   : Edtstud
    Created on : Apr 24, 2024, 6:36:34 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${process eq 'updatestud'}">
    <button onclick="BackStep('backstud')"><span class="glyphicon glyphicon-arrow-left"></span></button>
    <form class="form-horizontal" id="f1">
        <%
            ResultSet urs = (ResultSet) request.getAttribute("ResultSet");
            while (urs.next()) {
        %>
        <center><h1>EDIT STUDENT FORM</h1></center>

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">username</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Enter name" value="<%= urs.getString("username")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="Enter email" value="<%= urs.getString("email")%>" disabled>
                <label style="color: red;">Note : Email Can't be Change Due to Update</label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" value="<%= urs.getString("password")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">age</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="age" placeholder="Enter age" value="<%= urs.getInt("age")%>" >
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">gender</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="gender" placeholder="Enter gender" value="<%= urs.getString("gender")%>" >
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">height</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="height" placeholder="Enter height" value="<%= urs.getInt("HEIGHT")%>" >
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">weight</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="weight" placeholder="Enter weight" value="<%= urs.getFloat("WEIGHT")%>" >
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-success" onclick="udatestudent()">Edit Student</button>
            </div>
        </div>
        <% } %>

    </form>

    <div id="editstudajx">

    </div>
</c:if>

<c:if test="${process eq 'updteach'}">
    <button onclick="BackStep('backteach')"><span class="glyphicon glyphicon-arrow-left"></span></button>
    <form class="form-horizontal" id="f1">
        <%
            ResultSet Ars = (ResultSet) request.getAttribute("ResultSet");
            while (Ars.next()) {
        %>
        <center><h1>EDIT TEACHER FORM</h1></center>

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">tid</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="id" placeholder="Enter name" value="<%= Ars.getInt("T_id")%>" disabled>
                <label style="color: red;">Note : Id Can't be Change Due to Update</label>

            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">name</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="name" placeholder="Enter email" value="<%= Ars.getString("T_name")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">email</label>
            <div class="col-sm-10">
                <input type="mail" class="form-control" id="email" placeholder="Enter password" value="<%= Ars.getString("T_email")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="address" placeholder="Enter age" value="<%= Ars.getString("T_address")%>" >
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">age</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="age" placeholder="Enter age" value="<%= Ars.getInt("T_age")%>" >
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-success" onclick="UpdateTeach()">Edit teacher</button>
            </div>
        </div>
        <% }%>

    </form>

    <div id="edtajx">

    </div>
</c:if>


<c:if test="${process eq 'updatelib'}">
    <button onclick="BackStep('backlib')"><span class="glyphicon glyphicon-arrow-left"></span></button>
    <form class="form-horizontal" id="f1">
        <%
            ResultSet lrs = (ResultSet) request.getAttribute("ResultSet");
            while (lrs.next()) {
        %>
        <center><h1>EDIT LIBRARY FORM</h1></center>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Bookname</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="bookname" placeholder="Enter email" value="<%= lrs.getString("BookTitle")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Author</label>
            <div class="col-sm-10">
                <input type="mail" class="form-control" id="Author" placeholder="Enter password" value="<%= lrs.getString("BookAuthor")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">image</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="image" placeholder="Enter age" value="<%= lrs.getString("ImgUrl")%>" >
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Description</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Description" placeholder="Enter age" value="<%= lrs.getString("Description")%>" >
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-success" onclick="EditLibgh()">Edit library</button>
            </div>
        </div>
        <% }%>

    </form>

    <div id="edtajxx">

    </div>
</c:if>