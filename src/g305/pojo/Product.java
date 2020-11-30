package g305.pojo;

import java.sql.Blob;

public class Product {
    private int productId;
    private String productName;
    private int productCount ;
    private double productPrice;
    private Blob productPicture;
    private String productProperty;

    public Product(int productId, String productName, int productCount, double productPrice, Blob productPicture, String productProperty) {
        this.productId = productId;
        this.productName = productName;
        this.productCount = productCount;
        this.productPrice = productPrice;
        this.productPicture = productPicture;
        this.productProperty = productProperty;
    }

    public Product() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductCount() {
        return productCount;
    }

    public void setProductCount(int productCount) {
        this.productCount = productCount;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public Blob getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(Blob productPicture) {
        this.productPicture = productPicture;
    }

    public String getProductProperty() {
        return productProperty;
    }

    public void setProductProperty(String productProperty) {
        this.productProperty = productProperty;
    }
}
