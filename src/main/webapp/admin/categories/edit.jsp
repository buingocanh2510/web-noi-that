<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa</title>
    <link rel="stylesheet" href="../../css/edit-add.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="section-edit">
    <a href="${pageContext.request.contextPath}/index.jsp" class="logo"> <i class="fab fa-phoenix-framework"></i> Fu2Tee |</a>
    <h3>Cập nhật danh mục sản phẩm</h3>

    <form action="${pageContext.request.contextPath}/admin/categories?action=update&id=${category.getId()}" method="post"
          class="form-edit">
        <input class="input-id" hidden type="text" value="${category.getId()}"> <br>
        <label class="name-product" for="">Tên:</label>
        <input class="input-name" type="text" name="name" value="${category.getName()}"> <br>
        <label class="detail" for="">Mô tả:</label>
        <textarea class="input-detail" name="description" id="" cols="30" rows="10">
            ${category.getDescription()}
        </textarea> <br>
        <label class="name-product" for="">Ảnh:</label>
        <input class="input-name" name="urlImage" type="text" value="${category.getUrlImage()}"> <br>

        <div class="btn">
            <input type="submit" class="btn-edit-form" value="Save">
            <input type="button" class="btn-edit-form" value="Cancel">
        </div>
    </form>
</div>
</body>
</html>