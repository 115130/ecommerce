package g305.control;

import DBTool.UserTool;
import g305.pojo.Shipping;
import g305.pojo.User;
import g305.service.ShippingService;
import g305.service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/AddCartServlet")
public class AddCartServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ShippingService shippingService = new ShippingService();
        User user=(User)request.getSession().getAttribute("user");
        shippingService.addShipping(user.getId(),)
    }
}
