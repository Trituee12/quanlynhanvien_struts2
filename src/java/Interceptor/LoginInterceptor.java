/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class LoginInterceptor extends AbstractInterceptor{
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        Map<String, Object> session = invocation.getInvocationContext().getSession();

        String loginId = (String) session.get("loginID");

        if (loginId == null) {
            //Neu null session thi khong cho vao home.jsp
            return Action.LOGIN;
            
        } 
       
        else {
            //Neu co session thi cho vao home.jsp
            return invocation.invoke();
        }
    }

}
