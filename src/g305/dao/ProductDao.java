package g305.dao;

import g305.pojo.Product;


import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao extends BaseDao<Product>{
    @Override
    public List<Product> queryAll(String sql, Object... objects) {
        List<Product> list = new ArrayList<Product>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_count"), rs.getDouble("product_price"),rs.getBlob("product_picture").getBinaryStream(),rs.getString("product_property")));
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
    /**
     * 查询所有的商品
     * @return 所有的商品
     */
    public List<Product> getAllProduct(){
        return queryAll("SELECT * from Product");
    }

    /**
     * 模糊查询和完整名字查询商品
     * @param productName 商品名称
     * @return 返回查询到的商品
     */
    public List<Product> getNameProduct(String productName){
        return queryAll("SELECT * from Product where Product_name LIKE ? or Product_name=?","%"+productName+"%",productName);
    }
    public List<Product> getIdProduct(int productId){
        return queryAll("SELECT * from Product where Product_Id=?",productId);
    }
    /**
     * 增加商品
     * @param productName 商品名称
     * @param productCount 商品总数
     * @param productPrice 商品价格
     * @param productPicture 商品图片
     * @param productProperty 商品属性
     * @return 返回查询到的商品
     */
    public int addProduct(String productName, int productCount, double productPrice, InputStream productPicture, String productProperty){
        return update("insert Product (Product_name,Product_count,Product_price,Product_picture,Product_Property)" +
                " values(?,?,?,?,?)",productName,productCount,productPrice,productPicture,productProperty);
    }
    /**
     * 删除商品
     * @param productId 商品id
     * @return 返回删除行数
     */
    public int deleteProduct(int productId){
        return update("delete from Product where Product_id=?",productId);
    }

    /**
     * 根据商品名改变商品数量
     * @param productName 商品名
     * @param afterCount 商品数量
     * @return 更改商品的行数
     */
    public int updateCount(String productName,int afterCount){
       return update("update Product set Product_count=? where Product_name=?",afterCount,productName);
    }
    /**
     * 根据商品名改变商品价格
     * @param productName 商品名
     * @param afterPrice 商品价格
     * @return 更改商品的行数
     */
    public int updatePrice(String productName,double afterPrice){
       return update("update Product set Product_Price=? where Product_name=?",afterPrice,productName);
    }
    /**
     * 根据商品名改变商品图片
     * @param productName 商品名
     * @param afterImage 商品图片
     * @return 更改商品的行数
     */
    public int updateImage(String productName,InputStream afterImage){
       return update("update Product set product_Picture=? where Product_name=?",afterImage,productName);
    }
    /**
     * 根据商品名改变商品属性
     * @param productName 商品名
     * @param afterProperty 商品属性
     * @return 更改商品的行数
     */
    public int updateProperty(String productName,String afterProperty){
       return update("update Product set product_Property=? where Product_name=?",afterProperty,productName);
    }
    /**
     * 根据商品名改变商品名字
     * @param productName 商品名
     * @param afterName 商品名
     * @return 更改商品的行数
     */
    public int updateName(String productName,String afterName){
        return update("update Product set Product_name=? where Product_name=?",afterName,productName);
    }
    @Override
    public int generalUpdate(Object... objects) {
        return 0;
    }
}
