package com.webnoithat.controller;

import com.webnoithat.dao.ProductDAO;
import com.webnoithat.dao.ShopCartDAO;
import com.webnoithat.model.Product;
import com.webnoithat.model.ShopCart;
import com.webnoithat.model.ShopCartDetail;
import com.webnoithat.utils.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/shopCarts"})
public class ShopCartServlet extends HttpServlet {
    private ShopCartDAO shopCartDAO;
    private ProductDAO productDAO;

    @Override
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        try {
            shopCartDAO = new ShopCartDAO(jdbcURL, jdbcUsername, jdbcPassword);
            productDAO = new ProductDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        try {
            getAll(request, response);
        } catch (SQLException | ServletException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException, ServletException {
        String action = request.getParameter("action");
        switch (action) {
            case StringUtils.ADD:
                createShopCart(request, response);
                break;
            case StringUtils.DELETE:
                deleteShopCart(request, response);
        }
    }

    public void createShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ShopCart shopCart = getShopCartFromRequest(request);

        // Kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa
//        ShopCart shopCartDB = shopCartDAO.getByProductId(productId);
        HttpSession session = request.getSession();

        // TH đã có => update số lượng sản phẩm
//        if (Objects.nonNull(shopCartDB)) {
//            // Update
//            int newNumberOfProduct = shopCart.getNumberOfProduct() + shopCartDB.getNumberOfProduct();
//            shopCartDAO.updateShopCartByProductId(shopCartDB, newNumberOfProduct);
//
//            // load lai trang hien tai
//            response.sendRedirect(request.getParameter("url"));
//
//            return;
//        }

        List<ShopCartDetail> shopCarts = (List<ShopCartDetail>) session.getAttribute("shopCarts");
        if (shopCarts != null && shopCarts.size() > 0) {
            boolean isUpdate = false;
            for (ShopCartDetail item : shopCarts) {
                if (item.getProductId() == productId) {
                    // Update
                    int newNumberOfProduct = shopCart.getNumberOfProduct() + item.getNumberOfProduct();
                    item.setNumberOfProduct(newNumberOfProduct);
                    item.setTotalPrice(newNumberOfProduct * item.getPrice());
                    isUpdate = true;
                    break;
                }
            }
            if (isUpdate) {
                double totalPriceNumber = shopCarts.stream().mapToDouble(ShopCartDetail::getTotalPrice).sum();
                DecimalFormat df = new DecimalFormat("#,###");
                String totalPrice = df.format(totalPriceNumber);
                request.setAttribute("shopCarts", shopCarts);
                request.setAttribute("totalPrice", totalPrice);
                // load lai trang hien tai
                response.sendRedirect(request.getParameter("url"));
                return;
            }
        }

        // TH chưa có => Thêm mới
//        shopCartDAO.createShopCart(shopCart);
        Product product = productDAO.getById(shopCart.getProductId());
        ShopCartDetail shopCartDetail = new ShopCartDetail(
                shopCart.getId(),
                shopCart.getProductId(),
                product.getName(),
                shopCart.getNumberOfProduct(),
                shopCart.getNumberOfProduct() * product.getPrice(),
                product.getUrlImage(),
                product.getPrice()
        );

        if (shopCarts == null) {
            shopCarts = new ArrayList<>();
        }
        shopCarts.add(shopCartDetail);
        session.setAttribute("shopCarts", shopCarts);

        //load lai trang hien tai
        response.sendRedirect(request.getParameter("url"));
    }

    public void getAll(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {

//        List<ShopCartDetail> shopCarts = shopCartDAO.getAll();
        HttpSession session = request.getSession();
        List<ShopCartDetail> shopCarts = (List<ShopCartDetail>) session.getAttribute("shopCarts");

        double totalPriceNumber;
        if (shopCarts == null) {
            totalPriceNumber = 0;
        } else {
            totalPriceNumber = shopCarts.stream().mapToDouble(ShopCartDetail::getTotalPrice).sum();
        }

        DecimalFormat df = new DecimalFormat("#,###");
        String totalPrice = df.format(totalPriceNumber);
        request.setAttribute("shopCarts", shopCarts);
        request.setAttribute("totalPrice", totalPrice);

        request.getRequestDispatcher("/shop-cart.jsp").include(request, response);
    }

    public void deleteShopCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        System.out.println("Xoa gio hang productId: " + productId);
        List<ShopCartDetail> shopCartDetails = (List<ShopCartDetail>) request.getSession().getAttribute("shopCarts");
        for (ShopCartDetail shopCartDetail : shopCartDetails) {
            if (shopCartDetail.getProductId() == productId) {
                shopCartDetails.remove(shopCartDetail);
                break;
            }
        }
        request.getSession().setAttribute("shopCarts", shopCartDetails);
//        shopCartDAO.deleteShopCartById(id);
        response.sendRedirect(request.getParameter("url"));
    }

    private ShopCart getShopCartFromRequest(HttpServletRequest request) {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct"));

        return new ShopCart(productId, numberOfProduct);
    }
}
