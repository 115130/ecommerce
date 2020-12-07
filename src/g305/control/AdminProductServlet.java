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

@WebServlet("/AdminProductServlet")
public class AdminProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService ProductService=new ProductService();
        List<Product> productList=ProductService.getAllProduct();
        request.setAttribute("list",productList);
        request.getRequestDispatcher("adminProduct.jsp").forward(request,response);
    }
}
