<%-- 
    Document   : rap
    Created on : 05-03-2023, 23:30:55
    Author     : fpt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ticket Booking</title>
        <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
        <link rel="stylesheet" href="https://npmcdn.com/flickity@2/dist/flickity.css">
        <link rel="stylesheet" type="text/css" href="assets/css/progress.css">

        <link rel="stylesheet" type="text/css" href="assets/css/ticket-booking.css">

        <!-- ..............For progress-bar............... -->
        <link rel="stylesheet" type="text/css" href="assets/css/e-ticket.css">

        <link rel="stylesheet" type="text/css" href="assets/css/payment.css" />
        <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700" rel="stylesheet">
        <style>
            .thay{
                width: min-content;
                font-weight: bold;
                color: white;
                border: 0 none;
                border-radius: 0px;
                cursor: pointer;
                font-size: 0.8rem;
                padding: 10px 35px;
                margin: 10px 5px 10px 0px;
                float: right;
                border-radius: 22px;

                margin-left: 20px;
                margin-right: 20px;
                background: var(--theme-rose);
            }
            .thay:disabled{
                background-color: #443d40;
            }
            .mo{
                margin: 0px 38%;
            }


        </style>
    </head>

    <body>
        <jsp:include page="menu.jsp" ></jsp:include>
        
        <c:if test="${sessionScope.acc == null}">
            <jsp:forward page="/login.jsp" />
        </c:if>
        <% DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        Date date = new Date();   
        %>
        <% DateFormat dateFormat1 = new SimpleDateFormat("dd-MM-yyyy");
                        Date date1 = new Date();   
        %>
        <% DateFormat dateFormat2 = new SimpleDateFormat("HH");
                        Date date2 = new Date();   
        %>
        <% DateFormat dateFormat3 = new SimpleDateFormat("mm");
                        Date date3 = new Date();   
        %>
        <div class="container" id="progress-container-id">
            <div class="row">
                <div class="col">
                    <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                        <form id="form" action="suatChieu" method="get">
                            <input type="hidden" name="n" value="<%=dateFormat.format(date)%>">
                            <input type="hidden" name="jj" value="<%=dateFormat1.format(date1)%>">
                            <input type="hidden" name="h" value="<%=dateFormat2.format(date2)%>">
                            <input type="hidden" name="m" value="<%=dateFormat3.format(date3)%>">
                            <ul id="progressbar" class="progressbar-class">
                                <li class="active mo" id="step1"></li>
                            </ul>
                            <br>

                            <fieldset>
                                <div id="screen-select-div">
                                    <h2>Chọn rạp</h2>

                                    <ul class="time-ul">
                                        <c:forEach items="${requestScope.t}" var="o">
                                            <li class="time-li">
                                                <div class="screens">
                                                    ${o.dia_chi}
                                                </div>
                                                <div class="time-btn">
                                                    <input type="button" class="screen-time" value="${o.ten}" onclick="timeFunction('${o.rap_id}')">
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
<!--                                   <input name="phim_id" id="phim_id" value="${sessionScope.phim_id}">-->
                                <input type="hidden" name="rap_id" id="rap_id" value="">

                                <button id="screen-next-btn" type="submit" class="thay" value=""
                                        disabled>Tiếp</button>
                            </fieldset>    
                        </form>
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
        let prevId = "1";

        window.onload = function () {
            document.getElementById("screen-next-btn").disabled = true;
        }

        function timeFunction(id) {
            document.getElementById("screen-next-btn").disabled = false;
            document.getElementById("rap_id").value = id;
        }

    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>