package com.webnoithat.dao;

import com.webnoithat.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProductDAO extends DatabaseDAO {
    public ProductDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        super(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public boolean createProduct(Product product) throws SQLException {
        String sql = "INSERT INTO products (name, description, price, numberOfProduct, categoryId, urlImage, imageDetails) " +
                "value (?, ?, ?, ?, ?, ?, ?)";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, product.getName());
        statement.setString(2, product.getDescription());
        statement.setDouble(3, product.getPrice());
        statement.setInt(4, product.getNumberOfProduct());
        statement.setInt(5, product.getCategoryId());
        statement.setString(6, product.getUrlImage());
        statement.setString(7, String.join(",", product.getImageDetails()));

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public List<Product> getAll() throws SQLException {
        List<Product> listBook = new ArrayList<>();

        String sql = "SELECT * FROM products";

        connect();

        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            Product product = getProductFromResultSet(resultSet);
            listBook.add(product);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return listBook;
    }

    public List<Product> getByCategoryId(int categoryId) throws SQLException {
        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM products WHERE categoryId = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, categoryId);

        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            Product product = getProductFromResultSet(resultSet);
            products.add(product);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return products;
    }

    public Product getById(int id) throws SQLException {
        Product product = null;
        String sql = "SELECT * FROM products WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            product = getProductFromResultSet(resultSet);
        }

        resultSet.close();
        statement.close();

        return product;
    }

    public boolean deleteProductById(int id) throws SQLException {
        String sql = "DELETE FROM products WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowDeleted;
    }

    public List<Product> searchProducts(String name) throws SQLException {
        List<Product> listBook = new ArrayList<>();

        String sql = "SELECT * FROM products WHERE name LIKE '%" + name + "%'";

        connect();

        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            Product product = getProductFromResultSet(resultSet);
            listBook.add(product);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return listBook;
    }

    public boolean updateProduct(Product product, int id) throws SQLException {
        String sql = "UPDATE products";
        sql += " SET name = ?, description = ?, price = ?, numberOfProduct = ?, categoryId = ?, urlImage = ?, imageDetails =?";
        sql += " WHERE id = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, product.getName());
        statement.setString(2, product.getDescription());
        statement.setDouble(3, product.getPrice());
        statement.setInt(4, product.getNumberOfProduct());
        statement.setInt(5, product.getCategoryId());
        statement.setString(6, product.getUrlImage());
        statement.setString(7, String.join(",", product.getImageDetails()));
        statement.setDouble(8, id);

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowUpdated;
    }


    private Product getProductFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        String name = resultSet.getString("name");
        String description = resultSet.getString("description");
        double price = resultSet.getDouble("price");
        int categoryId = resultSet.getInt("categoryId");
        int numberOfProduct = resultSet.getInt("numberOfProduct");
        String urlImage = resultSet.getString("urlImage");
        String imageDetails = resultSet.getString("imageDetails");

        List<String> imgDetails = Arrays.asList(imageDetails.split(","));

        return new Product(id, categoryId, name, price, description,
                numberOfProduct, urlImage, imgDetails);
    }
}
