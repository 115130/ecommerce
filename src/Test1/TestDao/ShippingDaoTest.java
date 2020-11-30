package Test1.TestDao;

import g305.dao.ShippingDao;
import g305.pojo.Shipping;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ShippingDaoTest {
    ShippingDao shipping = new ShippingDao();
    @Test
    void getAllShipping() {
        for (Shipping shipping1 : shipping.getAllShipping()) {
            System.out.println(shipping1);
        }
    }

    @Test
    void getArsShipping() {
        for (Shipping shipping1 : shipping.getArsShipping(1)) {
            System.out.println(shipping1);
        }
    }

    @Test
    void updateProperty() {
        shipping.updateProperty(1,1,"灰");
    }

    @Test
    void addShipping() {
        shipping.addShipping(1,1,100,"旅");
    }

    @Test
    void updateProductName() {
        shipping.updateProductCount(1,1,1000);
    }

    @Test
    void deleteShipping() {
        shipping.deleteShipping(1,1);
    }
}