package g305.control;

import g305.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PipedWriter;
import java.io.PrintWriter;

@WebServlet("/ModifyProductServlet")
public class ModifyProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService productService =new ProductService();
        String productName=request.getParameter("productName");
        String afterProductName=request.getParameter("afterProductName");
        String productCount=(request.getParameter("productCount"));
        double productPrice=Double.parseDouble(request.getParameter("productPrice"));
        String productProperty =request.getParameter("productProperty");
        productService.updateCount(productName,Integer.parseInt(productCount));
        productService.updateName(productName,afterProductName);
        productService.updatePrice(productName,productPrice);
        productService.updateProperty(productName,productProperty);
//        PrintWriter pw = response.getWriter();
//        pw.print(123);
//        pw.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
