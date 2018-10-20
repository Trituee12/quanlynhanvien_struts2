/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import dao.nhanvienDao;
import dao.phongbanDao;
import entity.Nhanvien;
import java.util.ArrayList;
import java.util.List;
import org.springframework.ui.ModelMap;

/**
 *
 * @author Administrator
 */
public class NhanvienPB extends ActionSupport{
    private String maphong;
    private ArrayList<Nhanvien> list;

    public ArrayList<Nhanvien> getList() {
        return list;
    }

    public void setList(ArrayList<Nhanvien> list) {
        this.list = list;
    }

   

    public String getMaphong() {
        return maphong;
    }

    public void setMaphong(String maphong) {
        this.maphong = maphong;
    }
            
    public NhanvienPB() {
    }
    
    @Override
    public String execute() throws Exception {
      phongbanDao pbdao = new phongbanDao();
       list = pbdao.getAllnhanvienPB(maphong);
      ModelMap mm = new ModelMap();
     mm.put("list", list);
     return SUCCESS;
    }
    
}
