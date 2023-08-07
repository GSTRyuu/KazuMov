<%-- 
    Document   : menu
    Created on : 05-03-2023, 22:28:36
    Author     : fpt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="site-header" class="w3l-header fixed-top">
    <!--/nav-->
    <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
        <div class="container">
            <h1><a class="navbar-brand" href="home"><span class="fa fa-play icon-log"
                                                          aria-hidden="true"></span>
                    KazuMoV</a></h1>

            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <!-- <span class="navbar-toggler-icon"></span> -->
                <span class="fa icon-expand fa-bars"></span>
                <span class="fa icon-close fa-times"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movie">Phim</a>
                    </li>
                    <c:if test="${sessionScope.acc != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="lsmv">Lịch sử</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.acc != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="logout">Đăng xuất</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Đăng nhập</a>
                        </li>
                    </c:if>
                    


                </ul>

                <!--/search-right-->
                <!--/search-right-->
                <div class="search-right">
                    <a href="#search" class="btn search-hny mr-lg-3 mt-lg-0 mt-4" title="search">Tìm<span
                            class="fa fa-search ml-3" aria-hidden="true"></span></a>
                    <!-- search popup -->
                    <div id="search" class="pop-overlay">
                        <div class="popup">
                            <form action="search" method="post" class="search-box">
                                <input type="search" placeholder="Tìm kiếm" name="search"
                                       required="required" autofocus="">
                                <button type="submit" class="btn"><span class="fa fa-search"
                                                                        aria-hidden="true"></span></button>
                            </form>

                        </div>
                        <a class="close" href="#close">×</a>
                    </div>
                    <!-- /search popup -->
                    <!--/search-right-->

                </div>
                <div class="Login_SignUp" id="login"
                     style="font-size: 2rem ; display: inline-block; position: relative;">
                    <!-- <li class="nav-item"> -->
                    <c:if test="${sessionScope.acc != null}">
                        <a class="nav-link" ><i class="fa fa-user-circle-o"></i></a>
                        </c:if>
                    <!-- </li> -->
                </div>
            </div>
            <!-- toggle switch for light and dark theme -->

        </div>
    </nav>
</header>
