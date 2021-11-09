<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/edit-add.css"/>
</head>

<body>
<div class="section-edit">
    <a href="../../index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất ABC|</a>
    <h3>Trang thêm sản phẩm dành cho quản trị!</h3>

    <form action="${pageContext.request.contextPath}/admin/products?action=add" method="post" class="form-edit">
        <jsp:include page="/categories"/>

        <label class="name-product" for="">Tên sản phẩm:</label>
        <input class="input-name" type="text" name="name"> <br>
        <label class="price-product" for="">Giá:</label>
        <input class="input-price" type="text" name="price"> <br>
        <label class="price-product" for="">Số lượng:</label>
        <input class="input-quantify" type="text" name="numberOfProduct"> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="description" id="" cols="30" rows="10"></textarea> <br>
        <label class="form-label" for="">Link ảnh sản phẩm:</label>
        <input class="input-id" type="text" name="urlImage"> <br>
        <label class="detail-link-image" for="image-detail">Link ảnh chi tiết:</label>
        <textarea class="input-detail-link-image" name="imageDetails" id="image-detail" cols="30" rows="10">
        </textarea> <br>

        <div class="btn">
            <input type="submit" class="btn-save" value="Lưu">
            <input type="reset" class="btn-cancel" value="Huỷ bỏ">
        </div>
    </form>
</div>
</body>
</html>