<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fu2Tee</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/about.css">
    <link rel="stylesheet" href="css/blog.css">
    <link rel="stylesheet" href="css/shop-cart.css">
    <link rel="stylesheet" href="css/team.css">
    <link rel="stylesheet" href="css/contact.css">
</head>
<body>

<jsp:include page="/header.jsp"/>

<section class="home">

    <div class="slides-container">

        <div class="slide active">
            <div class="content">
                <span>Fu2Tee</span>
                <h3>bảo hành chất lượng</h3>
                <p>Chúng tôi cam kết 100% về chất lượng sản phẩm và gói bảo hành.</p>
                <a href="/shop.jsp" class="btn">Mua ngay</a>
            </div>
            <div class="image">
                <img src="image/home-img-2.png" alt="">
            </div>
        </div>

        <div class="slide">
            <div class="content">
                <span>Fu2Tee</span>
                <h3>Quy trình sản xuất hàng đầu</h3>
                <p>Các sảnn phẩm của chúng tôi được gia công dưới bàn tay của những công nhân trình độ chuyên môn cao
                    kết hợp với hệ thống máy móc hiện đại.</p>
                <a href="#" class="btn">Mua ngay</a>
            </div>
            <div class="image">
                <img src="image/img-home-3.JPG" alt="">
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
        <img src="image/banner-home-1.jpg
                     " alt="">
        <div class="content">
            <span>Gia công phối màu</span>
            <h3>Giảm 15% giá</h3>
            <a href="#" class="btn">Mua ngay</a>
        </div>
    </div>

    <div class="banner">
        <img src="image/banner-home-2.jpg" alt="">
        <div class="content">
            <span>Full bộ nội thất</span>
            <h3>Giảm tới 50%</h3>
            <a href="#" class="btn">Mua ngay</a>
        </div>
    </div>

    <div class="banner">
        <img src="image/banner-3.jpg" alt="">
        <div class="content">
            <span>Tặng kèm quà</span>
            <h3>khi mua full set </h3>
            <a href="#" class="btn">Mua ngay</a>
        </div>
    </div>

</section>

<!-- banner section ends -->

<!-- footer section  -->
<jsp:include page="/footer.jsp"/>

<!-- JS link -->
<script src="js/script.js"></script>

</body>
</html>