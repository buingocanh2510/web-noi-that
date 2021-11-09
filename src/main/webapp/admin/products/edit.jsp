<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/edit-add.css"/>
</head>
<body>
<div class="section-edit">
    <a href="${pageContext.request.contextPath}/index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Fu2Tee
        |</a>
    <h3>Cập nhật danh mục sản phẩm</h3>

    <form action="${pageContext.request.contextPath}/admin/products?action=update&id=${product.getId()}" method="post"
          class="form-edit">
        <label class="name-product">Danh mục:</label>
        <select class="input-list" name="categoryId" id="category">
            <c:forEach items="${categories}" var="category">
                <option value="${category.getId()}" <c:if test="${category.getId() == product.getCategoryId()}">
                    selected
                </c:if>>
                        ${category.getName()}
                </option>
            </c:forEach>
        </select><br>
        <input class="input-id" hidden type="text" value="${product.getId()}"> <br>
        <label class="name-product" for="">Tên sản phẩm:</label>
        <input class="input-name" name="name" type="text" value="${product.getName()}"> <br>
        <label class="price-product" for="">Giá:</label>
        <input class="input-price" name="price" type="text" value="${product.getPrice()}"> <br>
        <label class="price-product" for="">Số lượng:</label>
        <input class="input-quantify" type="text" name="numberOfProduct" value="${product.getNumberOfProduct()}"> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="description" id="" cols="30" rows="10">
            ${product.getDescription()}
        </textarea> <br>
        <label class="form-label" for="customFile">Link ảnh sản phẩm:</label>
        <input type="text" name="urlImage" class="link-product" id="customFile" value="${product.getUrlImage()}"/> <br>
        <label class="detail-link-image" for="image-detail">Link ảnh chi tiết:</label>
        <textarea class="input-detail-link-image" name="imageDetails" id="image-detail" cols="30" rows="10">
            ${product.getImageDetailsStr()}
        </textarea> <br>

        <div class="btn">
            <input type="submit" class="btn-save" value="Lưu">
            <input type="button" class="btn-cancel" value="Huỷ bỏ">
        </div>
    </form>
</div>
</body>
</html>