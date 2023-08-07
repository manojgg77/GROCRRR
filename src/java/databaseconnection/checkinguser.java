/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;


import com.mysql.cj.Session;
import databaseconnection.dbconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
 
/**
 *
 * @author 91967
 */
public class checkinguser {
    dbconn cn;
    Statement st;
    public checkinguser(){
        try {
           this.cn=new dbconn();
            this.st=cn.dbconnections().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
}
  public int userloginStatus(String uemail,String upwd){
        try {
            int t=2;
            ResultSet rs1 = st.executeQuery("select status from user where email='"+uemail+"'  and password='"+upwd+"'");
            while(rs1.next())
            {
                
               t=rs1.getInt("status");}
            return t;
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 2;          
  }
  public int userlogout(int id){
        try {
            int t=0;
            int i= st.executeUpdate("update user set status='0' where id='"+id+"'");
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
  }
  
  
  
 public int userlogin(String uemail,String upwd)
    {    
        try {
                
                            int id = 0;
                           int i= st.executeUpdate("update user set status='1',failed='0' where email='"+uemail+"' and password='"+upwd+"'");
                          try { 
                              ResultSet rs=st.executeQuery("select id from user where email='"+uemail+"'  and password='"+upwd+"'");
                          while(rs.next()){
                            id = rs.getInt("id");
                          }
                            return id;
                          }
                          catch (Exception e) {
            System.out.println(""+e);
        }                               
        } catch (Exception e) {
            System.out.println(""+e);
        }
      return 0;     
    }
    
    
    
    
 public ResultSet getusername(String id){
       ResultSet r = null;
       String name = null;
            try {
                r=st.executeQuery("Select username,usertype,email from user where id="+id+"");
        return r;
          } 
         catch (Exception ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
 
  public int sallerloginStatus(String uemail,String upwd){
        try {
            int t=2;
            String varification = null;
            ResultSet rs=st.executeQuery("select varification from seller where emailid='"+uemail+"'");
            while(rs.next()){
           varification=rs.getString("varification");
            }
            if(varification.equals("yes"))
            { 
            ResultSet rs1 = st.executeQuery("select status from seller where emailid='"+uemail+"' and password='"+upwd+"'");
            while(rs1.next())
            {
               t=rs1.getInt("status");
            }
            return t;
            }
            else{
            return -1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 2;          
  }
  public int sallerlogout(int id){
        try {
            int t=0;
            int i= st.executeUpdate("update seller set status='0' where id='"+id+"'");
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
  }
  
    public int sallerlogin(String uemail,String upwd)
    {    int t=0;
     int id = 0;
        try {
                 ResultSet rs1 = st.executeQuery("select status from seller where emailid='"+uemail+"'  and password='"+upwd+"'");
                while(rs1.next())
                 {    
                   t=rs1.getInt("status");
                 }
                       if(t==0)
                        {
                          try { 
                              ResultSet rs=st.executeQuery("select id from seller where emailid='"+uemail+"'  and password='"+upwd+"'");
                              while(rs.next()){
                            id = rs.getInt("id");
                          }
                              int i= st.executeUpdate("update seller set status='1' where emailid='"+uemail+"' and password='"+upwd+"'");
                            return id;
                          }
                          catch (Exception e) {
            System.out.println(""+e);
        }
                        }
                        else
                        {
                        
                             ResultSet rs5=st.executeQuery("select id from seller where emailid='"+uemail+"'  and password='"+upwd+"'");
                             while(rs5.next()){
                            id=rs5.getInt("id");
                             }
                                 return id;
                 }
        } catch (Exception e) {
            System.out.println(""+e);
        }
      return id;     
    }
 public String getsallername(String id){
       ResultSet r = null;
       String name = null;
            try {
                r=st.executeQuery("Select name from seller where id="+id+"");
                while(r.next()){
                name=r.getString("name");}
        return name;
          } 
         catch (Exception ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return name;}
//    public static void main(String[] args) {
//        checkinguser c=new checkinguser();
//        System.out.println(c.getsallername(String.valueOf(c.sallerlogin("d@d","1"))));
//    }
}
