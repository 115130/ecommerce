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
    /**
     * 删除用户
     * @return 删除用户的数量
     */
    public int DELETE_USER(){
        return userDao.DELETE_USER();
    }

    /**
     * 名字查询用户
     * @param name 用户名
     * @return 返回指定的用户
     */
    public List<User> getUser(String name){
        return userDao.getUser(name);
    }

    /**
     * 恢复指定删除的用户
     * @param name 用户名
     * @return 恢复的用户数量
     */
    public int recDeleteUser(String name){
        return userDao.recDeleteUser(name);
    }

    /**
     * 删除用户
     * @param name 用户名
     * @return 返回删除的数量
     */
    public int deleteUser(String name){
        return userDao.deleteUser(name);
    }

    /**
     * 改名字
     * @param name 名字
     * @param afterName 更改之后的名字
     * @return 修改了多少名字
     */
    public int updateName(String name,String afterName){
        return userDao.updateName(name,afterName);
    }
    /**
     * 是否有对应的用户名
     * @param name 名字
     * @return 是否有
     */
    public boolean exist(String name){
        return userDao.getUser(name).get(0).getUserName().equals(name);
    }
    /**
     * 改昵称
     * @param name 名字
     * @param afterPetName 更改之后的名字
     * @return 更改了多少行
     */
    public int updatePetName(String name,String afterPetName){
        return userDao.updatePetName(name,afterPetName);
    }

    /**
     * 改密码
     * @param name 名字
     * @param afterPassword 更改之后的密码
     * @return 更改了多少行
     */
    public int updatePassword(String name,String afterPassword){
        return userDao.updatePassword(name,afterPassword);
    }

    /**
     * 改地址
     * @param name 名字
     * @param afterAddress 更改之后的地址
     * @return 更改了多少行
     */
    public int updateAddress(String name,String afterAddress){
        return userDao.updateAddress(name,afterAddress);
    }

    /**
     * 改余额
     * @param name 名字
     * @param afterBalance 更改之后的余额
     * @return 更改了多少行
     */
    public int updateBalance(String name,double afterBalance){
        return userDao.updateBalance(name,afterBalance);
    }

    /**
     * 添加用户
     * @param name 名字
     * @param userPetName 昵称
     * @param userPassword 密码
     * @return 添加了多少行
     */
    public int addUser(String name,String userPetName,String userPassword){
        return userDao.addUser(name,userPetName,userPassword);
    }
    /**
     * 改电话
     * @param name 名字
     * @param afterPhone 更改之后的电话
     * @return 更改了多少行
     */
    public int updatePhone(String name,String afterPhone){
        return userDao.updatePhone(name,afterPhone);
    }

}
