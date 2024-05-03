<%-- 
    Document   : userProcess
    Created on : Apr 26, 2024, 7:57:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${process eq 'dash'}">



    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-primary">
                    <div class="card-body bg-primary text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-random fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("BranchCount")%></h1>
                                <h4>Branches</h4>
                            </div>
                        </div>
                    </div>
            
                </div>
            </div>
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-secondary">
                    <div class="card-body bg-secondary text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-user-graduate fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("StudCount")%></h1>
                                <h4>Students</h4>
                            </div>
                        </div>
                    </div>
             
                </div>
            </div>
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-success">
                    <div class="card-body bg-success text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-user-tie fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("TeacherCount")%></h1>
                                <h4>Teachers</h4>
                            </div>
                        </div>
                    </div>
              
                </div>
            </div>
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-danger">
                    <div class="card-body bg-danger text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-book fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("ModulesCount")%></h1>
                                <h4>Modules</h4>
                            </div>
                        </div>
                    </div>
               
                </div>
            </div>
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-warning">
                    <div class="card-body bg-warning text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-university fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("CompaniesCount")%></h1>
                                <h4>Companies</h4>
                            </div>
                        </div>
                    </div>
               
                </div>
            </div>
            <div class="col-lg-4 col-md-6" style="margin-top: 20px">
                <div class="card border-info">
                    <div class="card-body bg-info text-white">
                        <div class="row">
                            <div class="col-3">
                                <i class="fa fa-suitcase fa-5x"></i>
                            </div>
                            <div class="col-9 text-right">
                                <h1><%=request.getAttribute("InternCount")%></h1>
                                <h4>Internships</h4>
                            </div>
                        </div>
                    </div>
                 
                </div>
            </div>
        </div>
    </div>



</c:if>

