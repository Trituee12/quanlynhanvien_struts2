/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

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
public class UpdateAction extends ActionSupport{
 private Nhanvien nv;
    private int id;
    private String maphongban;
    private Phongban phongban;
     private String name;
     private String gender;
     private String birthday;
     private String address;
     private String phone;
     private String email;
     private Integer luong;
     private List<Nhanvien> list;
     private List<Phongban> listpb;

    public List<Phongban> getListpb() {
        return listpb;
    }

    public void setListpb(List<Phongban> listpb) {
        this.listpb = listpb;
    }
    public Nhanvien getNv() {
        return nv;
    }

    public void setNv(Nhanvien nv) {
        this.nv = nv;
    }

    public Phongban getPhongban() {
        return phongban;
    }

    public void setPhongban(Phongban phongban) {
        this.phongban = phongban;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getLuong() {
        return luong;
    }

    public void setLuong(Integer luong) {
        this.luong = luong;
    }

    public List<Nhanvien> getList() {
        return list;
    }

    public void setList(List<Nhanvien> list) {
        this.list = list;
    }
    public UpdateAction() {
    }

    public String getMaphongban() {
        return maphongban;
    }

    public void setMaphongban(String maphongban) {
        this.maphongban = maphongban;
    }
    

 @Override
    public String execute() throws Exception {
        ModelMap mm = new ModelMap();
        nhanvienDao nvdao = new nhanvienDao();
        nv = nvdao.findBymanv(id);
    phongbanDao pbdao = new phongbanDao();
     listpb = pbdao.getAllphongban();
        mm.put("listpb",listpb);
            return SUCCESS;
    }
    
    public String updateNV() throws Exception{
    nhanvienDao nvdao = new nhanvienDao();
    Nhanvien nv = new Nhanvien(id,phongban,name,gender,birthday,address,phone,email,luong);
    nvdao.editnv(nv);
    list = nvdao.getAllnhanvien();
    return SUCCESS;
    }
     
    
}
