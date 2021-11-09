package com.webnoithat.controller;

import com.webnoithat.dao.CategoryDAO;
import com.webnoithat.dao.ProductDAO;
import com.webnoithat.model.Category;
import com.webnoithat.model.Product;
import com.webnoithat.utils.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/categories"})
public class AdminCategoryServlet extends HttpServlet {

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String action = request.getParameter("action");
        switch (action) {
            case StringUtils.GET_ALL:
                getAll(request, response);
                break;
            case StringUtils.ADD:
                createCategory(request, response);
                break;
            case StringUtils.GET_PAGE_UPDATE:
                getPageUpdateCategory(request, response);
                break;
            case StringUtils.UPDATE:
                updateCategory(request, response);
                break;
            case StringUtils.DELETE:
                deleteCategory(request, response);
        }
    }

    public void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        List<Category> categories = categoryDAO.getAll();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("list-category.jsp").include(request, response);
    }

    public void createCategory(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Category category = getCategoryFromRequest(request);
        categoryDAO.creatCategory(category);
        response.sendRedirect("admin.jsp");
    }

    public void getPageUpdateCategory(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Category category = categoryDAO.getById(id);
        request.setAttribute("category", category);
        request.getRequestDispatcher("categories/edit.jsp").forward(request, response);
    }

    public void updateCategory(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Category category = getCategoryFromRequest(request);
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Update category id = " + id);
        categoryDAO.updateCategory(category, id);
        response.sendRedirect("admin.jsp");
    }

    public void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Xoa category id: " + id);

        // Kiem tra co san pham ko
        List<Product> products = productDAO.getByCategoryId(id);
        if (products != null && products.size() > 0) {
            System.out.println("Không thể xoá do danh mục sản phẩm này đã có sản phẩm");
            request.setAttribute("err", "Không thể xoá do danh mục sản phẩm này đã có sản phẩm");
            request.getRequestDispatcher("admin.jsp").forward(request, response);
            return;
        }

        categoryDAO.deleteCategoryById(id);
        response.sendRedirect("admin.jsp");
    }

    private Category getCategoryFromRequest(HttpServletRequest request) throws UnsupportedEncodingException {
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String description = new String(request.getParameter("description").getBytes("iso-8859-1"), "utf-8");
        String urlImage = request.getParameter("urlImage");

        return new Category(name, description, urlImage);
    }
}
