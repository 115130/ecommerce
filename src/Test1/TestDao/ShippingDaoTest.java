package Test1.TestDao;

import g305.dao.ShippingDao;
import org.junit.jupiter.api.Test;


class ShippingDaoTest {
    ShippingDao shippingDao =new ShippingDao();
    @Test
    void getAllShipping() {
        shippingDao.getAllShipping();
    }

    @Test
    void getArsShipping() {
        shippingDao.getArsShipping(1);
    }

    @Test
    void updateProperty() {
        shippingDao.updateProperty(1,1,"z");
    }

    @Test
    void testUpdateProductName() {
        shippingDao.updateProductName(1,1,13214567);
    }

    @Test
    void deleteShipping() {
        shippingDao.deleteShipping(1,1);
    }
}