<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa</title>
    <link rel="stylesheet" href="./../../css/edit-add.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="section-edit">
    <a href="/build/web/home.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Fu2Tee |</a>
    <h3>Trang chỉnh sửa dành cho quản trị!</h3>

    <form action="/admin/admin/admin.html" METHOD="post" class="form-edit">
        <label class="id-product" hidden for="">ID sản phẩm:</label>
        <input class="input-id" hidden type="text" placeholder="Nhập id ..."> <br>
        <label class="name-product" for="">Tên sản phẩm:</label>
        <input class="input-name" type="text" placeholder="Tên..."> <br>
        <label class="price-product" for="">Giá:</label>
        <input class="input-price" type="text" placeholder="Giá sản phẩm..."> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="" id="" cols="30" rows="10"></textarea> <br>
        <label class="form-label" for="customFile">Upload ảnh:</label>
        <input type="file" class="form-control" id="customFile"/>
    </form>
    <div class="btn">
        <input type="button" class="btn-edit-form" value="Save">
        <input type="button" class="btn-edit-form" value="Cancel">
    </div>
</div>
</body>
</html>