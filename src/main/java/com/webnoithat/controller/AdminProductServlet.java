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
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/products"})
public class AdminProductServlet extends HttpServlet {

    private ProductDAO productDAO;
    private CategoryDAO categoryDAO;

    @Override
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        try {
            productDAO = new ProductDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            categoryDAO = new CategoryDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
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
                createProduct(request, response);
                break;
            case StringUtils.GET_PAGE_UPDATE:
                getPageUpdateProduct(request, response);
                break;
            case StringUtils.UPDATE:
                updateProduct(request, response);
                break;
            case StringUtils.DELETE:
                deleteProduct(request, response);
        }
    }

    public void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        List<Product> products = productDAO.getAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("list-product.jsp").include(request, response);
    }

    public void createProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Product product = getProductFromRequest(request);
        productDAO.createProduct(product);
        response.sendRedirect("admin.jsp");
    }

    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Product product = getProductFromRequest(request);
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Update product id = " + id);
        productDAO.updateProduct(product, id);
        response.sendRedirect("admin.jsp");
    }

    public void getPageUpdateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.getById(id);
        List<Category> categories = categoryDAO.getAll();
        request.setAttribute("categories", categories);
        request.setAttribute("product", product);
        request.getRequestDispatcher("products/edit.jsp").forward(request, response);
    }

    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Xoa id: " + id);
        productDAO.deleteProductById(id);
        response.sendRedirect("admin.jsp");
    }

    private Product getProductFromRequest(HttpServletRequest request) throws UnsupportedEncodingException {
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String description = new String(request.getParameter("description").getBytes("iso-8859-1"), "utf-8");
        double price = Double.parseDouble(request.getParameter("price"));
        int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String urlImage = request.getParameter("urlImage");
        List<String> imageDetails = Arrays.asList(request.getParameter("imageDetails").split(","));

        return new Product(categoryId, name, price, description,
                numberOfProduct, urlImage, imageDetails);
    }
}
