package g305.pojo;

public class User {
    private int id;
    private String UserName;
    private String UserPetName;
    private String UserPassword;
    private String Address;
    private double Balance;
    private int Admin;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", UserName='" + UserName + '\'' +
                ", UserPetName='" + UserPetName + '\'' +
                ", UserPassword='" + UserPassword + '\'' +
                ", Address='" + Address + '\'' +
                ", Balance=" + Balance +
                ", Admin=" + Admin +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getUserPetName() {
        return UserPetName;
    }

    public void setUserPetName(String userPetName) {
        UserPetName = userPetName;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String userPassword) {
        UserPassword = userPassword;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public double getBalance() {
        return Balance;
    }

    public void setBalance(double balance) {
        Balance = balance;
    }

    public int getAdmin() {
        return Admin;
    }

    public void setAdmin(int admin) {
        Admin = admin;
    }

    public User(int id, String userName, String userPetName, String userPassword, String address, double balance, int admin) {
        this.id = id;
        UserName = userName;
        UserPetName = userPetName;
        UserPassword = userPassword;
        Address = address;
        Balance = balance;
        Admin = admin;
    }

    public User() {
    }
}
