package g305.control;

import DBTool.UserTool;
import g305.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ModifyUserServlet")
public class ModifyUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("userName");
        String password=request.getParameter("password");
        password=UserTool.getSha(password);
        userService.updatePassword(name,password);
        request.getRequestDispatcher("AdminUserServlet").forward(request,response);
    }
}
