package g305.control;

import g305.service.ProductService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.List;

@WebServlet("/AdminAddProductServlet")
public class AdminAddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        DiskFileItemFactory factory=new DiskFileItemFactory();//创建DiskFileItemFactory工厂类
        ServletFileUpload upload=new ServletFileUpload(factory);//创建解析类，用于解析resquest
        List<FileItem> list=null;String productName=request.getParameter("productName");
        String productCount=null/*(request.getParameter("productCount"))*/;
        double productPrice=0/*Double.parseDouble(request.getParameter("productPrice"))*/;
        String productProperty =null/*request.getParameter("productProperty")*/;

        try {
             list = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        ProductService productService =new ProductService();
        for(FileItem item:list) {

            if(item.isFormField()) {//判断是否是普通的表单内容
                System.out.println(item.getFieldName());//获取的是表单中name属性的值
                System.out.println("itemprice"+item.getName());//获取的是对应的表单的值
            }else {//为假，说明是上传项
                //获取流，进行处理
                InputStream ism = item.getInputStream();
            }
        }



//        productService.addProduct(productName,Integer.parseInt(productCount),productPrice,null,productProperty);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
