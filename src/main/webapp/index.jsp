<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phanv
  Date: 09-Apr-19
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>TTD News</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="<c:url value="/resources/styles/index.css"/>" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body>
<nav class="nav-top">
  <div class="row">
    <div class="col-sm-4">
      <div class="img-logo">
        <img src="<c:url value="/resources/image/logo.png"/>">
      </div>
    </div>
    <div class="col-sm-6">
      <form action="/hms/accommodations" method="GET">
        <div class="row">
          <div class="col-sm-6">
            <div class="input-group" style="margin-top: 35px; padding-right: 200px">
              <input type="text" style="width:300px; height: 40px; " class="form-control"
                     placeholder="Tìm kiếm" id="txtSearch" />
              <div class="input-group-btn">
                <button class="btn btn-primary"
                        style="width:100px; height: 40px; background-color: navy" type="submit">
                  <span class="glyphicon glyphicon-search"></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </form>
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
<section>
  <div class="container text-center">
    <div class="row">
      <div class="col-sm-3 welles edit-padding">
        <c:forEach var="TinVan" items="${lstTinVan}" varStatus="status">
          <div class="wells">
            <p><a href="${TinVan.mapping}">${TinVan.sumary}</a></p>
          </div>
        </c:forEach>

      </div>
      <div class="col-sm-7 edit-padding">

        <div class="row">
          <div class="col-sm-12">
            <div class="panel panel-default text-left">
              <div class="panel-body">
                <img src="<c:url value="/resources/image/trumkim.jpg"/>">
                <div class="title-top">
                  <a href="${urltop}">${}</a>
                </div>
                <div class="content-short">
                  <p>${summarytop}
                  </p>
                </div>
                <button type="button" class="btn btn-default btn-sm btn-like">
                  <span class="glyphicon glyphicon-thumbs-up"></span> Like
                </button>
              </div>
            </div>
          </div>
        </div>



      </div>
      <div class="col-sm-2 edit-padding ">
        <div class="wells News-img">
          <img src="<c:url value="/resources/image/pr01.jpg"/>">
          <p><a href="#">Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân</a></p>
        </div>
        <div class="wells News-img">
          <img src="<c:url value="/resources/image/pr02.jpg"/>">
          <p><a href="#">Ba thanh niên tấn công tài xế ở trạm BOT Bắc Hải Vân bị khởi tố</a></p>
        </div>
        <div class="wells News-img">
          <img src="<c:url value="/resources/image/pr03.jpg"/>">
          <p><a href="#">Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân</a></p>
        </div>
      </div>
    </div>
  </div>
</section>
<section>
  <div class="container" style="border-top: 1px solid lightgrey">
    <div class="row">
      <div class="col-sm-5" style="padding: 0px;">
        <div class="tweet">
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
        <div class="tweet">
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
        </div>
        <div class="tweet">
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
        <div class="tweet">
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-5">
        <div class="tweet">
          <div class="block">
            <ul class="nav navbar-nav naw-block">
              <li><a href="#" class="clsactive">THỜI SỰ</a></li>
              <li><a href="#">GỐC NHÌN</a></li>
              <li><a href="#">THẾ GIỚI</a></li>
              <li><a href="#">KINH DOANH</a></li>
            </ul>
          </div>
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
        <div class="tweet">
          <div class="block">
            <ul class="nav navbar-nav naw-block">
              <li><a href="#" class="clsactive">THỜI SỰ</a></li>
              <li><a href="#">GỐC NHÌN</a></li>
              <li><a href="#">THẾ GIỚI</a></li>
              <li><a href="#">KINH DOANH</a></li>
            </ul>
          </div>
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
        <div class="tweet">
          <div class="block">
            <ul class="nav navbar-nav naw-block">
              <li><a href="#" class="clsactive">THỜI SỰ</a></li>
              <li><a href="#">GỐC NHÌN</a></li>
              <li><a href="#">THẾ GIỚI</a></li>
              <li><a href="#">KINH DOANH</a></li>
            </ul>
          </div>
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
        <div class="tweet">
          <div class="block">
            <ul class="nav navbar-nav naw-block">
              <li><a href="#" class="clsactive">THỜI SỰ</a></li>
              <li><a href="#">GỐC NHÌN</a></li>
              <li><a href="#">THẾ GIỚI</a></li>
              <li><a href="#">KINH DOANH</a></li>
            </ul>
          </div>
          <div class="title-tweet">
            <a href="#">Hội nghị Thượng đĩnh Mỹ Triều kết thúc khi không đạt thỏa thuận</a>
          </div>
          <div class="content-tweet">
            <div class="tweet-img">
              <img src="<c:url value="/resources/image/pr01.jpg"/>">
            </div>
            <div class="tweet-descrition">
              <p>Nhan sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
                sắc tuổi 22 của con gái chưởng môn phái Vịnh Xuân sắc tuổi 22 của con
              </p>
            </div>
          </div>
          <hr>
        </div>
      </div>
      <div class="col-sm-2">
        <div class="advertisement">
          <a href="https://www.google.com.vn"> <img src="<c:url value="/resources/image/pr01.jpg"/>"></a>
        </div>
      </div>
    </div>

  </div>
  </div>
</section>
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
        <p>TTD hay Thông tấn xã TTD là một trang báo điện tử tại Việt Nam. Đây là báo đầu tiên ở Việt Nam chỉ có bản điện tử mà không có bản in giấy.</p>

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
          <i class="fa fa-home mr-3"></i> 01 Võ Văn Ngân, phường Bình Thọ, quận Thủ Đức, Tp. Hồ Chí Minh</p>
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
</body>
</html>
