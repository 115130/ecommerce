package g305.control;

import g305.pojo.Product;
import g305.pojo.Shipping;
import g305.pojo.User;
import g305.service.ProductService;
import g305.service.ShippingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("countVal",request.getParameter("count"));
        request.getRequestDispatcher("details.jsp").forward(request,response);
    }
}
