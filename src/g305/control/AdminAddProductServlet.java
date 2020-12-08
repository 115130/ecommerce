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
import java.util.HashMap;
import java.util.List;

@WebServlet("/AdminAddProductServlet")
public class AdminAddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        DiskFileItemFactory factory=new DiskFileItemFactory();//创建DiskFileItemFactory工厂类
        ServletFileUpload upload=new ServletFileUpload(factory);//创建解析类，用于解析resquest
//        upload.setHeaderEncoding("utf-8");
        List<FileItem> list=null;
        String productName=null/*request.getParameter("productName")*/;
        String productCount=null/*(request.getParameter("productCount"))*/;
        double productPrice=0/*Double.parseDouble(request.getParameter("productPrice"))*/;
        String productProduct =null/*request.getParameter("productProperty")*/;
        HashMap<String,Object> map =new HashMap<>();
        InputStream ism=null;
        try {
             list = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        ProductService productService =new ProductService();
        for(FileItem item:list) {
            System.out.println(item.getString());
            if(item.isFormField()) {//判断是否是普通的表单内容
                map.put(item.getFieldName(),item.getString("utf-8"));

            }else {//为假，说明是上传项
                //获取流，进行处理
                 ism = item.getInputStream();
            }
        }
        productName=map.get("productName").toString();
        productCount=map.get("productCount").toString();
        productPrice=Double.parseDouble(map.get("productPrice").toString());
        productProduct=map.get("productProduct").toString();


        productService.addProduct(productName,Integer.parseInt(productCount),productPrice,ism,productProduct);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
