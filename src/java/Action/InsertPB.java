/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import com.opensymphony.xwork2.ActionSupport;
import dao.phongbanDao;
import entity.Phongban;
import java.util.List;

/**
 *
 * @author tritue12
 */
public class InsertPB extends ActionSupport{
    private String maphong;
    private String tenphong;
    private List<Phongban> list;

    public String getMaphong() {
        return maphong;
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

    
    public InsertPB() {
    }
    
    @Override
    public String execute() throws Exception {
        phongbanDao pbdao = new phongbanDao();
        Phongban pb = new Phongban(maphong,tenphong);
        pbdao.addpb(pb);
        return SUCCESS;
    }
    
}
