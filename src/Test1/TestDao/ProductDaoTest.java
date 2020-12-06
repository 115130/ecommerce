package Test1.TestDao;

import DBTool.外键;
import g305.dao.ProductDao;
import g305.pojo.Product;
import org.junit.jupiter.api.Test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Blob;


class ProductDaoTest {
    ProductDao productDao =new ProductDao();
    @Test
    void getAllProduct() {
        for (Product product : productDao.getAllProduct()) {
            System.out.println(product.toString());
        }
    }

    @Test
    void getNameProduct() {
        System.out.println(productDao.getNameProduct("橘子"));
    }
    @Test
    void getNameProduc() {
        外键 n =new 外键();
        n.截断表("product");
    }

    @Test
    void addProduct() throws FileNotFoundException {
        System.out.println(productDao.addProduct( "橘子",100,100.0,  new FileInputStream("C:\\Users\\miao\\OneDrive\\桌面\\Snipaste_2020-12-04_15-41-47.jpg"),"绿的"));
    }

    @Test
    void deleteProduct() {
        productDao.deleteProduct(1);
    }

    @Test
    void updateName() {
        productDao.updateName("橘子","柠檬");
    }

    @Test
    void updatePrice() {
        productDao.updatePrice("柠檬",1000.0);
    }

    @Test
    void updateImage() throws FileNotFoundException {
        productDao.updateImage("柠檬",new FileInputStream("C:\\Users\\miao\\OneDrive\\桌面\\Snipaste_2020-11-30_14-50-30.jpg"));
    }

    @Test
    void updateProperty() {
        productDao.updateProperty("柠檬","紫");
    }

    @Test
    void UpdateCount() {
        productDao.updateCount("柠檬",1000);
    }
}