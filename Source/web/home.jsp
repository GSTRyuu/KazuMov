<%-- 
    Document   : home
    Created on : 05-03-2023, 15:54:47
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
        <title>Home</title>

        <link rel="stylesheet" href="assets/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
    </head>

    <body>

        <!-- header -->
        <jsp:include page="menu.jsp" ></jsp:include>
            <!-- main-slider -->
            <section class="w3l-main-slider position-relative" id="home">
                <div class="companies20-content">
                    <div class="owl-one owl-carousel owl-theme">
                    <c:forEach items="${requestScope.top}" var="o">
                        <div class="item">
                            <li>
                                <div class="slider-info banner-view bg bg2" style = "background: url(${o.banner});
                                     background-size: cover;">
                                    <div class="banner-info">
                                        <h3>${o.ten_phim}</h3>
                                        <p>${o.ngay_cong_chieu}</p>
<!--                                        <a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
                                            <span class="video-play-icon">
                                                <span class="fa fa-play"></span>
                                            </span>
                                            <h6>Trailer</h6>
                                        </a>
                                        <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                                            <iframe src="${o.trailer}" allow="autoplay; fullscreen"
                                                    allowfullscreen=""></iframe>
                                        </div>-->
                                    </div>
                                </div>
                            </li>
                        </div>
                    </c:forEach>



                </div>
            </div>
        </section>
        <br>
        <br>
        <!-- main-slider -->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-3">
                    <div class="headerhny-title">
                        <div class="w3l-title-grids">
                            <div class="headerhny-left">
                                <h3 class="hny-title">Hot Trend</h3>
                            </div>
                            <div class="headerhny-right text-lg-right">
                                <h4><a class="show-title" href="movie?oo=1">Tất cả</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="owl-three owl-carousel owl-theme">
                        <c:forEach items="${requestScope.top}" var="o">
                            <div class="item vhny-grid">
                                <div class="box16 mb-0">
                                    <a href="detail?id=${o.phim_id}">
                                        <figure>
                                            <img class="img-fluid" src="${o.anh}" alt="">
                                        </figure>
                                        <div class="box-content">
                                            <h4> <span class="post"><span class="fa fa-clock-o"> </span> ${o.thoi_luong}'
                                                </span>
                                                <span class="post fa fa-heart text-right"></span>
                                            </h4>
                                        </div>
                                        <span class="fa fa-play video-icon" aria-hidden="true"></span>
                                    </a>
                                </div>
                                <h3> <a class="title-gd" href="detail?id=${o.phim_id}">${o.ten_phim}</a></h3>
                                <p>Đạo diễn: ${o.dao_dien}</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </section>
        <!--grids-sec1-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-4">
                    <!-- ***********************************Adults Section ************************************** -->
                    <br>
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">Người Lớn</h3>
                        </div>
                        
                    </div>
                    <br>
                    <div class="w3l-populohny-grids">
                        <c:forEach items="${requestScope.adults}" var="o">
                            <div class="item vhny-grid">
                                <div class="box16 mb-0">
                                    <figure>
                                        <img class="img-fluid" src="${o.anh}" >
                                    </figure>
                                    <a href="detail?id=${o.phim_id}">
                                        <div class="box-content">
                                            <h3 class="title">${o.ten_phim}</h3>
                                            <h4>
                                                <span class="post">
                                                     Diễn viên: ${o.dien_vien}
                                                </span>
                                                <span class="post fa fa-heart text-right"></span>
                                            </h4>
                                        </div>
                                    </a>
                                </div> 
                            </div>
                        </c:forEach>
                    </div>
                    <!-- ***********************************kids Section ************************************** -->
                    <br>
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">Trẻ Em</h3>
                        </div>
                        
                    </div>
                    <br>
                    <div class="w3l-populohny-grids">
                        <c:forEach items="${requestScope.kids}" var="o">
                            <div class="item vhny-grid">
                                <div class="box16 mb-0">
                                    <figure>
                                        <img class="img-fluid" src="${o.anh}" >
                                    </figure>
                                    <a href="detail?id=${o.phim_id}">
                                        <div class="box-content">
                                            <h3 class="title">${o.ten_phim}</h3>
                                            <h4>
                                                <span class="post">
                                                    Diễn viên: ${o.dien_vien}
                                                </span>
                                                <span class="post fa fa-heart text-right"></span>
                                            </h4>
                                        </div>
                                    </a>
                                </div> 
                            </div>
                        </c:forEach>
                    </div>
                    <!-- ***********************************Comedy Section ************************************** -->
                    <br>
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">Hài Hước</h3>
                        </div>
                        
                    </div>
                    <br>
                    <div class="w3l-populohny-grids">
                        <c:forEach items="${requestScope.com}" var="o">
                            <div class="item vhny-grid">
                                <div class="box16 mb-0">
                                    <figure>
                                        <img class="img-fluid" src="${o.anh}" >
                                    </figure>
                                    <a href="detail?id=${o.phim_id}">
                                        <div class="box-content">
                                            <h3 class="title">${o.ten_phim}</h3>
                                            <h4>
                                                <span class="post">
                                                    Diễn viên: ${o.dien_vien}
                                                </span>
                                                <span class="post fa fa-heart text-right"></span>
                                            </h4>
                                        </div>
                                    </a>
                                </div> 
                            </div>
                        </c:forEach>
                    </div>

                </div>

                <div class="button-center text-center mt-3">
                    <a href="movie" class="btn view-button">Tất cả<span class="fa fa-angle-double-right ml-2"
                                                                           aria-hidden="true"></span></a>
                </div>
                <br>
                <br>
            </div>
        </section>
        <!--//grids-sec1-->
        <!--grids-sec2-->

        <!--grids-sec2-->
        <!--mid-slider -->

        <!-- footer-66 -->
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
<!-- responsive tabs -->
<script src="assets/js/jquery-1.9.1.min.js"></script>
<script src="assets/js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
                    $(document).ready(function () {
                        //Horizontal Tab
                        $('#parentHorizontalTab').easyResponsiveTabs({
                            type: 'default', //Types: default, vertical, accordion
                            width: 'auto', //auto or any width like 600px
                            fit: true, // 100% fit in a container
                            tabidentify: 'hor_1', // The tab groups identifier
                            activate: function (event) { // Callback function if tab is switched
                                var $tab = $(this);
                                var $info = $('#nested-tabInfo');
                                var $name = $('span', $info);
                                $name.text($tab.text());
                                $info.show();
                            }
                        });
                    });
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
                    $(document).ready(function () {
                        $('.owl-one').owlCarousel({
                            stagePadding: 280,
                            loop: true,
                            margin: 20,
                            nav: true,
                            responsiveClass: true,
                            autoplay: true,
                            autoplayTimeout: 5000,
                            autoplaySpeed: 1000,
                            autoplayHoverPause: false,
                            responsive: {
                                0: {
                                    items: 1,
                                    stagePadding: 40,
                                    nav: false
                                },
                                480: {
                                    items: 1,
                                    stagePadding: 60,
                                    nav: true
                                },
                                667: {
                                    items: 1,
                                    stagePadding: 80,
                                    nav: true
                                },
                                1000: {
                                    items: 1,
                                    nav: true
                                }
                            }
                        })
                    })
</script>
<script>
    $(document).ready(function () {
        $('.owl-three').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 2,
                    nav: false
                },
                480: {
                    items: 2,
                    nav: true
                },
                667: {
                    items: 3,
                    nav: true
                },
                1000: {
                    items: 5,
                    nav: true
                }
            }
        })
    })
</script>
<script>
    $(document).ready(function () {
        $('.owl-mid').owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- script for owlcarousel -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
</script>
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