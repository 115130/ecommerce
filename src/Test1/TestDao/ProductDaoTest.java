package Test1.TestDao;

import g305.dao.ProductDao;
import org.junit.jupiter.api.Test;


class ProductDaoTest {
    ProductDao productDao =new ProductDao();
    @Test
    void getAllProduct() {
        productDao.getAllProduct();
    }

    @Test
    void getNameProduct() {
        productDao.getNameProduct("橘子");
    }

    @Test
    void addProduct() {
        System.out.println(productDao.addProduct(1, "橘子",100,100.0,null,"绿的"));
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
    void updateImage() {
        productDao.updateImage("柠檬",null);
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