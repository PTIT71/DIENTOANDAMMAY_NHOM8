<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phanv
  Date: 09-Apr-19
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${msg}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="<c:url value="/resources/styles/index.css"/>" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700|Inconsolata:400,700" rel="stylesheet">


    <link rel="stylesheet" href="<c:url value="/resources/styles/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/fonts/fontawesome/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/fonts/ionicons/css/ionicons.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/styles/fonts/flaticon/font/flaticon.css"/>">

    <link rel="stylesheet" href="<c:url value="/resources/styles/css/style.css"/>">
</head>

<body>
<div class="wrap" style="
    margin-right: 0px !important;
    margin-left: 0px !important;
    max-width: 100% !important;">
    <nav class="nav-top">
        <div class="row">
            <div class="col-sm-4">
                <div class="img-logo">
                    <img src="<c:url value="/resources/image/logo.png"/>">
                </div>
            </div>
            <div class="col-sm-6">
            </div>
            <div class="col-sm-2">
                <div class="logo-social">
                    <img src="<c:url value="/resources/image/iconfaebook.png"/>">
                    <img src="<c:url value="/resources/image/icontw.png"/>">
                    <img src="<c:url value="/resources/image/iconyou.png"/>">
                </div>
            </div>
        </div>
    </nav>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid edit-menu-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <c:forEach var="dept" items="${danhmuc}" varStatus="status">
                        <li><a href="${dept.map}">${dept.TEN_DanhMuc}</a></li>
                    </c:forEach>

                </ul>
            </div>
        </div>
    </nav>
    <!-- END header -->

    <section class="site-section py-lg" style="
    padding-top: 0px !important;
">
        <div class="container">
            <div class="row blog-entries element-animate">
                <div class="col-md-12 col-lg-8 main-content">
                    <h1 class="mb-4">${title}</h1>
                    <div class="panel-body">
                        <img src="${image}">
                    </div>
                    <div class="post-meta">
                            <span class="author mr-2" style="color: #1d2124; font-style: italic">
                                ${author}</span>&bullet;
                        <span class="mr-2" style="color: #1d2124; font-style: italic">${date}</span> &bullet;
                        <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                    </div>
                    <div class="post-content-body">
                        <p style="text-align: justify; color: #1d2124">${content}</p>
                    </div>
                </div>
                <!-- END main-content -->
                <div class="col-md-12 col-lg-4 sidebar">

                    <div class="sidebar-box">
                        <h3 class="heading">Tin nỗi bậc</h3>
                        <div class="post-entry-sidebar">
                            <ul>
                                <c:forEach var="TinVan" items="${lstTinVan}" varStatus="status">
                                    <li>
                                        <a href="${TinVan.mapping}">
                                            <img src="${TinVan.image}" alt="Image placeholder" class="mr-4">
                                            <div class="text">
                                                <h4 style="padding-left: 10px">${TinVan.sumary}</h4>
                                                <div class="post-meta">
                                                    <span class="mr-2">${TinVan.dateNews}</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- END sidebar-box -->
                    <!-- END sidebar-box -->

                    <div class="sidebar-box">
                        <h3 class="heading">Tags</h3>
                        <ul class="tags">
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">Food</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Freelancing</a></li>
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">Food</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Freelancing</a></li>
                        </ul>
                    </div>
                </div>
                <!-- END sidebar -->

            </div>
        </div>
    </section>


    <!-- END section -->

    <!-- Footer -->
    <footer class="page-footer font-small unique-color-dark">
        <!-- Footer Links -->
        <div class="container text-center text-md-left mt-5">

            <!-- Grid row -->
            <div class="row mt-3">

                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                    <!-- Content -->
                    <h6 class="text-uppercase font-weight-bold">Thông tấn xã TTD</h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>TTD hay Thông tấn xã TTD là một trang báo điện tử tại Việt Nam. Đây là báo đầu tiên ở Việt
                        Nam
                        chỉ có bản điện tử mà không có bản in giấy.</p>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                    <!-- Links -->
                    <h6 class="text-uppercase font-weight-bold">Danh mục</h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        <a href="#!">Chính trị</a>
                    </p>
                    <p>
                        <a href="#!">Xã hội</a>
                    </p>
                    <p>
                        <a href="#!">Giáo dục</a>
                    </p>
                    <p>
                        <a href="#!">Khoa học</a>
                    </p>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                    <!-- Links -->
                    <h6 class="text-uppercase font-weight-bold">Giới thiệu</h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        <a href="#!">Ngày của bạn</a>
                    </p>
                    <p>
                        <a href="#!">Mẹo mặt hằng ngày</a>
                    </p>
                    <p>
                        <a href="#!">Bí quyết cuộc sống viên mãn</a>
                    </p>
                    <p>
                        <a href="#!">Trợ giúp</a>
                    </p>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                    <!-- Links -->
                    <h6 class="text-uppercase font-weight-bold">Liên hệ</h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        <i class="fa fa-home mr-3"></i> 01 Võ Văn Ngân, phường Bình Thọ, quận Thủ Đức, Tp. Hồ Chí
                        Minh
                    </p>
                    <p>
                        <i class="fa fa-envelope mr-3"></i> ttdnews@gmail.com</p>
                    <p>
                        <i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                    <p>
                        <i class="fa fa-print mr-3"></i> + 01 234 567 89</p>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright:
            <a href="https://www.facebook.com/phanvan.phuocthinh">TTD News</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->


</div>



<script src="<c:url value="/resources/styles/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/styles/js/jquery-migrate-3.0.0.js"/>"></script>
<script src="<c:url value="/resources/styles/js/popper.min.js"/>"></script>
<script src="<c:url value="/resources/styles/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/styles/js/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/resources/styles/js/jquery.stellar.min.js"/>"></script>


<script src="<c:url value="/resources/styles/js/main.js"/>"></script>
</body>


</html>
