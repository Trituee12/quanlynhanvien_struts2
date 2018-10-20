/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import com.opensymphony.xwork2.ActionSupport;
import dao.nhanvienDao;
import entity.Nhanvien;
import entity.Phongban;
import java.util.List;

/**
 *
 * @author tritue12
 */
public class InsertNV extends ActionSupport{

     private String name;
     private String gender;
     private String birthday;
     private String address;
     private String phone;
     private String email;
     private Integer luong;
     private List<Phongban> list;
     private Phongban phongban;

    public List<Phongban> getList() {
        return list;
    }

    public void setList(List<Phongban> list) {
        this.list = list;
    }

    public Phongban getPhongban() {
        return phongban;
    }

    public void setPhongban(Phongban phongban) {
        this.phongban = phongban;
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
     
    public InsertNV() {
    }
    
     @Override
    public String execute() throws Exception {
        nhanvienDao nvdao = new nhanvienDao();
        
        Nhanvien nv = new Nhanvien(phongban ,name, gender, birthday, address, phone, email, luong);
        
       nvdao.addnv(nv);
            return SUCCESS;
    
   
}}
