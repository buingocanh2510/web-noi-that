<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/about.css">
<link rel="stylesheet" href="css/blog.css">
<link rel="stylesheet" href="css/shop-cart.css">
<link rel="stylesheet" href="css/team.css">
<link rel="stylesheet" href="css/contact.css">

<div class="shopping-cart">
    <c:forEach items="${shopCarts}" var="shopCart">
        <form action="${pageContext.request.contextPath}/shopCarts?action=delete" method="post">
            <div class="box">
                <button type="submit" class="fas fa-times">
                </button>
                <input type="text" name="id" value="${shopCart.getId()}" hidden/>
                <input type="text" hidden
                       value="${requestScope['javax.servlet.forward.request_uri']}?${requestScope['javax.servlet.forward.query_string']}"
                       name="url"
                />
                <img src="${shopCart.getUrlImage()}" alt="">
                <div class="content">
                    <h3>${shopCart.getProductName()}</h3>
                    <span class="quantity"> ${shopCart.getNumberOfProduct()} </span>
                    <span class="multiply"> x </span>
                    <span class="price"> ${shopCart.getPriceStr()} VNĐ </span>
                </div>
            </div>
        </form>
    </c:forEach>
    <h3 class="total"> tổng : <span> ${totalPrice} VNĐ  </span></h3>

    <a href="#" class="btn">Thanh toán giỏ hàng</a>
</div>
