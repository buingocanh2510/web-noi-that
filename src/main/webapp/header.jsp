<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/about.css">
<link rel="stylesheet" href="css/blog.css">
<link rel="stylesheet" href="css/shop-cart.css">
<link rel="stylesheet" href="css/team.css">
<link rel="stylesheet" href="css/contact.css">

<!-- header section starts -->
<header class="header">

    <a href="index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất Fu2Tee </a>

    <form action="${pageContext.request.contextPath}/products" class="search-form">
        <input type="search" name="name" placeholder="Tìm kiếm..." id="search-box">
        <button type="submit"><label for="search-box" class="fas fa-search"></label></button>
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
    <a href="${pageContext.request.contextPath}/index.jsp">home</a>
    <a href="${pageContext.request.contextPath}/products">shop</a>
    <a href="${pageContext.request.contextPath}/about.jsp">about</a>
    <a href="${pageContext.request.contextPath}/team.jsp">team</a>
    <a href="${pageContext.request.contextPath}/blog.jsp">blog</a>
    <a href="${pageContext.request.contextPath}/contact.jsp">contact</a>
</nav>

<!-- shopping cart -->
<jsp:include page="/shopCarts"/>

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
