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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author deepa
 */
public class dbqueryshomepage {
      ResultSet r = null;
      dbconn db=new dbconn();
        Connection con=db.dbconnections();
    public dbqueryshomepage(){
     }
    public ResultSet getproductid(){
            try {
        Statement st=con.createStatement();
        r=st.executeQuery("Select id from product");
          } 
         catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
    
    
    public ResultSet getproductdetailsbydiscount(){
          try {
              Statement st=con.createStatement();
              String sql="select p.imagename,p.id,p.name,p.price,d.discount_percent from product p join discount d on p.discount_id=d.id where quantity>0";
              r=st.executeQuery(sql);
              return r;
          } 
          catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
    
     public ResultSet getproductdetailsbycategory(String category){
          try {
              Statement st=con.createStatement();
              String sql="select p.id,p.name,p.price,p.discount_id from product p join product_catagary d on p.category_id=d.id where name="+category+"";
              r=st.executeQuery(sql);
              return r;
          } catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
    
    
    
     public ResultSet getproductdetails(){
          try {
              Statement st=con.createStatement();
              r=st.executeQuery("select * from product");
          } catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
     
     
     public ResultSet getproductdetail(int id){
          try {
              Statement st=con.createStatement();
              r=st.executeQuery("select * from product p join discount d on p.discount_id=d.id where p.id="+id+" ");
          } catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
      public ResultSet getproductdetailsbysearch(String search){
          try {
              Statement st=con.createStatement();
              String sql="select p.imagename,p.id,p.name,p.price,d.discount_percent from product p join discount d on p.discount_id=d.id where quantity>0 AND (p.Description like '%"+search+"%' or p.name like '%"+search+"%')";
              System.out.println(sql);
              r=st.executeQuery(sql);
              return r;
          } 
          catch (SQLException ex) {
              Logger.getLogger(dbqueryshomepage.class.getName()).log(Level.SEVERE, null, ex);
          }
    return r;}
    
}
