package g305.control;


import g305.pojo.Product;
import g305.pojo.User;
import g305.service.ProductService;
import g305.service.ShippingService;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddCartServlet")
public class AddCartServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ShippingService shippingService = new ShippingService();
        ProductService productService = new ProductService();
        request.setCharacterEncoding("utf-8");
        PrintWriter out= response.getWriter();
         Product product;
         String re="error";
        User user=(User)request.getSession().getAttribute("user");
        String productCount=request.getParameter("productCount");
        String productName=request.getParameter("productName");
        if(productService.getNameProduct(productName).size()!=0){
            product = productService.getNameProduct(productName).get(0);
            re="ok";
            shippingService.addShipping(user.getId(),product.getProductId(),Integer.getInteger(productCount),product.getProductProperty());
        }
        out.write(re);
        out.close();
    }
}
