package com.webnoithat.model;

public class ShopCartDetail extends ShopCart {
    private String productName;
    private double totalPrice;
    private String urlImage;
    private double price;

    public ShopCartDetail(int id, int productId, String productName, int numberOfProduct, double totalPrice, String urlImage, double price) {
        super(id, productId, numberOfProduct);
        this.productName = productName;
        this.totalPrice = totalPrice;
        this.urlImage = urlImage;
        this.price = price;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
