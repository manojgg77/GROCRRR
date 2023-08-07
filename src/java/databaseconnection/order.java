/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author deepa
 */
public class order {
     dbconn cn;
    Statement st;
    public order(){
        try {
           this.cn=new dbconn();
            this.st=cn.dbconnections().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
}
     public int orders(int userid,String address,String city, String postal_code,String country,String mobile)
    {
        
        try{
        dbconn cn=new dbconn();
            
          
           PreparedStatement pt=cn.dbconnections().prepareStatement("INSERT INTO user_address(user_id,address_line1,city,postal_code,country,mobile) VALUES( ?,?,?,?,?,?);");
           pt.setInt(1,userid);
               pt.setString(2,address);
                pt.setString(3,city);
                 pt.setString(4,postal_code);
               pt.setString(5,country);
               pt.setString(6,mobile);
                int res=pt.executeUpdate();
                return res;
//               Statement st=cn.getConnectionDb().createStatement() ;
//               ResultSet rs=st.executeQuery("select uid from usertable where uname='"+uname+"'");
//               while(rs.next())
//               {
//                   int i=rs.getInt(1);
//               return i;
//               }
        } catch(Exception e){
            System.out.println(""+e);}
    return 0;
    }
    
}
