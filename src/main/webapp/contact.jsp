<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact</title>

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
    <h3>Liên lạc với chúng tôi</h3>
    <p><a href="index.jsp">trang chủ</a> / <span>contact</span></p>
</section>

<div class="contact">

    <form action="">
        <h3>Liên lạc</h3>
        <span>Tên của bạn</span>
        <input type="text" class="box">
        <span>Số điện thoại</span>
        <input type="number" class="box">
        <span>Email của bạn</span>
        <input type="email" class="box">
        <span>Tin nhắn của bạn</span>
        <textarea class="box" name="" id="" cols="30" rows="10"></textarea>
        <input type="submit" value="Gửi liên lạc" class="btn">
    </form>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59618.075448368705!2d105.72373851765416!3d20.94730532674599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313452eaa9c461c3%3A0x2a3e1c421f299adc!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyDEkOG6oWkgTmFt!5e0!3m2!1svi!2s!4v1634818661983!5m2!1svi!2s"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>

<!-- footer section  -->
<jsp:include page="/footer.jsp"/>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>