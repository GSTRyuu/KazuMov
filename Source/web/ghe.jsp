<%-- 
    Document   : suat_chieu
    Created on : 05-03-2023, 23:30:55
    Author     : fpt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            .mo{
                margin: 0px 38%;
            }
            .screen-time{
                width: 90px;
                height: 50px;
                margin: 5%;
            }
            .co{
                width: 100%;
                padding: auto;
            }
            .thay:disabled{
                background-color: #443d40;
            }
            .th:disabled{
                background-color: #339900;
            }
            .co1{
                display: flex;
                flex-wrap: wrap;
                width: 600px;
                justify-content: space-around;
                margin: 2% auto;
            }


        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" ></jsp:include>
        <c:if test="${sessionScope.acc == null}">
            <jsp:forward page="/login.jsp" />
        </c:if>
            <div class="container" id="progress-container-id">
                <div class="row">
                    <div class="col">
                        <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="form" action="payment" method="get">
                                <ul id="progressbar" class="progressbar-class">
                                    <li class="active mo" id="step3"></li>
                                </ul>
                                <br>
                                <fieldset>
                                    <div id="screen-select-div">
                                        <h2>Chọn ghế</h2>
                                        <div class="co"> 
                                            <div class="co1"> 
                                            <c:forEach items="${requestScope.t}" var="o">
                                                    <input type="button" class="screen-time th" value="${o.so_ghe}" onclick="timeFunction('${o.so_ghe}')" ${o.isOcc(sessionScope.suat_chieu_id) == 1 ? "disabled" : ""}>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="so_ghe" id="so_ghe" value="">
                                <button id="screen-next-btn" type="submit" class="thay"
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
            document.getElementById("so_ghe").value = id;
        }

    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>