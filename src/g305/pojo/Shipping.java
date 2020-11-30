package g305.pojo;

public class Shipping {
    private int UserId;
    private int ProductId;
    private int ProductCount;
    private String ProductProperty;

    @Override
    public String toString() {
        return "Shipping{" +
                "UserId=" + UserId +
                ", ProductId=" + ProductId +
                ", ProductCount=" + ProductCount +
                ", ProductProperty='" + ProductProperty + '\'' +
                '}';
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public int getProductCount() {
        return ProductCount;
    }

    public void setProductCount(int productCount) {
        ProductCount = productCount;
    }

    public String getProductProperty() {
        return ProductProperty;
    }

    public void setProductProperty(String productProperty) {
        ProductProperty = productProperty;
    }

    public Shipping(int userId, int productId, int productCount, String productProperty) {
        UserId = userId;
        ProductId = productId;
        ProductCount = productCount;
        ProductProperty = productProperty;
    }

    public Shipping() {
    }
}
