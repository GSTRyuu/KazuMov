<%-- 
    Document   : suat_chieu
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
            .mo{
                margin: 0px 38%;
            }
            h2{
                margin-top: 10%;
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
                        <form id="form">
                            <fieldset>
                                <h2>Thành Công</h2>
                                <div class="ticket-body">
                                    <div class="ticket">
                                        <div class="holes-top"></div>
                                        <div class="title">
                                            <p class="cinema">${pid.ten_phim}</p>
                                        </div>
                                        <div class="poster">
                                            <img src="${pid.banner}"
                                                 alt="" />
                                        </div>
                                        <div class="info">
                                            <table class="info-table ticket-table">
                                                <tr>
                                                    <th>RẠP</th>
                                                    <th>PHÒNG</th>
                                                    <th>GHẾ</th>
                                                </tr>
                                                <tr>
                                                    <td class="bigger">${rid.ten}</td>
                                                    <td class="bigger">${phid.so_ghe}</td>
                                                    <td class="bigger">${so}</td>
                                                </tr>
                                            </table>
                                            <table class="info-table ticket-table">
                                                <tr>
                                                    <th>GIÁ</th>
                                                    <th>NGÀY</th>
                                                    <th>GIỜ</th>
                                                </tr>
                                                <tr>
                                                    <td>${tongtien}$</td>
                                                    <td>${sid.ten_phim}</td>
                                                    <td>${sid.banner}</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="holes-lower"></div>
                                        <div class="serial">
                                            <table class="barcode ticket-table">
                                                <tr>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                    <td style="background-color:black;"></td>
                                                    <td style="background-color:white;"></td>
                                                </tr>
                                            </table>
                                            <table class="numbers ticket-table">
                                                <tr>
                                                    <td>9</td>
                                                    <td>1</td>
                                                    <td>7</td>
                                                    <td>3</td>
                                                    <td>7</td>
                                                    <td>5</td>
                                                    <td>4</td>
                                                    <td>4</td>
                                                    <td>4</td>
                                                    <td>5</td>
                                                    <td>4</td>
                                                    <td>1</td>
                                                    <td>4</td>
                                                    <td>7</td>
                                                    <td>8</td>
                                                    <td>7</td>
                                                    <td>3</td>
                                                    <td>4</td>
                                                    <td>1</td>
                                                    <td>4</td>
                                                    <td>5</td>
                                                    <td>2</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <input type="button" name="previous-step" class="home-page-btn" value="Trở về"
                                       onclick="location.href = 'home';" />
                                <input type="button" name="previous-step" class="cancel-pay-btn" value="Đặt tiếp"
                                       onclick="location.href = 'ghe?kiem=1';" />
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
            document.getElementById("phong_id").value = id;
        }

    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>