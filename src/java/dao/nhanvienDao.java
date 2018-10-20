/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Nhanvien;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * 
 * @author tritue12
 */
public class nhanvienDao {
    private Nhanvien nv;
    public ArrayList<Nhanvien> getAllnhanvien(){
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tran = session.beginTransaction();
     Query query = (Query) session.createQuery("from Nhanvien");
     ArrayList<Nhanvien> list = (ArrayList<Nhanvien>) query.list();
     tran.commit();
     return list;
    
}

 public void addnv(Nhanvien nv){
    
   
         Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tran = session.beginTransaction();
     session.save(nv);
     tran.commit();
    
     
     
 }
 public void editnv(Nhanvien nv){   
          Session session = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = session.beginTransaction();
       session.update(nv);
     tran.commit();
}
 public Nhanvien findBymanv(int id){
       Session session = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = session.beginTransaction();
          Nhanvien nhanvien = (Nhanvien) session.get(Nhanvien.class, id);
      tran.commit();
   return nhanvien; }
public void remove(int id){
  Session session = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = session.beginTransaction();
        Nhanvien nvv = (Nhanvien) session.get(Nhanvien.class, id);
       session.delete(nvv);
        tran.commit();
 }



}
