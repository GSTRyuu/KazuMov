<%-- 
    Document   : movies
    Created on : 04-03-2023, 13:54:33
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
        <title>Movies</title>
        <link rel="stylesheet" href="assets/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
        <style>
            .fot{
                padding-top: 0px;
            }
            .in{
                color: black;
            }
            .body{
                background-color: black;
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
                    <a href="home">Trang chủ</a> » <span class="breadcrumb_last" aria-current="page">Phim</span>
                </div>
            </nav>
        </div>
        <!--/movies -->
        <!--grids-sec1-->
        
        <!--grids-sec1-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-4">

                    <!-- ***********************************Last Section ************************************** -->
                    <br>
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">Phim</h3>
                        </div>
                        
                    </div>
                    <br>
                    <div class="w3l-populohny-grids">
                        <c:forEach items="${requestScope.data}" var="o">
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
                                                    <span class="fa fa-clock-o"></span> ${o.thoi_luong}
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
                
            </div>
        </section>
        <!--grids-sec2-->
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
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>

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

<script src="assets/js/bootstrap.min.js"></script>