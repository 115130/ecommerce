package Test1.TestDao;

import DBTool.UserTool;
import DBTool.外键;
import g305.dao.UserDao;
import g305.pojo.User;
import org.junit.jupiter.api.Test;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import static org.junit.jupiter.api.Assertions.*;

class UserDaoTest {
    UserDao userDao = new UserDao();
    @org.junit.jupiter.api.Test
    void addUser() {
        userDao.addUser("sa"  ,"Test", UserTool.getSha("87dfx35m"));
    }
    @org.junit.jupiter.api.Test
    void getAllUser() {
        for (User user : userDao.getAllUser()) {
            System.out.println(user.toString());
        }
    }

    @org.junit.jupiter.api.Test
    void getUser() {
        System.out.println(userDao.getUser("撒aa"));
    }

    @Test
    public void addPwd() throws NoSuchAlgorithmException {
        System.out.println(UserTool.getSha("123456").toString());


    }


    @org.junit.jupiter.api.Test
    void deleteUser() {
        userDao.deleteUser("miao");
    }

    @org.junit.jupiter.api.Test
    void updateName() {
        userDao.updateName("miao","miao1");
    }

    @org.junit.jupiter.api.Test
    void updatePetName() {
        userDao.updatePetName("miao1","miao");
    }

    @org.junit.jupiter.api.Test
    void updatePassword() {
        userDao.updatePassword("miao","123");
    }

    @org.junit.jupiter.api.Test
    void updateAddress() {
        userDao.updateAddress("name","0000");
    }

    @org.junit.jupiter.api.Test
    void updateBalance() {
        userDao.updateBalance("name",100);
    }
    @org.junit.jupiter.api.Test
    void updateBalance1() {
        userDao.deleteUser("miao116");
    }
    @org.junit.jupiter.api.Test
    void updateBalance2() {
        userDao.recDeleteUser("miao116");
    }
    @org.junit.jupiter.api.Test
    void updateBalance3() {
        userDao.DELETE_USER();
    }
    @org.junit.jupiter.api.Test
    void updateBalance4() {
        外键 w = new 外键() ;
        w.截断表("user");
    }



}