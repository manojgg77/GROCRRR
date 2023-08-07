/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author deepa
 */
public class cart {
     dbconn d=new dbconn();
            Connection con=d.dbconnections();
    public int usercartitemchack(int userid,int productid){
        try {
            int t=0;
            Statement st=con.createStatement();
            ResultSet rs1 = st.executeQuery("select quantity from cart_item where user_id='"+userid+"'  and product_id='"+productid+"'");
            while(rs1.next())
            {
                
               t=rs1.getInt("quantity");}
            return t;
        } catch (SQLException ex) {
            Logger.getLogger(checkinguser.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 0;          
  }

    public int addsingleitem(int userid,int productid){
        try {
            Statement st=con.createStatement();
            int quantity=0;
            cart c=new cart();
            int t = c.usercartitemchack(userid, productid);
            if(t>0){
            quantity=t+1;
            int i=st.executeUpdate("update cart_item set quantity='"+quantity+"' where user_id='"+userid+"' and product_id='"+productid+"'");
            }
            else{
            quantity=1;
            String sql="insert into cart_item (user_id,product_id,quantity) values('"+userid+"','"+productid+"','"+quantity+"')";
            int i= st.executeUpdate(sql);}
            return 0;
        } catch (SQLException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 0;
    }
      public int addsingleitemwithquentity(int userid,int productid,int quantity){
        try {
            Statement st=con.createStatement();
             cart c=new cart();
            int t = c.usercartitemchack(userid, productid);
            if(t>0){
            quantity=t+quantity;
            int i=st.executeUpdate("update cart_item set quantity='"+quantity+"' where user_id='"+userid+"' and product_id='"+productid+"'");
            }
            else{
            String sql="insert into cart_item (user_id,product_id,quantity) values('"+userid+"','"+productid+"','"+quantity+"')";
            int i= st.executeUpdate(sql);
            System.out.println(sql);
            return 0;
        }
        } catch (SQLException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
        }
      return 0;
    }
      
      public ResultSet showcart(int id){
          ResultSet r=null;
         try {
             Statement st=con.createStatement();
              r=st.executeQuery("select * from product p join discount d on p.discount_id=d.id join cart_item c on c.product_id=p.id where c.user_id='"+id+"' and c.quantity>0");
             return r;
         } catch (SQLException ex) {
             Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
         }
         return r;
      }
       public ResultSet updatecartquantity(int productquantity,int id){
          ResultSet r=null;
         try {
             Statement st=con.createStatement();
             int s=st.executeUpdate("update cart_item set quantity='"+productquantity+"' where id='"+id+"'");
             return r;
         } catch (SQLException ex) {
             Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
         }
         return r;
      }
      public int removefromcart(int id,int cid){
          try{
               Statement st=con.createStatement();
             int s=st.executeUpdate("DELETE FROM cart_item where id='"+id+"' and user_id='"+cid+"'");
             return 1;
          }
          catch(Exception e){
              System.out.println(e);}
      return 0;
      }
      public static void main(String[] args) {
        cart c=new cart();
       // c.showcart(111);
       c.showcart(111);
    }
//      public static void main(String[] args) {
//        cart c=new cart();
//        int t=c.usercartitemchack(111,1);
//          System.out.println(t);
//    }
}
