<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>shop</title>

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
    <h3>Cửa hàng</h3>
    <p><a href="index.jsp">trang chủ</a> / <span>shop</span></p>
</section>

<section class="category">

    <h1 class="title"><span>Danh mục sản phẩm</span></h1>

    <div class="new-product">
        <c:forEach items="${categories}" var="category">
            <a href="products?categoryId=${category.getId()}" class="box">
                <img src="image/icon-1.png" alt="">
                <h3>${category.getName()}</h3>
            </a>
        </c:forEach>
    </div>

</section>

<section class="products">
    <h1 class="title"><span>Sản phẩm mới</span></h1>
    <div class="new-product">
        <c:forEach items="${products}" var="product">
        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="?id=${product.getId()}" class="fas fa-eye"></a>
            </div>
            <div class="image">
                <img src="${product.getUrlImage()}" alt="">
            </div>
            <div class="content">
                <div class="price">${product.getPrice()}VNĐ</div>
                <h3>${product.getName()}</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <span> (50) </span>
                </div>
            </div>
        </div>
        </c:forEach>
</section>

<!-- footer section  -->
<jsp:include page="/footer.jsp"/>

<!-- JS link -->
<script src="js/script.js"></script>

</body>
</html>