package g305.service;

import g305.dao.ShippingListDao;
import g305.pojo.ShippingList;

import java.sql.Date;
import java.util.List;

public class ShippingListService {
    ShippingListDao shippingListDao=new ShippingListDao();

    /**
     * 查询所有的订单
     * @return 所有订单
     */
    public List<ShippingList> getAllShippingList(){
        return shippingListDao.getAllShippingList();
    }

    /**
     *按订单号查询订单
     * @param oder 订单号
     * @return 订单号指定订单
     */
    public ShippingList getOneShippingList(String oder){
        return shippingListDao.getOneShippingList(oder);
    }

    /**
     *使用商品名模糊或者完整的名字查询订单
     * @param productName 商品名
     * @return 名字商品名
     */
    public List<ShippingList> getNameShippingList(String productName){
        return shippingListDao.getNameShippingList(productName);
    }

    /**
     *添加订单
     * @param productId 商品id
     * @param userId 用户id
     * @param oder 订单号
     * @param Address 地址
     * @param money 总额
     * @param status 订单状态
     * @param complete_date 完成日期
     * @return 返回订单增加数量
     */
    public int addShippingList(int productId, int userId, String oder, String Address, double money, String status, Date complete_date){
        return shippingListDao.addShippingList(productId, userId, oder, Address, money, status, complete_date);
    }

    /**
     *删除订单
     * @param oder 订单号
     * @return 删除订单数量
     */
    public int deleteShippingList(String oder){
        return shippingListDao.deleteShippingList(oder);
    }

    /**
     *更改地址
     * @param Address 地址
     * @param status 订单状态
     * @param oder 订单号
     * @return 返回更改了多少地址
     */
    public int updateAddressShippingList(String Address,String status,String oder){
        return shippingListDao.updateAddressShippingList(Address, status, oder);
    }

    /**
     *更改完成状态
     * @param status 订单状态
     * @param oder 订单号
     * @return 返回更改多少
     */
    public int updateOderShippingList(String status,String oder){
        return shippingListDao.updateOderShippingList(status, oder);

    }

}
