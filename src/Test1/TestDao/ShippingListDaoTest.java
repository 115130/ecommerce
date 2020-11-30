package Test1.TestDao;

import DBTool.外键;
import g305.dao.ShippingListDao;
import g305.pojo.ShippingList;
import org.junit.jupiter.api.Test;
import java.sql.Date;


class ShippingListDaoTest {
    ShippingListDao s = new ShippingListDao();
    String oder=System.currentTimeMillis()+"1";

    @Test
    void getAllShippingList() {
        for (ShippingList list : s.getAllShippingList()) {
            System.out.println(list);
        }
    }

    @Test
    void getOneShippingList() {
        s.getOneShippingList("16067257580981");
    }

    @Test
    void getNameShippingList() {
        s.getNameShippingList("橘子");
    }
    @Test
    void getNameShippingLis() {
        外键 z= new 外键();
        z.截断表("Shipping_List");
    }

    @Test
    void addShippingList() {
        s.addShippingList(1,1,oder,"mioao",2.2,"00", new Date(System.currentTimeMillis()));
    }
    @Test
    void addShippingLis() {
        System.out.println(new java.util.Date().getTime());
    }

    @Test
    void deleteShippingList() {
        s.deleteShippingList("16067257580981");
    }

    @Test
    void updateAddressShippingList() {
        s.updateAddressShippingList("1","10","16067304907961");
    }

    @Test
    void updateOderShippingList() {
        s.updateOderShippingList("11","16067304907961");
    }
}