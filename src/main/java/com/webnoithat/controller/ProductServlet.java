package com.webnoithat.controller;

import com.webnoithat.model.Categories;
import com.webnoithat.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(urlPatterns = {"/products"})
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");

        if (Objects.isNull(id)) {
            System.out.println("Get all");
            getAll(request, response);
            return;
        }

        getById(request, response);
    }

    public void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Product> products = new ArrayList<>();
        List<Categories> categories = new ArrayList<>();
        categories.add(new Categories("1", "Ghế Sofa", ""));
        categories.add(new Categories("2", "Tủ đồ và Kệ", ""));
        categories.add(new Categories("3", "Bàn làm việc", ""));
        categories.add(new Categories("4", "Ghế mini", ""));
        categories.add(new Categories("5", "Tủ quần áo", ""));
        String categoryId = request.getParameter("categoryId");
        if (Objects.nonNull(categoryId) && categoryId.equals("2")) {
            products.add(new Product("San pham 1", 100000, "https://i.stack.imgur.com/N4TSy.jpg"));
            products.add(new Product("San pham 2", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 3", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 4", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 5", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 6", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 7", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 8", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 9", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 10", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 11", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 12", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 13", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 14", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 15", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 16", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 17", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
            products.add(new Product("San pham 18", 100000, "https://noithatvanphong.com/wp-content/uploads/2021/07/Tu-locker-de-do-TMG983-3K.jpg"));
        }

        if (Objects.nonNull(categoryId) && categoryId.equals("1")) {
            products.add(new Product("San pham 1", 100000, "https://i.stack.imgur.com/N4TSy.jpg"));
        }

        request.setAttribute("products", products);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }

    public void getById(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        System.out.println(request.getParameter("id"));
        Product product = new Product("San pham 1", 100000, "https://i.stack.imgur.com/N4TSy.jpg");
        request.setAttribute("product", product);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }
}
