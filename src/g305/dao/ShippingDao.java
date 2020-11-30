package g305.dao;

import g305.pojo.Shipping;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShippingDao extends BaseDao<Shipping>{
    @Override
    public List<Shipping>  queryAll(String sql, Object... objects) {
        List<Shipping> list = new ArrayList<Shipping>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new Shipping(rs.getInt("user_id"),rs.getInt("product_id"),rs.getInt("product_count"), rs.getString("product_property")));
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    /**
     * 获取全部的购物车
     * @return 全部购物车
     */
    public List<Shipping> getAllShipping(){
        return queryAll("select * from Shipping");
    }
    /**
     * 使用用户id查全部
     * @return 用户id
     */
    public List<Shipping> getArsShipping(int id){
        return queryAll("select * from Shipping where user_id=?",id);
    }
    /**
     * 更改商品属性
     * @param userId 用户id
     * @param productId 商品id
     * @param afterProperty 修改的属性
     * @return 修改了多少购物车
     */
    public int updateProperty(int userId,int productId,String afterProperty){
        return update("update shipping set  product_Property=? where user_id=? and product_Id=?",afterProperty,userId,productId);
    }

    /**
     * 增加商品
     * @param userId 用户id
     * @param productId 商品id
     * @param productCount 商品数量
     * @param productProperty 商品属性
     * @return 增加了多少购物车
     */
    public int addShipping(int userId,int productId,int productCount,String productProperty){
        return update("insert into Shipping (user_id,product_id,product_Count,product_Property) values(?,?,?,?)",userId,productId,productCount,productProperty);
    }
    /**
     * 更改商品属性
     * @param userId 用户id
     * @param productId 商品id
     * @param afterCount 修改的数量
     * @return 修改了多少购物车
     */
    public int updateProductCount(int userId,int productId,int afterCount){
        return update("update shipping set  product_count=? where user_id=? and product_Id=?",afterCount,userId,productId);
    }
    /**
     * 删除购物车
     * @param userId 用户id
     * @param productId 商品id
     * @return 删除购物车的数量
     */
    public int deleteShipping(int userId,int productId){
        return update("delete from Shipping where user_id=? and product_Id=?",userId,productId);
    }


    @Override
    public int generalUpdate(Object... objects) {
        return 0;
    }
}
