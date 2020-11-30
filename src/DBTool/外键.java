package DBTool;

import g305.dao.BaseDao;
import g305.dao.UserDao;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;

public class 外键 {
    BaseDao baseDao = new UserDao();
    @Test
    public void 解除外键(){
        baseDao.query("SET FOREIGN_KEY_CHECKS = 0");
    }
    @Test
    public void 加上外键(){
        baseDao.query("SET FOREIGN_KEY_CHECKS = 1");
    }
    @Test
    public void 截断表(String name){
        解除外键();
        try {
            baseDao.ps.execute("truncate table "+name);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        加上外键();
    }
}
