/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.phongbanDao;
import entity.Phongban;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Administrator
 */
public class UpdatePBAction  extends ActionSupport{
    private String maphong;
    private String tenphong;
    private Phongban pb;
    
    public String getMaphong() {
        return maphong;
    }

    public Phongban getPb() {
        return pb;
    }

    public void setPb(Phongban pb) {
        this.pb = pb;
    }

    public void setMaphong(String maphong) {
        this.maphong = maphong;
    }

    public String getTenphong() {
        return tenphong;
    }

    public void setTenphong(String tenphong) {
        this.tenphong = tenphong;
    }
    public UpdatePBAction() {
    }
    
    @Override
    public String execute() throws Exception {
        phongbanDao pbdao = new phongbanDao();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
    pb = pbdao.findBymaphong(request.getParameter("maphong"));
        return SUCCESS;
    }
    public String updatePB() throws Exception{
    phongbanDao pbdao = new phongbanDao();
    
    pbdao.editpb(new Phongban(maphong, tenphong));
    return SUCCESS;
    }
}
