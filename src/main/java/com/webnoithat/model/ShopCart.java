package com.webnoithat.model;

public class ShopCart {
    private int id;
    private int productId;
    private int numberOfProduct;
    private double total;

    public ShopCart() {

    }

    public ShopCart(int id, int productId, int numberOfProduct) {
        this.id = id;
        this.productId = productId;
        this.numberOfProduct = numberOfProduct;
    }

    public ShopCart(int productId, int numberOfProduct) {
        this.productId = productId;
        this.numberOfProduct = numberOfProduct;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getNumberOfProduct() {
        return numberOfProduct;
    }

    public void setNumberOfProduct(int numberOfProduct) {
        this.numberOfProduct = numberOfProduct;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
