package com.webnoithat.dao;

import com.webnoithat.model.ShopCart;
import com.webnoithat.model.ShopCartDetail;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ShopCartDAO extends DatabaseDAO {
    public ShopCartDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws ClassNotFoundException {
        super(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public boolean createShopCart(ShopCart shopCart) throws SQLException {
        String sql = "INSERT INTO shop_cart (productId, numberOfProduct) value (?, ?)";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, shopCart.getProductId());
        statement.setInt(2, shopCart.getNumberOfProduct());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public boolean updateShopCartByProductId(ShopCart shopCartDB, int numberOfProduct) throws SQLException {
        String sql = "UPDATE shop_cart SET numberOfProduct = ? WHERE productId = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, numberOfProduct);
        statement.setInt(2, shopCartDB.getProductId());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public List<ShopCartDetail> getAll() throws SQLException {
        List<ShopCartDetail> shopCarts = new ArrayList<>();

        String sql = "SELECT * FROM shop_cart join products on shop_cart.productId = products.id";

        connect();

        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            ShopCartDetail shopCart = getShopCartDetailFromResultSet(resultSet);
            shopCarts.add(shopCart);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return shopCarts;
    }

    public ShopCart getByProductId(int productId) throws SQLException {
        ShopCart shopCart = null;
        String sql = "SELECT * FROM shop_cart WHERE productId = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, productId);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            shopCart = getShopCartFromResultSet(resultSet);
        }

        resultSet.close();
        statement.close();

        return shopCart;
    }

    private ShopCartDetail getShopCartDetailFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("shop_cart.id");
        int productId = resultSet.getInt("shop_cart.productId");
        String productName = resultSet.getString("products.name");
        int numberOfProduct = resultSet.getInt("shop_cart.numberOfProduct");
        String urlImage = resultSet.getString("products.urlImage");
        double price = resultSet.getInt("products.price");

        return new ShopCartDetail(id, productId, productName, numberOfProduct, numberOfProduct * price, urlImage, price);
    }

    public boolean deleteShopCartById(int id) throws SQLException {
        String sql = "DELETE FROM shop_cart WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowDeleted;
    }

    private ShopCart getShopCartFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        int productId = resultSet.getInt("productId");
        int numberOfProduct = resultSet.getInt("numberOfProduct");

        return new ShopCart(id, productId, numberOfProduct);
    }
}
