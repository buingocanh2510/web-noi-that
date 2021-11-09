package com.webnoithat.model;

import java.text.DecimalFormat;
import java.util.List;

public class Product {
    private int id;
    private int categoryId;
    private String name;
    private double price;
    private String priceStr;
    private String description;
    private int numberOfProduct;
    private String urlImage;
    private List<String> imageDetails;
    private String imageDetailsStr;

    public Product() {

    }

    public Product(String name, double price, String urlImage) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.urlImage = urlImage;
    }

    public Product(int categoryId, String name, double price, String description,
                   int numberOfProduct, String urlImage, List<String> imageDetails) {
        this.categoryId = categoryId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.numberOfProduct = numberOfProduct;
        this.urlImage = urlImage;
        this.imageDetails = imageDetails;
    }


    public Product(int id, int categoryId, String name, double price, String description,
                   int numberOfProduct, String urlImage, List<String> imageDetails) {
        this.id = id;
        this.categoryId = categoryId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.numberOfProduct = numberOfProduct;
        this.urlImage = urlImage;
        this.imageDetails = imageDetails;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberOfProduct() {
        return numberOfProduct;
    }

    public void setNumberOfProduct(int numberOfProduct) {
        this.numberOfProduct = numberOfProduct;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public List<String> getImageDetails() {
        return imageDetails;
    }

    public void setImageDetails(List<String> imageDetails) {
        this.imageDetails = imageDetails;
    }

    public String getPriceStr() {
        DecimalFormat df = new DecimalFormat("#,###");
        return df.format(price);
    }

    public void setPriceStr(String priceStr) {
        this.priceStr = priceStr;
    }

    public String getImageDetailsStr() {
        return imageDetails.toString().replace("[", "").replace("]", "");
    }

    public void setImageDetailsStr(String imageDetailsStr) {
        this.imageDetailsStr = imageDetailsStr;
    }
}
