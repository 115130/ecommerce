package g305.service;

import g305.dao.ProductDao;
import g305.pojo.Product;

import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

public class ProductService {
    ProductDao productDao = new ProductDao();
    /**
     *查询所有的商品
     * @return 全部商品
     */
    public List<Product> getAllProduct(){
        return productDao.getAllProduct();
    }

    /**
     *模糊查询和完整名字查询商品
     * @param productName 商品名
     * @return 指定名字商品
     */
    public List<Product> getNameProduct(String productName){
        return productDao.getNameProduct(productName);
    }

    /**
     *增加商品
     * @param productName 商品名
     * @param productCount 商品数量
     * @param productPicture 商品照片
     * @param productProperty 商品属性
     * @return 增加的数量
     */
    public int addProduct(String productName, int productCount, double productPrice, InputStream productPicture, String productProperty){
        return productDao.addProduct(productName,productCount,productPrice,productPicture,productProperty);
    }

    /**
     *删除商品
     * @param productId 商品id
     * @return 删除的数量
     */
    public int deleteProduct(int productId){
        return productDao.deleteProduct(productId);
    }

    /**
     *据商品名改变商品数量
     * @param productName 商品名
     * @param afterCount 更改商品数量
     * @return 更改的数量
     */
    public int updateCount(String productName,int afterCount){
        return productDao.updateCount(productName,afterCount);
    }

    /**
     *根据商品名改变商品价格
     * @param productName 商品名
     * @param afterPrice 更改商品价格
     * @return 更改的数量
     */
    public int updatePrice(String productName,double afterPrice){
        return productDao.updatePrice(productName,afterPrice);
    }

    /**
     *根据商品名改变商品图片
     * @param productName 商品名
     * @param afterImage 更改商品照片
     * @return 更改的数量
     */
    public int updateImage(String productName, InputStream afterImage){
        return productDao.updateImage(productName,afterImage);
    }

    /**
     *根据商品名改变商品属性
     * @param productName 商品名
     * @param afterProperty 更改商品属性
     * @return 更改的数量
     */
    public int updateProperty(String productName,String afterProperty){
        return productDao.updateProperty(productName,afterProperty);
    }

    public Product getIdProduct(int productId){
        return productDao.getIdProduct(productId).get(0);
    }

    /**
     *根据商品名改变商品名字
     * @param productName 商品名
     * @param afterName 更改商品名字
     * @return 更改的数量
     */
    public int updateName(String productName,String afterName){
        return productDao.updateName(productName,afterName);
    }

}
