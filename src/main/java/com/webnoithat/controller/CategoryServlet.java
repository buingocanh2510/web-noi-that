package com.webnoithat.controller;

import com.webnoithat.dao.CategoryDAO;
import com.webnoithat.model.Category;
import com.webnoithat.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

@WebServlet("/categories")
public class CategoryServlet extends HttpServlet {

    private CategoryDAO categoryDAO;

    @Override
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

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

        if (Objects.isNull(id)) {
            System.out.println("Get all");
            getAll(request, response);
            return;
        }

        getById(request, response);
    }

    public void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        List<Category> categories = categoryDAO.getAll();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("admin/select-categories.jsp").include(request, response);
    }

    public void getById(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println(request.getParameter("id"));
        Product product = new Product("San pham 1", 100000, "https://i.stack.imgur.com/N4TSy.jpg");
        request.setAttribute("product", product);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }
}
