/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author tritue12
 */


import entity.User;
import java.util.List; 
import org.hibernate.Query; 
import org.hibernate.Session; 
import org.hibernate.Transaction; 
import util.HibernateUtil;


public class UserDao { 
      private List<User> userlist; 
      private User user; 
      
      //Xóa một User 
      public User checklogin (String username, String password){
          
           Session session =   HibernateUtil.getSessionFactory().openSession();
      Transaction tx = session.beginTransaction();
      Query query = session.createQuery("from User where username = :username and password = :password");
      query.setString("username", username);
      query.setString("password", password);
      user = (User) query.uniqueResult();
      return user;
      }
      
      public void delete(Integer id) 
      { 
           Session session =   HibernateUtil.getSessionFactory().openSession();
            Transaction tx = null; 
            try 
            { 
                  tx = session.beginTransaction(); 
                  user=(User)session.get(User.class,id); 
                  session.delete(user); 
                  tx.commit(); 
            }catch (RuntimeException e) { 
                  if(tx != null) tx.rollback(); 
                  throw e; 
            } finally { 
                  session.close();
            } 
      } 

      //Liệt kê tất cả các User 
      public List getAllUser() { 
           Session session =   HibernateUtil.getSessionFactory().openSession();
            try 
            { 
                  session.beginTransaction(); 
                  userlist=session.createQuery("from User").list(); 
                  return userlist; 
            } 
            catch(Exception e) 
            { 
                  System.out.print("Error while fetching "+e); 
                  return null; 
            } 
            finally 
            { 
                  session.close(); 
            }
      } 

      //Lấy ra một User 
      public User getuser(Integer id) { 
            Session session =   HibernateUtil.getSessionFactory().openSession();
            try { 
                  session.beginTransaction(); 
                  //change query for get proper data 
                  Query q = session.createQuery("from User u where u.uid=:id"); 
                  q.setInteger("userid",id); 
                  return (User) q.uniqueResult(); 
            }finally { 
                  session.close(); 
            }
      } 

      //Chèn thêm 1 User 
      public void insert(User usr) { 
            Session session =   HibernateUtil.getSessionFactory().openSession();
            Transaction tx=null; 
            try { 
                  tx = session.beginTransaction(); 
                  session.save(usr);//saveOrUpdate() 
                  tx.commit(); 
            } catch (RuntimeException e) { 
                  if(tx != null) tx.rollback(); 
                  throw e; 
            } finally { 
                  session.close(); 
            }
      } 

      //Cập nhật User 
      public void update(User usr) { 
            Session session =   HibernateUtil.getSessionFactory().openSession();
            Transaction tx = null; 
            try { 
                  tx=session.beginTransaction(); 
                  session.update(usr); 
                  tx.commit(); 
            }catch (RuntimeException e) { 
                  if(tx != null) tx.rollback(); 
                  throw e; 
            } finally { 
                  session.close(); 
            }
      }
} 