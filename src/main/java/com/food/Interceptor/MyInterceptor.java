package com.food.Interceptor;

import com.food.pojo.Account;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyInterceptor extends HandlerInterceptorAdapter {

    private static Logger logger = LoggerFactory.getLogger(MyInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {

        logger.info("进入前");
        /*
        String url= request.getRequestURI();
        System.out.println(url);
        String servletPath = request.getServletPath();
        System.out.println("url: "+servletPath);
        */

        String requestUri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String url = requestUri.substring(contextPath.length());
        System.out.println("requestUri= "+requestUri);
        System.out.println("contextPath= "+contextPath);
        System.out.println("url= "+url);

        if("account/login".equals(url) || "account/register".equals(url)){
            return true;
        }

        HttpSession session= request.getSession();
        Account account = (Account) session.getAttribute("account");
        System.out.println(account);

        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response,
                                Object handler,
                                @Nullable Exception ex)
            throws Exception {

    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);



    }

}
