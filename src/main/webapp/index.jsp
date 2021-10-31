<%--
    Document   : home
    Created on : 27/10/2021, 8:25:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nội thất ABC</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/footer.css">
  <link rel="stylesheet" href="./css/responsive.css">
  <link rel="stylesheet" href="./css/form.css">
  <link rel="stylesheet" href="./css/about.css">
  <link rel="stylesheet" href="./css/blog.css">
  <link rel="stylesheet" href="./css/shop-cart.css">
  <link rel="stylesheet" href=./css/team.css">
  <link rel="stylesheet" href="./css/contact.css">
</head>
<body>

<!-- header section starts  -->

<header class="header">

  <a href="index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất ABC </a>

  <form action="" class="search-form">
    <input type="search" placeholder="Tìm kiếm..." id="search-box">
    <label for="search-box" class="fas fa-search"></label>
  </form>

  <div class="icons">
    <div id="menu-btn" class="fas fa-bars"></div>
    <div id="search-btn" class="fas fa-search"></div>
    <div id="cart-btn" class="fas fa-shopping-cart"></div>
    <div id="login-btn" class="fas fa-user"></div>
  </div>

</header>

<!-- header section ends  -->

<!-- closer btn  -->

<div id="closer" class="fas fa-times"></div>

<!-- navbar  -->

<nav class="navbar">
  <a href="home.html">Trang chủ</a>
  <a href="shop.html">Cửa hàng</a>
  <a href="about.html">Thông tin</a>
  <a href="team.html">team</a>
  <a href="blog.html">blog</a>
  <a href="contact.html">Liên hệ</a>
</nav>

<!-- shopping cart  -->

<div class="shopping-cart">

  <div class="box">
    <i class="fas fa-times"></i>
    <img src="./image/cart-img-1.jpg" alt="">
    <div class="content">
      <h3>Ghế lò xo</h3>
      <span class="quantity"> 1 </span>
      <span class="multiply"> x </span>
      <span class="price"> 270.000 VNĐ </span>
    </div>
  </div>

  <div class="box">
    <i class="fas fa-times"></i>
    <img src="./image/cart-img-2.jpg" alt="">
    <div class="content">
      <h3>Ghế bàn ăn</h3>
      <span class="quantity"> 1 </span>
      <span class="multiply"> x </span>
      <span class="price"> 450.000 VNĐ </span>
    </div>
  </div>

  <div class="box">
    <i class="fas fa-times"></i>
    <img src="<c:url value="./image/cart-img-3.jpg"/>"/>
    <div class="content">
      <h3>Ghế cosplay Japan</h3>
      <span class="quantity"> 1 </span>
      <span class="multiply"> x </span>
      <span class="price"> 920.000 VNĐ </span>
    </div>
  </div>

  <div class="box">
    <i class="fas fa-times"></i>
    <img src="./image/cart-img-4.jpg" alt="">
    <div class="content">
      <h3>Ghế văn phòng</h3>
      <span class="quantity"> 1 </span>
      <span class="multiply"> x </span>
      <span class="price"> 370.000 VNĐ </span>
    </div>
  </div>

  <h3 class="total"> tổng : <span> 2.000.000 VNĐ  </span> </h3>

  <a href="#" class="btn">Thanh toán giỏ hàng</a>

</div>

<!-- login form  -->

<div class="login-form">

  <form action="">
    <h3>Đăng nhập</h3>
    <input type="email" placeholder="Nhập email..." class="box">
    <input type="password" placeholder="Nhập password..." class="box">
    <div class="remember">
      <input type="checkbox" name="" id="remember-me">
      <label for="remember-me">Nhớ tôi!</label>
    </div>
    <input type="submit" value="Đăng nhập" class="btn">
    <p>Quên mật khẩu? <a href="#">Bấm vào đây</a></p>
    <p>Bạn chưa có tài khoản? <a href="#">Đăng kí</a></p>
  </form>

</div>

<!-- home section starts  -->

<section class="home">

  <div class="slides-container">

    <div class="slide active">
      <div class="content">
        <span>Nội thất ABC</span>
        <h3>bảo hành chất lượng</h3>
        <p>Chúng tôi cam kết 100% về chất lượng sản phẩm và gói bảo hành.</p>
        <a href="/shop.html" class="btn">Mua ngay</a>
      </div>
      <div class="image">
        <img src="./image/home-img-2.png" alt="">
      </div>
    </div>

    <div class="slide">
      <div class="content">
        <span>Fu2Tee</span>
        <h3>Quy trình sản xuất hàng đầu</h3>
        <p>Các sảnn phẩm của chúng tôi được gia công dưới bàn tay của những công nhân trình độ chuyên môn cao kết hợp với hệ thống máy móc hiện đại.</p>
        <a href="#" class="btn">Mua ngay</a>
      </div>
      <div class="image">
        <img src="./image/img-home-3.JPG" alt="">
      </div>
    </div>

  </div>

  <div id="slide-next" onclick="next()" class="fas fa-angle-right"></div>
  <div id="slide-prev" onclick="prev()" class="fas fa-angle-left"></div>

</section>

<!-- home section ends -->

<!-- banner section starts  -->

<section class="banner-container">

  <div class="banner">
    <img src="./image/banner-home-1.jpg" alt="">
    <div class="content">
      <span>Gia công phối màu</span>
      <h3>Giảm 15% giá</h3>
      <a href="#" class="btn">Mua ngay</a>
    </div>
  </div>

  <div class="banner">
      <img src="./image/banner-home-2.jpg" alt="">
    <div class="content">
      <span>Full bộ nội thất</span>
      <h3>Giảm tới 50%</h3>
      <a href="#" class="btn">Mua ngay</a>
    </div>
  </div>

  <div class="banner">
    <img src="./image/banner-3.jpg" alt="">
    <div class="content">
      <span>Tặng kèm quà</span>
      <h3>khi mua full set </h3>
      <a href="#" class="btn">Mua ngay</a>
    </div>
  </div>

</section>

<!-- banner section ends -->

<!-- footer section  -->

<section class="footer">

  <div class="new-product">

    <div class="box">
      <h3>Nội dung</h3>
      <a href="index.jsp"> <i class="fas fa-arrow-right"></i> home</a>
      <a href="shop.html"> <i class="fas fa-arrow-right"></i> shop</a>
      <a href="about.html"> <i class="fas fa-arrow-right"></i> about</a>
      <a href="team.html"> <i class="fas fa-arrow-right"></i> team</a>
      <a href="blog.html"> <i class="fas fa-arrow-right"></i> blog</a>
      <a href="contact.html"> <i class="fas fa-arrow-right"></i> contact</a>
    </div>

    <div class="box">
      <h3>Chi tiết</h3>
      <a href="#"> <i class="fas fa-arrow-right"></i> Đơn hàng</a>
      <a href="#"> <i class="fas fa-arrow-right"></i> Sản phẩm yêu thích</a>
      <a href="#"> <i class="fas fa-arrow-right"></i> Tài khoản</a>
      <a href="#"> <i class="fas fa-arrow-right"></i> Ưu đãi</a>
      <a href="#"> <i class="fas fa-arrow-right"></i> Điều khoản</a>
    </div>

    <div class="box">
      <h3>Theo dõi chúng tôi</h3>
      <a href="#"> <i class="fab fa-facebook-f"></i> facebook</a>
      <a href="#"> <i class="fab fa-twitter"></i> twitter</a>
      <a href="#"> <i class="fab fa-instagram"></i> instagram</a>
      <a href="#"> <i class="fab fa-linkedin"></i> linkedin</a>
      <a href="#"> <i class="fab fa-pinterest"></i> pinterest</a>
    </div>

    <div class="box">
      <h3>Nhận tin mới nhất</h3>
      <p>Nhập email để không bỏ lỡ những thông tin mới nhất của chúng tôi.</p>
      <form action="">
        <input type="email" name="" placeholder="Vui lòng nhập email" id="">
        <input type="submit" value="Gửi email" class="btn">
      </form>
    </div>

  </div>

</section>

<section class="credit">
  Created by Nhóm Web | Nội thất ABC
</section>
<!-- JS link -->
<script src="js/script.js"></script>

</body>
</html>