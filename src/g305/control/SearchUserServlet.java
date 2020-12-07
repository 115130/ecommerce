package g305.control;

import g305.pojo.Product;
import g305.pojo.User;
import g305.service.ProductService;
import g305.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchUserServlet")
public class SearchUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService userService=new ProductService();
        request.setCharacterEncoding("utf-8");
        String search=request.getParameter("search");
        List<Product> listUser=userService.getNameProduct(search);
        request.setAttribute("list",listUser);
         request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
