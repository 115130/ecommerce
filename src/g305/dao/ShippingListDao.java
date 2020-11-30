package g305.dao;

import g305.pojo.Shipping;
import g305.pojo.ShippingList;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShippingListDao extends BaseDao{
    @Override
    public List queryAll(String sql, Object... objects) throws SQLException {
        List<ShippingList> list = new ArrayList<ShippingList>();
        ResultSet rs=query(sql,objects);
        try {
            while (rs.next()) {
                list.add(new ShippingList(rs.getInt("product_id"),rs.getInt("user_id"),rs.getString( "oder"),
                        rs.getString("address"),rs.getDouble("money"),rs.getInt("status"),rs.getDate("complete_date")));
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
