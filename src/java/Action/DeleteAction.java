/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import com.opensymphony.xwork2.ActionSupport;
import dao.nhanvienDao;
import dao.phongbanDao;

/**
 *
 * @author tritue12
 */
public class DeleteAction extends ActionSupport{
    int id;
    String maphong;

    public String getMaphong() {
        return maphong;
    }

    public void setMaphong(String maphong) {
        this.maphong = maphong;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public DeleteAction() {
    }
    
    @Override
    public String execute() throws Exception {
        nhanvienDao nvdao = new nhanvienDao();
        nvdao.remove(id);
        return SUCCESS;
    }
    
    public String deletePB() throws Exception{
    phongbanDao pbdao = new phongbanDao();
    pbdao.removepb(maphong);
    return SUCCESS;
    }
    
}
