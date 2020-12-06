package g305.control;

import DBTool.UserTool;
import g305.pojo.User;
import g305.service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends javax.servlet.http.HttpServlet {
    UserService userService = new UserService();
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String user=request.getParameter("name");
        String password=request.getParameter("password");
        password=UserTool.getSha(password);
        List<User> list=userService.getUser(user);
        User user1;
        if(list.size()!=0){
            user1=list.get(0);
            if(user.equals(user1.getUserName())&&password.equals(user1.getUserPassword())){
                request.getSession().setAttribute("userName",user1);
               if (user1.getAdmin()==1){
                   response.sendRedirect("admin.jsp");
               }else {
                   response.sendRedirect("index");
               }
            }else {
                response.sendRedirect("login.jsp");
            }
        }else {
            response.sendRedirect("login.jsp");
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
