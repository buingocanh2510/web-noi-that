package com.webnoithat.dao;

import com.webnoithat.model.Category;
import com.webnoithat.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO extends DatabaseDAO {

    public CategoryDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws ClassNotFoundException {
        super(jdbcURL, jdbcUsername, jdbcPassword);
    }


    public boolean creatCategory(Category category) throws SQLException {
        String sql = "INSERT INTO categories (name, description, urlImage) value (?, ?, ?)";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, category.getName());
        statement.setString(2, category.getDescription());
        statement.setString(3, category.getUrlImage());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public List<Category> getAll() throws SQLException {
        List<Category> categories = new ArrayList<>();

        String sql = "SELECT * FROM categories";

        connect();

        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            Category category = getCategoryFromResultSet(resultSet);
            categories.add(category);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return categories;
    }

    public Category getById(int id) throws SQLException {
        Category category = null;
        String sql = "SELECT * FROM categories WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            category = getCategoryFromResultSet(resultSet);
        }

        resultSet.close();
        statement.close();

        return category;
    }

    public boolean deleteCategoryById(int id) throws SQLException {
        String sql = "DELETE FROM categories WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowDeleted;
    }

    public boolean updateCategory(Category category, int id) throws SQLException {
        String sql = "UPDATE categories";
        sql += " SET name = ?, description = ?, urlImage = ? WHERE id = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, category.getName());
        statement.setString(2, category.getDescription());
        statement.setString(3, category.getUrlImage());
        statement.setDouble(4, id);

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowUpdated;
    }

    private Category getCategoryFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        String name = resultSet.getString("name");
        String description = resultSet.getString("description");
        String urlImage = resultSet.getString("urlImage");

        return new Category(id, name, description, urlImage);
    }
}
