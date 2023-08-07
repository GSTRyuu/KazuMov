<%-- 
    Document   : detail
    Created on : 04-03-2023, 20:03:23
    Author     : fpt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>About</title>

        <link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
        <style>
            .bin{
                margin-top: 0;
            }
            @media (min-width: 992px) {
                .bin{
                    margin-top: 0;
                }
            }
        </style>
    </head>

    <body>
        <!-- header -->
        <jsp:include page="menu.jsp" ></jsp:include>
            <!--/breadcrumbs -->
            <div class="w3l-breadcrumbs">
                <nav id="breadcrumbs" class="breadcrumbs">
                    <div class="container page-wrapper">
                        <a href="index.html">Home</a> » <span class="breadcrumb_last" aria-current="page">${p.ten_phim}</span>
                </div>
            </nav>
        </div>
        <!-- /about-->
        <br>
        <br>
        <div class="w3l-ab-grids py-5">

            <div class="container py-lg-4">
                <div class="row ab-grids-sec align-items-center">
                    <div class="col-lg-4 ab-right">
                        <img class="img-fluid" src="${p.anh}">
                    </div>
                    <div class="col-lg-8 pl-lg-4 bin">
                        <h3 class="hny-title">${p.ten_phim}</h3>
                        <p class="mt-3">${p.tom_tat}</p>
                        <p class="mt-3">Đạo diễn: ${p.dao_dien}</p>
                        <p class="mt-3">Diễn viên: ${p.dien_vien}</p>
                        <p class="mt-3">Ngày công chiếu: ${p.ngay_cong_chieu}</p>
                        <br>
                        <div class="bookbtn">
                            <c:if test="${sessionScope.acc != null}">
                                <button type="button" class="btn btn-success"
                                        onclick="location.href = 'rap?id=${p.phim_id}';">Đặt vé</button>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                                <button type="button" class="btn btn-success"
                                        onclick="location.href = 'book?id=${p.phim_id}';">Đặt vé</button>
                            </c:if>
                           
                            
                            
                            
                        </div>

                    </div>
                </div>
            </div>
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

</html>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script type="text/javascript" src='assets/js/swiper.min.js'></script>
<script>
                    $('.counter').countUp();
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>

<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->

<!-- for tesimonials carousel slider -->

<!-- script for owlcarousel -->
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<script src="assets/js/bootstrap.min.js"></script>