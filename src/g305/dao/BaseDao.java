package g305.dao;

import java.sql.*;
import java.util.List;

public abstract class BaseDao<T> {
    private String root="root";
    private String password="123456";
    public Connection conn=null;
    public ResultSet rs=null;
    public  PreparedStatement ps=null;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public BaseDao(){
        try {
            conn= DriverManager.getConnection("jdbc:mysql://localhost/ecommerce?useSSL=false&serverTimezone=UTC",root,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public ResultSet query(String sql,Object... objects){

        try {
             ps= conn.prepareStatement(sql);
            for (int i = 1; i <= objects.length; i++) {
                ps.setObject(i,objects[i-1]);
            }
            rs=ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
    public int update(String sql,Object... objects){

        PreparedStatement ps=null;
        int re=-1;
        try {
             ps = conn.prepareStatement(sql);
            for (int i = 1; i <= objects.length; i++) {
                ps.setObject(i,objects[i-1]);
            }
            re=ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return re;
    }
    public abstract List<T> queryAll(String sql,Object... objects) throws SQLException;
    public abstract int generalUpdate(Object... objects);

    public void close() {

        if(rs!=null) {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }

}
