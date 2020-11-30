package g305.dao;

import g305.pojo.Product;
import g305.pojo.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao extends BaseDao{
    @Override
    public List queryAll(String sql, Object... objects) throws SQLException {
        List<Product> list = new ArrayList<Product>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_count"), rs.getDouble("product_price"),rs.getBlob("product_prcture"),rs.getString("product_property")));
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public int generalUpdate(Object... objects) {
        return 0;
    }
}
