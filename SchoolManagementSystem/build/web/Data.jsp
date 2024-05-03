<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:if test="${process eq 'studload'}" >
    <button onclick="Addstudform()"><span class="glyphicon glyphicon-plus"> Add New Student</span></button>
    <center><h1>STUDENT TABLE</h1></center>

    <table border="1" id="myTable" class="table table-hover">
        <thead>
            <tr>
                <th>username</th>
                <th>email</th>
                <th>password</th>
                <th>age</th>
                <th>gender</th>
                <th>height</th>
                <th>weight</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            <%
                ResultSet rs = (ResultSet) request.getAttribute("ResultSet");
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("username")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("password")%></td>
                <td><%= rs.getInt("age")%></td>
                <td><%= rs.getString("gender")%></td>
                <td><%= rs.getInt("HEIGHT")%></td>
                <td><%= rs.getFloat("WEIGHT")%></td>
                <td><button class="btn btn-warning" studMail="<%=rs.getString("email")%>"  onclick="EditStud(this)"> <span class="glyphicon glyphicon-pencil"></span></button>
                    <button class="btn btn-danger" studMail="<%=rs.getString("email")%>" onclick="DeleteStud(this)"><span class="glyphicon glyphicon-trash"></span></button></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <div id="ajx"></div>
</c:if>


<c:if test="${process eq 'teachload'}">
    <button onclick="Addteachform()"><span class="glyphicon glyphicon-plus"> Add New teacher</span></button>

    <center><h1>Teacher TABLE</h1></center> 

    <table border="1" class="table table-hover" id="myTable">
        <thead>
            <tr>
                <th>teacher id</th>
                <th>teacher name</th>
                <th>teacher mail</th>
                <th>teacher address</th>
                <th>teacher Age</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            <%
                ResultSet rss = (ResultSet) request.getAttribute("ResultSet");
                while (rss.next()) {
            %>
            <tr>
                <td><%= rss.getString("T_id")%></td>
                <td><%= rss.getString("T_name")%></td>
                <td><%= rss.getString("T_email")%></td>
                <td><%= rss.getString("T_address")%></td>
                <td><%= rss.getString("T_age")%></td>
                <td><button class="btn btn-warning" tid="<%= rss.getString("T_id")%>" onclick="EditTeach(this)"> <span class="glyphicon glyphicon-pencil"></span></button>
                    <button class="btn btn-danger" teachMail="<%=rss.getString("T_email")%>" onclick="DeleteTeach(this)"><span class="glyphicon glyphicon-trash"></span></button></td>
            </tr>
            <% }%>
        </tbody>
    </table>
    <div id="ajax"></div>
</c:if>

<c:if test="${process eq 'libload'}" >
    <button onclick=""><span class="glyphicon glyphicon-plus"> Add New LIBRARY</span></button>
    <center><h1>LIBRARY TABLE</h1></center>

    <table border="1" id="myTable" class="table table-hover">
        <thead>
            <tr>
                <th>Book name</th>
                <th>Author</th>
                <th>Image</th>
                <th>Description</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            <%
                ResultSet rsl = (ResultSet) request.getAttribute("ResultSet");
                while (rsl.next()) {
            %>
            <tr>
                <td><%= rsl.getString("BookTitle")%></td>
                <td><%= rsl.getString("BookAuthor")%></td>
                <td><%= rsl.getString("ImgUrl")%></td>
                <td><%= rsl.getString("Description")%></td>

                <td><button class="btn btn-warning" Bookauth="<%= rsl.getString("BookAuthor")%>" onclick="EditLib(this)"> <span class="glyphicon glyphicon-pencil"></span></button>
                    <button class="btn btn-danger" onclick=""><span class="glyphicon glyphicon-trash"></span></button></td>
            </tr>
            <% }%>
        </tbody>
    </table>
    <div id="libajax"></div>
</c:if>
