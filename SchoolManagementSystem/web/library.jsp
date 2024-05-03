<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>

<c:if test="${process eq 'lib'}">
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Books</title>
                <style>
                    *{
                        margin:0;
                        padding: 0;
                        box-sizing: border-box;
                    }

                    .container1{
                        height: auto;
                        width: auto;
                        margin-top: 15px;
                        border-radius: 6px;
                        display:flex;
                        justify-content:space-around;
                        margin-bottom: 20px;
                    }
                    .col{
                        margin: 27px;
                        padding: 10px;
                        border-radius: 7px;
                        background-color:rgba(220,220,220,0.8);
                        justify-content:space-around;

                    }
                    .col:hover{
                        transition: all ease 0.1s;
                        box-shadow: 5px 5px 10px rgba(0,0,0,0.6);
                    }
                    #maindiv{
                        display: flex;
                        color: black;
                        padding: 10px;
                        flex-direction: column;
                        justify-content: space-around;
                        height: auto;
                    }
                    #bigdiv{
                        display: flex;
                        justify-content: center;
                    }
                    .card-text{
                        height: 100px;
                        font-size: 15px;
                        font-weight: 700;
                    }
                    * {
                        box-sizing: border-box;
                        font-weight: normal;
                    }

                    h2 {
                        font-size: 2.2em;
                    }

                    .flip {
                        position: relative;
                        >.front,
                        >.back {
                            display: block;
                            transition-timing-function: cubic-bezier(.175, .885, .32, 1.275);
                            transition-duration: 1.5s;
                            transition-property: transform, opacity;
                        }
                        >.front {
                            transform: rotateY(0deg);
                        }
                        >.back {
                            position: absolute;
                            opacity: 0;
                            top: 0px;
                            left: 0px;
                            width: 100%;
                            height: 100%;
                            transform: rotateY(-180deg);
                        }
                        &:hover {
                            >.front {
                                transform: rotateY(180deg);
                            }
                            >.back {
                                opacity: 1;
                                transform: rotateY(0deg);
                            }
                        }
                        &.flip-vertical {
                            >.back {
                                transform: rotateX(-180deg);
                            }
                            &:hover {
                                >.front {
                                    transform: rotateX(180deg);
                                }
                                >.back {
                                    transform: rotateX(0deg);
                                }
                            }
                        }
                    }
                    .flip {
                        position: relative;
                        display: inline-block;
                        margin-right: 2px;
                        margin-bottom: 1em;
                        width: 400px;
                        object-fit: fill;
                        >.front,
                        >.back {
                            display: block;
                            color: black;
                            width: inherit;
                            background-size: cover!important;
                            background-position: center!important;
                            height: 300px;
                            /*padding: 1em 1em;*/
                            /*background:linear-gradient(to right,#77a4f7,#070647);*/
                            background: linear-gradient(to right,#c9e2f5,#c9c9f5);
                            /*background:#f1f1f1;*/
                            /*border: 1px solid black;*/
                            box-shadow: 4px 4px 7px rgba(83, 83, 83, 0.8);
                            border-radius: 10px;
                            p {
                                font-size: 0.9125rem;
                                line-height: 160%;
                                color: #999;
                            }
                        }
                    }

                    .text-shadow {
                        text-shadow: 1px 1px rgba(0, 0, 0, 0.04),
                            2px 2px rgba(0, 0, 0, 0.04),
                            3px 3px rgba(0, 0, 0, 0.04),
                            4px 4px rgba(0, 0, 0, 0.04),
                            0.125rem 0.125rem rgba(0, 0, 0, 0.04),
                            6px 6px rgba(0, 0, 0, 0.04),
                            7px 7px rgba(0, 0, 0, 0.04),
                            8px 8px rgba(0, 0, 0, 0.04),
                            9px 9px rgba(0, 0, 0, 0.04),
                            0.3125rem 0.3125rem rgba(0, 0, 0, 0.04),
                            11px 11px rgba(0, 0, 0, 0.04),
                            12px 12px rgba(0, 0, 0, 0.04),
                            13px 13px rgba(0, 0, 0, 0.04),
                            14px 14px rgba(0, 0, 0, 0.04),
                            0.625rem 0.625rem rgba(0, 0, 0, 0.04),
                            16px 16px rgba(0, 0, 0, 0.04),
                            17px 17px rgba(0, 0, 0, 0.04),
                            18px 18px rgba(0, 0, 0, 0.04),
                            19px 19px rgba(0, 0, 0, 0.04),
                            1.25rem 1.25rem rgba(0, 0, 0, 0.04);
                    }
                    .mm{
                        height: 1px;
                        background-color: black;
                    }
                </style> 
        </head>
        <body>
            <div id='maindiv'>

                <center>
                    <H2 style="margin-top:10px ;color: black;">  BOOKS </H2></center>
                <div id="bigdiv" >
                    <div class="container1">
                        <div class="" style="justify-content: space-around;display:flex; flex-wrap:wrap;">


                            <%
                                ResultSet rs = (ResultSet) request.getAttribute("ResultSet");

                                while (rs.next()) {
                            %>
                            <div class="flip" style="width:200px;border-radius: 7px;margin: 10px">
                                <img class="front" src="<%=rs.getString("ImgUrl")%>" height="9"/>
                                <div class="back" style="padding: 7px;font-size: small;">
                                    <h4 class="card-title"><strong><%=rs.getString("BookTitle")%></strong></h4><hr class="mm">
                                        <p class="card-text" style="font-size: 15px;font-weight: 700;">Author: <%=rs.getString("BookAuthor")%> &nbsp;&nbsp; 
                                           
                                            <br> Details: <%=rs.getString("Description")%>&nbsp;&nbsp;&nbsp;</br></p><hr class="mm"></hr>
                                        <div style="display: flex; justify-content: center; align-items: center;">
                                            <button class="btn btn-primary" >GET</button> 
                                        </div>


                                </div>
                            </div>
                            <% }%>


                        </div>
                    </div>
                </div>  

            </div>
        </body>
    </html>
</c:if>

