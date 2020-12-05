package g305.control;

import g305.service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        UserService userService =new UserService();
            request.setCharacterEncoding("utf-8");
            String user=request.getParameter("user");
            String Password=request.getParameter("password");
            userService.addUser(user,"user",Password);
            response.sendRedirect("index.jsp");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
