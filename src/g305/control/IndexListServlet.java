package g305.control;

import g305.pojo.Product;
import g305.service.ProductService;

import javax.servlet.annotation.WebServlet;
import java.io.FileOutputStream;
import java.io.IOException;


@WebServlet("/index")
public class IndexListServlet extends javax.servlet.http.HttpServlet {
    ProductService productList = new ProductService();
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setAttribute("list",productList.getAllProduct());
        request.setCharacterEncoding("utf-8");
        for (Product product : productList.getAllProduct()) {
            FileOutputStream stream =new FileOutputStream("D:\\code\\Java\\ecommerce\\web\\images\\"+product.getProductName()+".png");
            byte a[]= new byte[1024];
            while (product.getProductPicture().read(a)!=-1){
                stream.write(a);
            }
            stream.close();
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
