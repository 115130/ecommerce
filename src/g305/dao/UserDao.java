package g305.dao;

import g305.pojo.User;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends BaseDao<User>{
    @Override
    public List<User> queryAll(String sql, Object... objects)  {
        List<User> list = new ArrayList<User>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new User(rs.getInt("id"), rs.getString("user_name"), rs.getString("user_pet_name"),
                        rs.getString("user_password"), rs.getString("address"), rs.getDouble("balance"), rs.getInt("admin"),rs.getString("phone")));
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    /**
     * 获取全部的用户
     * @return 全部用户
     */
    public List<User> getAllUser(){
        return queryAll("select * from user where deletes=0");

    }

    /**
     * 获取已删除用户
     * @return 已删除用户
     */
    public List<User> getDeleteUser(){
        return queryAll("select * from user and deletes=1");
    }
    /**
     * 删除用户
     * @return 删除用户的数量
     */
    public int DELETE_USER(){
        return update("delete from user where deletes=1");
    }

    /**
     * 获取指定的用户
     * @param name 用户名
     * @return 指定用户
     */
    public List<User> getUser(String name){
        return queryAll("SELECT * from `user` where user_name LIKE ? or user_name=? and deletes=0","%"+name+"%",name);
    }
    /**
     * 获取指定的用户
     * @param name 用户名
     * @return 指定用户
     */
    public int recDeleteUser(String name){
        return update("update user set deletes=0 where user_name=?",name);
    }

    /**
     * 删除指定的用户
     * @param name 用户名
     * @return 删除了多少用户
     */
    public int deleteUser(String name){
        return update("update user set deletes=1 where user_name=?",name);
    }

    /**
     * 更改用户名字
     * @param name 名字
     * @param afterName 修改的名字
     * @return 修改了多少用户
     */
    public int updateName(String name,String afterName){
        return update("update user set user_name=? where user_name=?",afterName,name);
    }
    /**
     * 更改用户昵称
     * @param name 名字
     * @param afterPetName 修改的昵称
     * @return 修改了多少用户
     */
    public int updatePetName(String name,String afterPetName){
        return update("update user set user_pet_name=? where user_name=?",afterPetName,name);
    }
    /**
     * 更改用户密码
     * @param name 名字
     * @param afterPassword 修改的密码
     * @return 修改了多少用户
     */
    public int updatePassword(String name,String afterPassword){
        return update("update user set user_password=? where user_name=?",afterPassword,name);
    }
    /**
     * 更改用户地址
     * @param name 名字
     * @param afterAddress 修改的地址
     * @return 修改了多少用户
     */
    public int updateAddress(String name,String afterAddress){
        return update("update user set address=? where user_name=?",afterAddress,name);
    }

    /**
     * 更新用户余额
     * @param name 名字
     * @param afterBalance 修改的余额
     * @return 修改了多少用户
     */
    public int updateBalance(String name,double afterBalance){
        return update("update user set balance=? where user_name=?",afterBalance,name);
    }
    /**
     * 更新用户电话
     * @param name 名字
     * @param afterPhone 修改的电话
     * @return 修改了多少用户
     */
    public int updatePhone(String name,String afterPhone){
        return update("update user set phone=? where user_name=?",afterPhone,name);
    }

    /**
     * 增加用户
     * @param name 名字
     * @param userPetName 昵称
     * @param userPassword 密码
     * @return 增加了多少用户
     */
    public int addUser(String name,String userPetName,String userPassword){
        return update("insert into user (user_name,user_pet_name,user_password,admin,balance,deletes,address,phone) values(?,?,?,0,0,0,'','')",name,userPetName,userPassword);
    }

    @Override
    public int generalUpdate(Object... objects) {
        return 0;
    }
}
