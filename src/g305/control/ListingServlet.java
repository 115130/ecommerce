package g305.control;


import g305.pojo.Product;
import g305.pojo.Shipping;
import g305.pojo.User;
import g305.service.ProductService;
import g305.service.ShippingService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ListingServlet")
public class ListingServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ShippingService shippingService =new ShippingService();
        ProductService productService =new ProductService();
        request.setCharacterEncoding("utf-8");
        User user=(User) request.getSession().getAttribute("user");
        List<Shipping> list1=shippingService.getArsShipping(user.getId());
        List<Product> list = new ArrayList<>();
        for (Shipping shipping : list1) {
            list.add(productService.getIdProduct(shipping.getProductId()));
        }
        request.setAttribute("list",list);
        request.getRequestDispatcher("details.jsp").forward(request,response);
    }
}
