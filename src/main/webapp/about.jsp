<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
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

<section class="heading">
    <h3>Về chúng tôi</h3>
    <p><a href="index.jsp">trang chủ</a> / <span>about</span></p>
</section>

<section class="about">

    <div class="image">
        <img src="image/about-img.jpg" alt="">
    </div>

    <div class="content">
        <span>Thân chào quý khách hàng đến với nội thất Fu2Tee</span>
        <h3>sự lựa chọn của bạn chính là xứ mệnh của chúng tôi</h3>
        <p>Một không gian đẹp sẽ mang lại cho bạn nhiều cảm hứng và chúng tôi chính là người chuyền cảm hứng đó cho
            bạn.</p>
        <p>Đam mê sáng tạo không giới hạn chính là cốt lõi của đội ngũ nhân viên Fu2Tee, cho chúng tôi sự tin tưởng
            chúng tôi sẽ cho bạn sự hài lòng.</p>
        <a href="#" class="btn">Đọc thêm</a>
    </div>

</section>

<section class="services">

    <h1 class="title"><span>Dịch vụ của chúng tôi</span> <a href="#"> Tất cả -> </a></h1>

    <div class="new-product">

        <div class="box">
            <img src="image/serv-1.svg" alt="">
            <h3>Bán đồ nội thất</h3>
            <p>Fu2Tee chuyên sản xuất và bán đồ nội thất với mọi đối tượng khách hàng.</p>
            <a href="#" class="btn">Đọc thêm</a>
        </div>

        <div class="box">
            <img src="image/serv-2.svg" alt="">
            <h3>Thiết kế theo yêu cầu</h3>
            <p>Với nguồn nhân lực tay nghề cao Fu2Tee luôn sẵn sàng với yêu cầu của bạn.</p>
            <a href="#" class="btn">Đọc thêm</a>
        </div>

        <div class="box">
            <img src="image/serv-3.svg" alt="">
            <h3>CSKH 24/7</h3>
            <p>Bằng sự tận tình của đội ngữ CSKH chúng tôi tin bạn sẽ hài lòng.</p>
            <a href="#" class="btn">Đọc thêm</a>
        </div>

    </div>

</section>

<!-- footer section  -->
<jsp:include page="/footer.jsp"/>

<!-- JS link -->
<script src="js/script.js"></script>

</body>
</html>