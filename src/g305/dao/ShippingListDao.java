package g305.dao;

import g305.pojo.ShippingList;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShippingListDao extends BaseDao<ShippingList>{
    @Override
    public List<ShippingList> queryAll(String sql, Object... objects)  {
        List<ShippingList> list = new ArrayList<ShippingList>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new ShippingList(rs.getInt("product_id"),rs.getInt("user_id"),rs.getString( "oder"),
                        rs.getString("address"),rs.getDouble("money"),rs.getString("status"),rs.getDate("complete_date")));
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    /**
     * 查询所有的订单
     * @return 所有的订单
     */
    public List<ShippingList> getAllShippingList(){
        return queryAll("select * from Shipping_list order by complete_date");
    }

    /**
     * 按订单号查询订单
     * @param oder 订单号
     * @return 订单
     */
    public ShippingList getOneShippingList(String oder){
        return queryAll("select * from Shipping_list where oder=? order by complete_date ",oder).get(0);
    }
    /**
     * 使用商品名模糊或者完整的名字查询订单
     * @param productName 商品名称
     * @return 所有的订单
     */
    public List<ShippingList> getNameShippingList(String productName){
        return queryAll("SELECT Shipping_list.product_id,Shipping_list.user_id,oder,address,money,status,complete_date FROM product,shipping_list WHERE  shipping_list.product_id = product.product_id AND product.product_name like ? or product_name = ?","%"+productName+"%",productName);
    }

    /**
     * 添加订单
     * @param productId 商品id
     * @param userId 用户id
     * @param oder 订单号
     * @param Address 地址
     * @param money 金额
     * @param status 完成状态
     * @param complete_date 订单日期
     * @return 添加了多少订单
     */
    public int addShippingList(int productId, int userId, String oder, String Address, double money, String status, Date complete_date){
        return update("insert into shipping_list (product_id,user_id,oder,Address,money,status,complete_date) values(?,?,?,?,?,?,?)",productId,userId,oder,Address,money,status,complete_date);
    }

    /**
     * 删除订单
     * @param oder 订单号
     * @return 删除的订单数量
     */
    public int deleteShippingList(String oder){
        return update("delete from shipping_list where oder=?",oder);
    }
    /**
     * 更改地址
     * @param Address 地址
     * @param status 完成状态
     * @param oder 订单号
     * @return 更改了多少行地址
     */
    public int updateAddressShippingList(String Address,String status,String oder){
        return update("update shipping_list set Address=?, status=? where oder=?",Address,status,oder);
    }
    /**
     * 更改完成状态
     * @param status 完成状态
     * @param oder 订单号
     * @return 更改了多少行地址
     */
    public int updateOderShippingList(String status,String oder){
        return update("update shipping_list set  status=? where oder=?",status,oder);
    }
    @Override
    public int generalUpdate(Object... objects) {
        return 0;
    }
}
