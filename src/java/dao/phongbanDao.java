/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Nhanvien;
import entity.Phongban;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author tritue12
 */
public class phongbanDao {
    
    public List<Phongban> getAllphongban(){
    Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = ss.beginTransaction();
       List<Phongban> list = new ArrayList<>();
       list = ss.createCriteria(Phongban.class).list();
       tran.commit();
       return list;
    }
 public void addpb(Phongban pb){
 Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = ss.beginTransaction();
       ss.save(pb);
 tran.commit();
 }
 public void removepb(String maphong){
  Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = ss.beginTransaction();
        Phongban nvv = (Phongban) ss.get(Phongban.class, maphong);
       ss.delete(nvv);
 tran.commit();
 }
 public Phongban findBymaphong(String maphong){
       Session session = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = session.beginTransaction();
          Phongban pb = (Phongban) session.get(Phongban.class, maphong);
      tran.commit();
   return pb; }
 public void editpb(Phongban pb){
 Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = ss.beginTransaction();
       ss.update(pb);
 tran.commit();
 }
 public List<Phongban> getsonv(){
    Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tran = ss.beginTransaction();
    List<Phongban> list = new ArrayList<>();
        
       SQLQuery sql =  ss.createSQLQuery("select phongban.maphong,phongban.tenphong,COUNT(nhanvien.maphongban) as sonv  from nhanvien right join phongban on phongban.maphong = nhanvien.maphongban GROUP by phongban.maphong");
       sql.addEntity(Phongban.class);
  
       list = sql.list();
       tran.commit();
       return list;
    }
  public ArrayList<Nhanvien> getAllnhanvienPB(String maphong){
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tran = session.beginTransaction();
     Query query = (Query) session.createQuery("from Nhanvien where maphongban =:maphong");
     query.setString("maphong", maphong);
     ArrayList<Nhanvien> list = (ArrayList<Nhanvien>) query.list();
     tran.commit();
     return list;
    
}
}
