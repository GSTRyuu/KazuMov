<%-- 
    Document   : payment
    Created on : 07-03-2023, 05:25:39
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
            .co1{
                display: flex;
                flex-wrap: wrap;
                width: 600px;
                justify-content: space-around;
                margin: 2% auto;
            }

            .ta{
                display: flex;
                justify-content: center;
                align-items: center;

            }
            .con{
                margin-top: 1%;
                margin-bottom: 6%;
            }

            table, th, td{
                border:1px solid red;


            }
            table{
                border-collapse:collapse;
            }
            tr:hover{
                background-color: #009999;
                cursor:pointer;
            }

            th, td{
                text-align:left;
                padding:10px;
                width: auto;
                color: #ddd;
            }

            h2{
                margin-top: 0%;
                text-align: center;
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
        <div class="container" id="progress-container-id">
            <div class="row">
                <div class="col">
                    <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                        <form id="form" action="ticket" method="get">
                            <ul id="progressbar" class="progressbar-class">
                                <li class="active mo" id="step4"></li>
                            </ul>
                            <br>
                            <h2>Thông tin vé</h2>
                            <div class="ta">
                                <table class="con" border = "1">
                                    <tr>   
                                        <th>Phim</th>
                                        <th>Ngày chiếu</th>
                                        <th>Giờ chiếu</th>
                                        <th>Rạp</th>
                                        <th>Phòng</th>
                                        <th>Ghế</th>
                                    </tr>
                                    <tr>   
                                        <td>${pid.ten_phim}</td>
                                        <td>${sid.ten_phim}</td>
                                        <td>${sid.banner}</td>
                                        <td>${rid.ten}</td>
                                        <td>${phid.so_ghe}</td>
                                        <td>${so}</td>
                                    </tr>
                                </table>
                            </div>
                            <c:if test="${sessionScope.kiem == null}">
                                <fieldset>
                                    <!-- Payment Page -->
                                    <div id="payment_div">
                                        <div class="payment-row">
                                            <div class="col-75">
                                                <div class="payment-container">
                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <h2>Thanh toán</h2>
                                                            <br>

                                                            <div class="payment-row">
                                                                <div class="col-50">
                                                                    <label for="cname">Tên</label>
                                                                    <input type="text" id="cname" name="cardname" placeholder="Nhâm Mạnh Hùng" required />
                                                                </div>
                                                                <div class="col-50">
                                                                    <label for="ccnum">Số thẻ</label>
                                                                    <input type="text" id="ccnum" name="cardnumber" placeholder="xxxx-xxxx-xxxx-xxxx"
                                                                           required />
                                                                </div>
                                                            </div>
                                                            <div class="payment-row">
                                                                <div class="col-50">
                                                                    <label for="expmonth">Tháng cấp</label>
                                                                    <input type="text" id="expmonth" name="expmonth" placeholder="1" required />
                                                                </div>
                                                                <div class="col-50">
                                                                    <div class="payment-row">
                                                                        <div class="col-50">
                                                                            <label for="expyear">Năm cấp</label>
                                                                            <input type="text" id="expyear" name="expyear" placeholder="2003" required />
                                                                        </div>
                                                                        <div class="col-50">
                                                                            <label for="cvv">CVV</label>
                                                                            <input type="text" id="cvv" name="cvv" placeholder="xxx" required />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </c:if>
                            <input type="hidden" name="ngay" value="<%=dateFormat.format(date)%>">
                            <button type="submit" class="thay"
                                    >Tiếp</button>
                            <input type="button" name="previous-step" class="cancel-pay-btn" value="Hủy"
                                   onclick="location.href = 'home';" />


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
        function myFunction(id) {
            document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
            document.getElementById(id).style.background = "#df0e62";
            prevId = id;
        }
    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>