<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>team</title>

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
    <h3>Team chúng tôi</h3>
    <p><a href="index.jsp">trang chủ</a> / <span>team</span></p>
</section>

<section class="team">

    <h1 class="title">Thành viên nhóm 03</h1>

    <div class="new-product">

        <div class="box">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-pinterest"></a>
                <a href="#" class="fab fa-instagram"></a>
            </div>
            <div class="image">
                <img src="image/khuong.jpg" alt="">
            </div>
            <div class="user">
                <h3>Duy K-Smell</h3>
                <span>Hai mang Dev</span>
            </div>
        </div>

        <div class="box">
            <div class="share">
                <a href="https://www.facebook.com/profile.php?id=100015486391891" target="_blank"
                   class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-pinterest"></a>
                <a href="#" class="fab fa-instagram"></a>
            </div>
            <div class="image">
                <img src="image/anh.jpg" alt="">
            </div>
            <div class="user">
                <h3>Ngọc Ánh</h3>
                <span>Back-end Dev</span>
            </div>
        </div>

        <div class="box">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-pinterest"></a>
                <a href="#" class="fab fa-instagram"></a>
            </div>
            <div class="image">
                <img src="image/hoan.jpg" alt="">
            </div>
            <div class="user">
                <h3>Công Hoan</h3>
                <span>Data Science</span>
            </div>
        </div>

        <div class="box">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-pinterest"></a>
                <a href="#" class="fab fa-instagram"></a>
            </div>
            <div class="image">
                <img src="image/phong.jpg" alt="">
            </div>
            <div class="user">
                <h3>Beach Wind</h3>
                <span>Front-end Dev</span>
            </div>
        </div>

        <div class="box">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-pinterest"></a>
                <a href="#" class="fab fa-instagram"></a>
            </div>
            <div class="image">
                <img src="image/pro-hieu.jpg" alt="">
            </div>
            <div class="user">
                <h3>Trọng Hiếu</h3>
                <span>Front-end Dev</span>
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