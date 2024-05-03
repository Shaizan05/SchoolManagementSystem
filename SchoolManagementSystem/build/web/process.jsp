<%-- 
    Document   : process
    Created on : Apr 17, 2024, 8:26:28 PM
    Author     : Admin
--%>
<%@page import="java.sql.ResultSet"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<c:if test="${process eq 'homeload'}">
    <center><div style="width: 75%;font-family: cursive;border: solid black 2px;border-radius: 15px;background-color: lightgray; margin: 10px;padding: 20px;">
            <p >Students are the vibrant threads in the fabric of education, embodying curiosity, 
                resilience, and growth. Each student is a unique tapestry of aspirations, challenges,
                and potentials, woven together by experiences within the classroom and beyond. 
                They navigate the intricate pathways of learning, guided by the hands of teachers and mentors, 
                as well as the compass of their own passions and interests. 
                Students are not merely recipients of knowledge but active participants in its creation,
                forging connections, questioning assumptions, and igniting the flames of inquiry. 
                They embody the spirit of exploration, fearlessly venturing into the realms of academia and beyond,
                armed with the tools of critical thinking and a thirst for understanding. In their journey,
                students not only cultivate intellect but also nurture empathy, 
                resilience, and a sense of responsibility towards shaping the world they inhabit. 
                They are the architects of tomorrow, poised to leave an indelible mark on the landscape of humanity.</p>
            <button class="btn btn-warning" onclick="DashLoad('studload')">Go to student</button>
        </div>

        <div style="width: 75%;font-family: cursive;border: solid black 2px;border-radius: 15px;background-color: lightgray; margin: 10px;padding: 20px;">
            <p >Students are the vibrant threads in the fabric of education, embodying curiosity, 
                resilience, and growth. Each student is a unique tapestry of aspirations, challenges,
                and potentials, woven together by experiences within the classroom and beyond. 
                They navigate the intricate pathways of learning, guided by the hands of teachers and mentors, 
                as well as the compass of their own passions and interests. 
                Students are not merely recipients of knowledge but active participants in its creation,
                forging connections, questioning assumptions, and igniting the flames of inquiry. 
                They embody the spirit of exploration, fearlessly venturing into the realms of academia and beyond,
                armed with the tools of critical thinking and a thirst for understanding. In their journey,
                students not only cultivate intellect but also nurture empathy, 
                resilience, and a sense of responsibility towards shaping the world they inhabit. 
                They are the architects of tomorrow, poised to leave an indelible mark on the landscape of humanity.</p>
            <button class="btn btn-warning" onclick="DashLoad('teachload')">Go to teacher</button>
        </div>

        <div style="width: 75%;font-family: cursive;border: solid black 2px;border-radius: 15px;background-color: lightgray; margin: 10px;padding: 20px;">
            <p >Students are the vibrant threads in the fabric of education, embodying curiosity, 
                resilience, and growth. Each student is a unique tapestry of aspirations, challenges,
                and potentials, woven together by experiences within the classroom and beyond. 
                They navigate the intricate pathways of learning, guided by the hands of teachers and mentors, 
                as well as the compass of their own passions and interests. 
                Students are not merely recipients of knowledge but active participants in its creation,
                forging connections, questioning assumptions, and igniting the flames of inquiry. 
                They embody the spirit of exploration, fearlessly venturing into the realms of academia and beyond,
                armed with the tools of critical thinking and a thirst for understanding. In their journey,
                students not only cultivate intellect but also nurture empathy, 
                resilience, and a sense of responsibility towards shaping the world they inhabit. 
                They are the architects of tomorrow, poised to leave an indelible mark on the landscape of humanity.</p>
            <button class="btn btn-warning" onclick="DashLoad('libload')">Go to library</button>
        </div></center>
    </c:if>

<c:if test="${process eq 'addstud'}">
    <button onclick="BackStep('backstud')"><span class="glyphicon glyphicon-arrow-left"></span></button>
    <form class="form-horizontal" id="f1">
        <center><h1>ADD STUDENT FORM</h1></center>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">username</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Enter name">
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
                <input type="number" class="form-control" id="age" placeholder="Enter age">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">gender</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="gender" placeholder="Enter gender">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">height</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="height" placeholder="Enter height">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">weight</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="weight" placeholder="Enter weight">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-success" type="button" class="btn btn-default" onclick="AddStudent()">Add Student</button>
            </div>
        </div>
    </form>
    <div id="addajx"></div>
</c:if>

<c:if test="${process eq 'addteach'}">
    <button onclick="BackStep('backteach')"><span class="glyphicon glyphicon-arrow-left"></span></button>

    <form class="form-horizontal" id="f1">
        <center><h1>ADD TEACHER FORM</h1></center>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">id</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="id" placeholder="Enter id">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">NAME</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Enter name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="Enter email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="address" placeholder="Enter password">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">age</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="age" placeholder="Enter password">
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-success" type="button" class="btn btn-default" onclick="AddTeacher()">Add Teacher</button>
            </div>
        </div>
    </form>
    <div id="addteach"></div>
</c:if>

<c:if test="${process eq 'supdate'}">
    <%

        String sUser = (String) session.getAttribute("UserResult");
        String sEmail = (String) session.getAttribute("EmailResult");
        String sGender = (String) session.getAttribute("GenderResult");
    %>
    <br><br><button onclick="BackStep('backsetting')"><span class="glyphicon glyphicon-arrow-left">BACK</span></button>

    <center><h1>EDIT YOUR PROFILE</h1></center>

    <div class="form-group">
        <label class="control-label col-sm-2" for="email">username</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="name" placeholder="Enter name" value="<%=sUser%>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Email:</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="email" placeholder="Enter email" value="<%=sEmail%>" disabled>
            <label style="color: red;">Note : Email Can't be Change Due to Update</label>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="pwd">gender</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="gender" placeholder="Enter gender" value="<%=sGender%>" >
        </div>
    </div>



    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-success" onclick="updateset()">Edit Student</button>
        </div>
    </div>    

</form>

<div id="editsset">

</div>
</c:if>
