package com.webnoithat;

import com.webnoithat.model.Product;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

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
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    public void destroy() {
    }
}