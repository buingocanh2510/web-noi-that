<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title> admin </title>
    <link rel="stylesheet" href="../css/admin.css">
    <link rel="stylesheet" href="../css/edit-add.css"/>

    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<div class="sidebar">
    <div class="logo-details">
        <i class="fab fa-phoenix-framework"></i>
        <span class="logo_name">Nội thất Đại Nam</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="#" class="active">
                <i class="bx bx-grid-alt"></i>
                <span class="links_name">Quản trị</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="bx bx-box"></i>
                <span class="links_name">Danh mục</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="bx bx-box"></i>
                <span class="links_name">Sản phẩm</span>
            </a>
        </li>
        <li>
            <a href="../team.jsp">
                <i class="bx bx-user"></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li class="log_out">
            <a href="#">
                <i class="bx bx-log-out"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class="bx bx-menu sidebarBtn"></i>
            <span class="dashboard">Điều khiển</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class="bx bx-search search-icon"></i>
        </div>
        <div class="profile-details">
            <img src="/build/web/image/haha.jpg" alt="">
            <span class="admin_name">Nội thất Đại Nam</span>
        </div>
    </nav>

    <div class="home-content">
        <div class="overview-boxes">
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Số đơn hàng</div>
                    <div class="number">40,876</div>
                    <div class="indicator">
                        <i class="bx bx-up-arrow-alt"></i>
                        <span class="text">Tải lên từ hôm qua</span>
                    </div>
                </div>
                <i class="bx bx-cart-alt cart"></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Đã bán</div>
                    <div class="number">38,876</div>
                    <div class="indicator">
                        <i class="bx bx-up-arrow-alt"></i>
                        <span class="text">Tải lên từ hôm qua</span>
                    </div>
                </div>
                <i class="bx bxs-cart-add cart two"></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Thành đơn</div>
                    <div class="number">12,876</div>
                    <div class="indicator">
                        <i class="bx bx-up-arrow-alt"></i>
                        <span class="text">Tải lên từ hôm qua</span>
                    </div>
                </div>
                <i class="bx bx-cart cart three"></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Đơn hoàn trả</div>
                    <div class="number">186</div>
                    <div class="indicator">
                        <i class="bx bx-down-arrow-alt down"></i>
                        <span class="text">Tải lên từ hôm qua</span>
                    </div>
                </div>
                <i class="bx bxs-cart-download cart four"></i>
            </div>
        </div>

        <jsp:include page="/admin/categories?action=getAll"/>
        <br>
        <jsp:include page="/admin/products?action=getAll"/>

    </div>
</section>


<script>
    function delProduct() {
        confirm("Bạn có chắc muốn xóa sản phẩm này?");
    }

    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function () {
        sidebar.classList.toggle("active");
        if (sidebar.classList.contains("active")) {
            sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
        } else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }

    var Msg = '<%=request.getAttribute("err")%>';
    console.log(Msg)
    if (Msg != "null") {
        function alertName() {
            alert(Msg);
        }
    }
</script>
<script type="text/javascript"> window.onload = alertName; </script>
</body>

</html>