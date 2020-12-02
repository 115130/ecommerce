package g305.pojo;

public class User {
    private int id;
    private String userName;
    private String userPetName;
    private String userPassword;
    private String address;
    private double balance;
    private int admin;
    private String phone;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", userPetName='" + userPetName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", address='" + address + '\'' +
                ", balance=" + balance +
                ", admin=" + admin +
                ", phone='" + phone + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPetName() {
        return userPetName;
    }

    public void setUserPetName(String userPetName) {
        this.userPetName = userPetName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public User(int id, String userName, String userPetName, String userPassword, String address, double balance, int admin, String phone) {
        this.id = id;
        this.userName = userName;
        this.userPetName = userPetName;
        this.userPassword = userPassword;
        this.address = address;
        this.balance = balance;
        this.admin = admin;
        this.phone = phone;
    }

    public User() {
    }
}
