package g305.service;

import g305.dao.UserDao;
import g305.pojo.User;

import java.util.List;

public class UserService {
    UserDao userDao = new UserDao();

    /**
     * 获取所有人的信息
     * @return 所有人的信息
     */
    public List<User> getAllUser(){
        return userDao.getAllUser();
    }

    /**
     * 获取已删除的人的信息
     * @return 已删除的人的信息
     */
    public List<User> getDeleteUser(){
        return userDao.getDeleteUser();
    }


}
