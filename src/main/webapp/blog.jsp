<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>

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
    <h3>Blogs của chúng tôi</h3>
    <p><a href="index.jsp">trang chủ</a> / <span>blog</span></p>
</section>

<section class="blog">

    <h1 class="title"><span>Blogs của chúng tôi</span> <a href="#">Tất cả >></a></h1>

    <div class="new-product">

        <div class="box">
            <div class="image">
                <img src="image/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <h3>thiết kế trên đa chất liệu</h3>
                <p>Ngoài việc lên ý tưởng thì chất liệu của sản phẩm cũng là một yếu tố quan trọng tạo nên chất lượng
                    của sản phẩm</p>
                <a href="#" class="btn"> chi tiết</a>
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 19th October, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by fu2tee </a>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="image/blog-2.jpg" alt="">
            </div>
            <div class="content">
                <h3>kiểu dáng sáng tạo</h3>
                <p>Không dừng lại ở những kiểu dáng quen thuộc, đội ngũ Fu2Tee luôn biết cách đổi mới kiểu dáng của sản
                    phẩm.</p>
                <a href="#" class="btn">chi tiết</a>
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 19th October, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by fu2tee </a>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="image/blog-3.jpg" alt="">
            </div>
            <div class="content">
                <h3>Màu sắc tinh tế</h3>
                <p>Cảm quan về sự kết hợp màu sắc là một điều không thể thiếu nếu bạn muốn có một không gian hoàn
                    hảo.</p>
                <a href="#" class="btn">chi tiết</a>
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 19th October, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by fu2tee </a>
                </div>
            </div>
        </div>


    </div>

</section>

<!-- footer section  -->
<jsp:include page="/footer.jsp"/>

<!-- JS link -->
<script src="js/script.js"></script>

</body>
</html>