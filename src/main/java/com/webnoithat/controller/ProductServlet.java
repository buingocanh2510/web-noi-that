package com.webnoithat.controller;

import com.webnoithat.dao.CategoryDAO;
import com.webnoithat.dao.ProductDAO;
import com.webnoithat.model.Category;
import com.webnoithat.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(urlPatterns = {"/products"})
public class ProductServlet extends HttpServlet {

    private ProductDAO productDAO;
    private CategoryDAO categoryDAO;

    @Override
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        productDAO = new ProductDAO(jdbcURL, jdbcUsername, jdbcPassword);
        categoryDAO = new CategoryDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");

        // TH lấy tất cả sản phẩm
        if (Objects.isNull(id) && Objects.isNull(name)) {
            System.out.println("Get all");
            getByCategoryId(request, response);
            return;
        }

        // TH Search
        if (Objects.nonNull(name)) {
            System.out.println("searh name = " + name);
            searchProducts(request, response);
            return;
        }

        // TH lấy theo id sản phẩm
        getById(request, response);
    }

    public void getByCategoryId(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {

        List<Product> products = new ArrayList<>();
        List<Category> categories = categoryDAO.getAll();

        Category category = new Category();
        category.setName("Tất cả sản phẩm");
        String categoryId = request.getParameter("categoryId");

        if (Objects.isNull(categoryId)) {
            products.addAll(productDAO.getAll());
        } else {
            products.addAll(productDAO.getByCategoryId(Integer.parseInt(categoryId)));
            category = categoryDAO.getById(Integer.parseInt(categoryId));
        }

        request.setAttribute("category", category);
        request.setAttribute("products", products);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }

    public void getById(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {

        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.getById(id);

        request.setAttribute("product", product);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }

    public void searchProducts(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {

        List<Product> products = new ArrayList<>();
        List<Category> categories = categoryDAO.getAll();

        Category category = new Category();
        category.setName("Tất cả sản phẩm");

        List<Product> result = productDAO.searchProducts(request.getParameter("name"));
        products.addAll(result);

        request.setAttribute("category", category);
        request.setAttribute("products", products);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }
}
