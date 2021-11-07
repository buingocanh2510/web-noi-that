<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="../../css/edit-add.css">
</head>

<body>
<div class="section-edit">
    <a href="../../home.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất ABC|</a>
    <h3>Trang thêm sản phẩm dành cho quản trị!</h3>

    <form action="TODO" class="form-edit">

        <label class="name-product" for="">Danh mục:</label>
        <select class="input-name" name="categories" id="category">
            <option value="sofa">Ghế Sofa</option>
            <option value="ban">Bàn làm việc</option>
            <option value="tudo">Tủ Đồ và Kệ</option>
            <option value="ghe">Ghế Mini</option>
            <option value="tuquanao">Tủ quần áo</option>
        </select><br>

        <label class="name-product" for="">Tên:</label>
        <input class="input-name" type="text"> <br>
        <label class="price-product" for="">Giá:</label>
        <input class="input-price" type="text"> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="" id="" cols="30" rows="10"></textarea> <br>
        <label class="id-product" for="">Link ảnh:</label>
        <input class="input-id" type="text"> <br>
        <label class="id-product" for="">Link ảnh chi tiết 1:</label>
        <input class="input-id" type="text"> <br>
        <label class="id-product" for="">Link ảnh chi tiết 2:</label>
        <input class="input-id" type="text"> <br>
        <label class="id-product" for="">Link ảnh chi tiết 3:</label>
        <input class="input-id" type="text"> <br>
        <label class="id-product" for="">Link ảnh chi tiết 4:</label>
        <input class="input-id" type="text"> <br>
        <label class="id-product" for="">Link ảnh chi tiết 5:</label>
        <input class="input-id" type="text"> <br>
    </form>
    <div class="btn">
        <input type="button" class="btn-edit-form" value="Lưu">
        <input type="button" class="btn-edit-form" value="Huỷ bỏ">
    </div>
</div>
</body>
</html>