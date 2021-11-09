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
    <link rel="stylesheet" href="../../css/edit-add.css"/>
</head>

<body>
<div class="section-edit">
    <a href="../../index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Nội thất ABC|</a>
    <h3>Thêm danh mục sản phẩm</h3>

    <form action="${pageContext.request.contextPath}/admin/categories?action=add" method="post" class="form-edit">
        <label class="name-product" for="">Tên sản phẩm:</label>
        <input class="input-name" name="name" type="text"> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="description" id="" cols="30" rows="10"></textarea> <br>
        <label class="detail-link-image" for="">Link ảnh chi tiết:</label>
        <input class="input-detail-link-image" name="urlImage" type="text"> <br>

        <div class="btn">
            <input type="submit" class="btn-save" value="Lưu">
            <input type="button" class="btn-cancel" value="Huỷ bỏ">
        </div>
    </form>
</div>
</body>
</html>