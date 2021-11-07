package com.webnoithat.controller;

import com.webnoithat.model.Product;
import com.webnoithat.utils.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/products/"})
public class AdminProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case StringUtils.ADD:
                createProduct(request, response);
                break;
            case StringUtils.UPDATE:
                updateProduct(request, response);
                break;
            case StringUtils.DELETE:
                deleteProduct(request, response);
        }
    }

    public void createProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        List<Product> products = new ArrayList<>();

        // query database
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

        request.setAttribute("products", products);
        request.getRequestDispatcher("/admin/products/add.jsp").forward(request, response);
    }

    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        System.out.println(request.getParameter("id"));
        request.getRequestDispatcher("/admin/products/edit.jsp").forward(request, response);
    }

    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) {

    }
}
