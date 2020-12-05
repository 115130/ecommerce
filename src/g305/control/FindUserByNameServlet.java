package g305.control;

import g305.service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FindUserByNameServlet")
public class FindUserByNameServlet extends javax.servlet.http.HttpServlet {
    UserService userService = new UserService();
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        name=new String(name.getBytes("iso-8859-1"),"utf-8");
        String re="";
        if(!(userService.getUser(name).size()==0)){
             re="ok";
        }else {
            re="error";
        }
        PrintWriter out= response.getWriter();//获取PrintWriter对象，便于向web写数据
        out.write(re);
        out.close();
    }
}
