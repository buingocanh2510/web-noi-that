<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sales-boxes">
    <div class="recent-sales box">
        <div class="title">Quản lý sản phẩm</div>

        <%--        Button ADD product--%>
        <form action="products/add.jsp" method="get">
            <button class="btn btn-primary btn-sm rounded-0" type="submit" data-toggle="tooltip"
                    data-placement="top" title="Add">Thêm mới
            </button>
        </form>
        <%--        End Button add product--%>

        <div class="table-responsive">
            <table class="table m-0">
                <thead>
                <tr>
                    <th scope="col">Mã</th>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số lượng tồn kho</th>
                    <th scope="col">Mô tả</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <th scope="row">${product.getId()}</th>
                        <td>${product.getName()}</td>
                        <td>${product.getPrice()} VNĐ</td>
                        <td>${product.getNumberOfProduct()}</td>
                        <td>${product.getDescription()}</td>
                        <td>
                            <!-- Call to action buttons -->
                            <ul class="list-inline m-0">
                                <li class="list-inline-item">
                                    <button class="btn btn-success btn-sm rounded-0" type="submit"
                                            data-toggle="tooltip" data-placement="top" title="Edit">
                                        <i class="fa fa-edit">
                                            <a href="products?action=getPageUpdate&id=${product.getId()}"> Sửa</a>
                                        </i>
                                    </button>
                                </li>
                                <li class="list-inline-item">
                                    <button class="btn btn-danger btn-sm rounded-0" type="button"
                                            data-toggle="tooltip" data-placement="top" title="Delete">
                                        <i class="fa fa-trash"></i>
                                        <a href="products?action=delete&id=${product.getId()}"> Xoá</a>
                                    </button>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
