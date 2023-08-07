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
                margin-top: 3%;
                text-align: center;
            }
            .lay{
                margin-left: 10%;
            }


        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" ></jsp:include>
        <c:if test="${sessionScope.acc == null}">
            <jsp:forward page="/login.jsp" />
        </c:if>
        <div class="w3l-breadcrumbs">
            <nav id="breadcrumbs" class="breadcrumbs">
                <div class="container page-wrapper">
                    <a href="home">Trang chủ</a> » <span class="breadcrumb_last" aria-current="page">Lịch sử</span>
                </div>
            </nav>
        </div>
        <h2>Lịch sử giao dịch</h2>
        <form action="sapxep" method="get">
           <select name="lay" class="lay">
            <option value="0">ASC</option>
            <option value="1">DESC</option>
        </select> 
            <button type="submit">Sapxep</button>    
        </form>
        
          
   
        <div class="ta">
            <table class="con" border = "1">
                <tr>   
                    <th>Phim</th>
                    <th>Ngày chiếu</th>
                    <th>Giờ chiếu</th>
                    <th>Rạp</th>
                    <th>Phòng</th>
                    <th>Ghế</th>
                    <th>Tổng tiền</th>
                    <th>Ngày mua</th>
                </tr>

                <c:forEach  items="${requestScope.v}" var="o">
                    <tr>   
                        <td>${o.ten_phim}</td>
                        <td>${o.ngay}</td>
                        <td>${o.gio}</td>
                        <td>${o.rap}</td>
                        <td>${o.phong}</td>
                        <td>${o.ghe}</td>
                        <td>${o.tong_tien}$</td>
                        <td>${o.ngay_ban}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <footer class="w3l-footer">
            <section class="footer-inner-main">
                <jsp:include page="footer.jsp"></jsp:include>
                <!-- move top -->
                <button onclick="topFunction()" id="movetop" title="Go to top">
                    <span class="fa fa-arrow-up" aria-hidden="true"></span>
                </button>
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("movetop").style.display = "block";
                        } else {
                            document.getElementById("movetop").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <!-- /move top -->

            </section>
        </footer>
    </body>
    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>