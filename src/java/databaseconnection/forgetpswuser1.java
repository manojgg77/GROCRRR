/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author deepa
 */
public class forgetpswuser1 {
     dbconn cn;
    Statement st;
     public forgetpswuser1(){
        try {
           this.cn=new dbconn();
            this.st=cn.dbconnections().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    public int userloginStatus(String name,String uemail,String phone){
        
        try {
            int t=2;
            ResultSet rs1 = st.executeQuery("select id from user where username='"+name+"' and email='"+uemail+"'  and telephone='"+phone+"'");
            while(rs1.next())
            {
                
               t=rs1.getInt("id");
            return t;}
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 0;          
  }
    public int cforget(int id,String psw)
    {
         try {
        int rs=st.executeUpdate("update user set password='"+psw+"' where id='"+id+"'");
        return 1;
     } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 0;          
    }
    
}
