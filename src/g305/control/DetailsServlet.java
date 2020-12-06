package g305.control;

import DBTool.UserTool;
import g305.pojo.Product;
import g305.service.ProductService;
import g305.service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/DetailsServlet")
public class DetailsServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ProductService product =new ProductService();
        request.setCharacterEncoding("utf-8");
        String productName=request.getParameter("productName");

        Product product1=null;
        if(product.getNameProduct(productName).size()!=0){

            request.setAttribute("list",product.getNameProduct(productName));
        }

        request.getRequestDispatcher("details.jsp").forward(request,response);
    }
}
