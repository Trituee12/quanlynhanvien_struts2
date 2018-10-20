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
import entity.Phongban;
import java.util.List;
import org.springframework.ui.ModelMap;

/**
 *
 * @author tritue12
 */
public class Listnv extends  ActionSupport{
    private List<Nhanvien> list;
    private List<Phongban> listpb;
     private String maphong;
     private String tenphong;
     
     private int sonv;

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

    public int getSonv() {
        return sonv;
    }

    public void setSonv(int sonv) {
        this.sonv = sonv;
    }

    public List<Phongban> getListpb() {
        return listpb;
    }

    public void setListpb(List<Phongban> listpb) {
        this.listpb = listpb;
    }

    public List<Nhanvien> getList() {
        return list;
    }

    public void setList(List<Nhanvien> list) {
        this.list = list;
    }
    
    public Listnv() {
    }
    
    @Override
    public String execute() throws Exception {
        ModelMap mm = new ModelMap();
        nhanvienDao nvdao = new nhanvienDao();
        list = nvdao.getAllnhanvien();
     mm.put("list", list);
     return SUCCESS;
    }
    public String phongbanlist() throws Exception {
        ModelMap mm = new ModelMap();
     phongbanDao pbdao = new phongbanDao();
     listpb = pbdao.getsonv();
        mm.put("listpb",listpb);
        return SUCCESS;
    }
}
