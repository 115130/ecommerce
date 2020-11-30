package g305.pojo;

import java.sql.Date;

public class ShippingList {
    private int productId;
    private int userId;
    private String oder;
    private String address;
    private double money;
    private String status;
    private Date completeDate;

    @Override
    public String toString() {
        return "ShippingList{" +
                "productId=" + productId +
                ", userId=" + userId +
                ", oder='" + oder + '\'' +
                ", address='" + address + '\'' +
                ", money=" + money +
                ", status='" + status + '\'' +
                ", completeDate=" + completeDate +
                '}';
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getOder() {
        return oder;
    }

    public void setOder(String oder) {
        this.oder = oder;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCompleteDate() {
        return completeDate;
    }

    public void setCompleteDate(Date completeDate) {
        this.completeDate = completeDate;
    }

    public ShippingList(int productId, int userId, String oder, String address, double money, String status, Date completeDate) {
        this.productId = productId;
        this.userId = userId;
        this.oder = oder;
        this.address = address;
        this.money = money;
        this.status = status;
        this.completeDate = completeDate;
    }

    public ShippingList() {
    }
}