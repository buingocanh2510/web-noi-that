<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- header section starts -->
<header class="header">

    <a href="index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất Đại Nam </a>

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
<!-- header section ends -->

<!-- closer btn -->
<div id="closer" class="fas fa-times"></div>

<!-- navbar -->
<nav class="navbar">
    <a href="home.html">home</a>
    <a href="shop.jsp">shop</a>
    <a href="about.jsp">about</a>
    <a href="team.jsp">team</a>
    <a href="blog.jsp">blog</a>
    <a href="contact.jsp">contact</a>
</nav>

<!-- shopping cart -->
<div class="shopping-cart">
    <div class="box">
        <i class="fas fa-times"></i>
        <img src="image/cart-img-1.jpg" alt="">
        <div class="content">
            <h3>Ghế lò xo</h3>
            <span class="quantity"> 1 </span>
            <span class="multiply"> x </span>
            <span class="price"> 270.000 VNĐ </span>
        </div>
    </div>

    <div class="box">
        <i class="fas fa-times"></i>
        <img src="image/cart-img-2.jpg" alt="">
        <div class="content">
            <h3>Ghế bàn ăn</h3>
            <span class="quantity"> 1 </span>
            <span class="multiply"> x </span>
            <span class="price"> 450.000 VNĐ </span>
        </div>
    </div>

    <div class="box">
        <i class="fas fa-times"></i>
        <img src="image/cart-img-3.jpg" alt="">
        <div class="content">
            <h3>Ghế cosplay Japan</h3>
            <span class="quantity"> 1 </span>
            <span class="multiply"> x </span>
            <span class="price"> 920.000 VNĐ </span>
        </div>
    </div>

    <div class="box">
        <i class="fas fa-times"></i>
        <img src="image/cart-img-4.jpg" alt="">
        <div class="content">
            <h3>Ghế văn phòng</h3>
            <span class="quantity"> 1 </span>
            <span class="multiply"> x </span>
            <span class="price"> 370.000 VNĐ </span>
        </div>
    </div>

    <h3 class="total"> tổng : <span> 2.000.000 VNĐ  </span></h3>

    <a href="#" class="btn">Thanh toán giỏ hàng</a>
</div>

<!-- login form -->
<div class="login-form">
    <form action="">
        <h3>Đăng nhập</h3>
        <input type="email" placeholder="Nhập email của bạn" class="box">
        <input type="password" placeholder="Nhập password của bạn" class="box">
        <div class="remember">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me">Nhớ</label>
        </div>
        <input type="submit" value="Đăng nhập" class="btn">
        <p>Quên mật khẩu? <a href="#">Bấm vào đây</a></p>
        <p>Bạn chưa có tài khoản? <a href="#">Tạo tài khoản mới</a></p>
    </form>
</div>
