<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<label class="name-product">Danh mục:</label>
<select class="input-name" name="categoryId" id="category">
    <c:forEach items="${categories}" var="category">
        <option value="${category.getId()}">${category.getName()}</option>
    </c:forEach>
</select><br>