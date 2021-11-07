package com.webnoithat.model;

import java.util.ArrayList;
import java.util.List;

public class Product {
    private static int id = 0;
    private String categoryId;
    private String name;
    private double price;
    private String description;
    private int numberOfProduct;
    private String urlImage;
    private List<String> imageDetails;

    public Product() {

    }

    public Product(String name, double price, String urlImage) {
        id++;
        this.name = name;
        this.price = price;
        this.urlImage = urlImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
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
        return "chi tiết của sản phẩm " + this.getId();
//        return description;
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
        List<String> imgs = new ArrayList<>();
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/ban-lam-viec-ket-hop-chan-ke-2-150x150.jpg");
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/ban-lam-viec-ket-hop-chan-ke-1-510x510.jpg");
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/ban-lam-viec-ket-hop-chan-ke-510x510.jpg");
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/kich-thuoc-ban-lam-viec-510x510.jpg");
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/ban-lam-viec-ket-hop-chan-ke-510x510.jpg");
        imgs.add("https://caotoanphat.com/wp-content/uploads/2021/09/kich-thuoc-ban-lam-viec-510x510.jpg");
        return imgs;
//        return imageDetails;
    }

    public void setImageDetails(List<String> imageDetails) {
        this.imageDetails = imageDetails;
    }
}
