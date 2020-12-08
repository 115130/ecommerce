package g305.filter;

import g305.pojo.User;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("")

public class Filter implements javax.servlet.Filter {

    public void destroy() {

    }

    public void doFilter(javax.servlet.ServletRequest req1, javax.servlet.ServletResponse resp2, javax.servlet.FilterChain chain) throws javax.servlet.ServletException, IOException {

        HttpServletRequest req = (HttpServletRequest)req1;
        HttpServletResponse resp =(HttpServletResponse) resp2;
        HttpSession session = req.getSession();
        // 获得用户请求的URI
        String path = req.getRequestURI();
        // 从session取得已经登录验证的凭证 这里用的password
        User user = (User) session.getAttribute("user");
        //登录，注册页面无需过滤 也可以使用path.contains("login.jsp")
        if((path.indexOf("/register.jsp") > -1||path.indexOf("/login.jsp") > -1||path.indexOf("/FindUserByNameServlet")>-1||path.indexOf("/LoginServlet") > -1||path.indexOf("/RegisterServlet") > -1)||"/ecommerce/".equals(path)) {//注意：登录注册页面千万不能过滤
            chain.doFilter(req, resp);
            return ;
        }else if(path.contains(".css") || path.contains(".js") || path.contains("images")){ //防止css,js,images被过滤 也可以用path.endWith(".js")
            chain.doFilter(req, resp);
        }
        else {//其他情况进行过滤
            if (user == null ) {
                // 跳转到登陆页面
                resp.sendRedirect("login.jsp");
            } else {
                // 已经登陆,继续此次请求
                chain.doFilter(req, resp);
            }
        }

    }

    public void init(javax.servlet.FilterConfig config) throws javax.servlet.ServletException {

    }

}
