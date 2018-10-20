/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.UserDao;

import entity.User;

import java.util.Map;
import org.springframework.ui.ModelMap;

/**
 *
 * @author tritue12
 */
public class LoginAction extends ActionSupport{
    private String username;
    private String password;
    private String name;
    
private User list;
 private Map<String, Object> session = ActionContext.getContext().getSession();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public User getList() {
        return list;
    }

    public void setList(User list) {
        this.list = list;
    }

    


 
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public LoginAction() {
    }
    
    @Override
    public String execute() throws Exception {
        
        UserDao udao = new UserDao();
       ModelMap mm = new ModelMap();
        if(udao.checklogin(username, password) != null){
           session.put("loginID", username);
        return SUCCESS;
        }
        else{
            addActionError("Sai tài khoản và mật khẩu!");
            return INPUT;
        }
    }
    
    public String logOut() throws Exception {
        session.remove("loginID");
        addActionMessage("You have been Successfully Logged Out");
        return SUCCESS;
    }
}
