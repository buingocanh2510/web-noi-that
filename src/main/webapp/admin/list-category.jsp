<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../css/edit-add.css"/>

<div class="sales-boxes">
    <div class="recent-sales box">
        <div class="title">Quản lý danh mục</div>
        <form action="categories/add.jsp" method="get">
            <button class="btn btn-primary btn-sm rounded-0" type="submit" data-toggle="tooltip"
                    data-placement="top" title="Add">Thêm mới
            </button>
        </form>

        <div class="table-responsive">
            <table class="table m-0">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên danh mục</th>
                    <th scope="col">Mô tả</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categories}" var="category">
                    <tr>
                        <th scope="row">1</th>
                        <td>${category.getName()}</td>
                        <td>${category.getDescription()}</td>
                        <td>
                            <!-- Call to action buttons -->
                            <ul class="list-inline m-0">
                                <li class="list-inline-item">
                                    <button class="btn btn-success btn-sm rounded-0" type="submit"
                                            data-toggle="tooltip" data-placement="top" title="Edit">
                                        <i class="fa fa-edit">
                                            <a href="categories?action=getPageUpdate&id=${category.getId()}"> Sửa</a>
                                        </i>
                                    </button>
                                </li>
                                <li class="list-inline-item">
                                    <button class="btn btn-danger btn-sm rounded-0" type="button"
                                            data-toggle="tooltip" data-placement="top" title="Delete">
                                        <i class="fa fa-trash"></i>
                                        <a href="categories?action=delete&id=${category.getId()}"> Xoá</a>
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
