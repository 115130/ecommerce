package g305.service;

import g305.dao.ShippingDao;
import g305.pojo.Shipping;

import java.util.List;

public class ShippingService {
    ShippingDao shippingDao = new ShippingDao();

    /**
     *获取全部的购物车
     * @return 全部的购物车
     */
    public List<Shipping> getAllShipping(){
        return shippingDao.getAllShipping();
    }

    /**
     *使用用户id查全部
     * @param id 用户id
     * @return 用户id的购物车
     */
    public List<Shipping> getArsShipping(int id){
        return shippingDao.getArsShipping(id);
    }

    /**
     *更改商品属性
     * @param userId 用户id
     * @param productId 商品id
     * @param afterProperty 商品属性
     * @return 更改的数量
     */
    public int updateProperty(int userId,int productId,String afterProperty){
        return shippingDao.updateProperty(userId,productId,afterProperty);
    }

    /**
     *增加商品
     * @param userId 用户id
     * @param productId 商品id
     * @param productCount 商品数量
     * @param productProperty 商品属性
     * @return 更改的数量
     */
    public int addShipping(int userId,int productId,int productCount,String productProperty){
        return shippingDao.addShipping(userId,productId,productCount,productProperty);
    }

    /**
     *更改商品属性
     * @param userId 用户id
     * @param productId 商品id
     * @param afterCount 商品数量
     * @return 更改的数量
     */
    public int updateProductCount(int userId,int productId,int afterCount){
        return shippingDao.updateProductCount(userId,productId,afterCount);
    }

    /**
     *删除购物车
     * @param userId 用户id
     * @param productId  商品id
     * @return 返回删除的数量
     */
    public int deleteShipping(int userId,int productId){
        return shippingDao.deleteShipping(userId,productId);
    }

}
