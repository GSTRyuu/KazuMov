<%-- 
    Document   : footer
    Created on : 05-03-2023, 19:07:34
    Author     : fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer-hny-grids py-5">
    <div class="container py-lg-4">
        <div class="text-txt">
            <div class="right-side">

                <div class="row footer-links">


                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                        <h6>Phim</h6>
                        <ul>
                            <li><a href="movie?fot=2&oo=5">Người lớn</a></li>
                            <li><a href="movie?fot=3&oo=5">Trẻ em</a></li>
                            <li><a href="movie?fot=4&oo=5">Hài hước</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                        <h6>Thông tin</h6>
                        <ul>
                            <li><a href="home">Trang chủ</a> </li>
                            <li><a href="https://www.facebook.com/hung.nhammanh.1">Facebook</a> </li>
                            <li><a onclick="alert('Xin lỗi! Chức năng này hiện đang bảo trì')">Chúng tôi</a> </li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                        <h6>Chức năng</h6>
                        <ul>
                            <li><a href="movie">Đặt vé</a></li>
                            <li><a href="lsmv">Lịch sử</a></li>
                            <li><a onclick="alert('Xin lỗi! Chức năng này hiện đang bảo trì')">Quản lý</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                        <h6>Liên lạc</h6>
                        <form action="home" class="subscribe mb-3" method="post">
                            <input type="email" name="email" placeholder="Your Email Address" required="">
                            <button><span class="fa fa-envelope-o"></span></button>
                        </form>
                        <p>Hãy nhập email vào trên để có thể nhận được những thông báo và sự kiện mới nhất của chúng tôi
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="below-section">
    <div class="container">
        <div class="copyright-footer">
            <div class="columns text-lg-left">
                <p>&copy; 2023 KazuMoV. All rights reserved</p>
            </div>

            <ul class="social text-lg-right">
                <li><a href="https://www.facebook.com/hung.nhammanh.1"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                </li>
                <li><a onclick="alert('Xin lỗi! Tôi không dùng Instagram')"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                </li>
                <li><a onclick="alert('Xin lỗi! Tôi không dùng Twitter')"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                </li>
                <li><a href="https://www.google.com/?hl=vi"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                </li>

            </ul>
        </div>
    </div>
</div>