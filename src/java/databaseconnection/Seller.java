/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;

 
import databaseconnection.dbconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author 91967
 */
public class Seller{
  
     public int update(int productid,String productname,String productDescription,int productprice,double productdiscount_percent,int quantity )
    {
        		  dbconn cn=new dbconn();
          
        try{
               Statement st=cn.dbconnections().createStatement();
                int rs=st.executeUpdate("update product set name='"+productname+"',Description='"+productDescription+"',price='"+productprice+"',quantity='"+quantity+"'where id='"+productid+"'");
                return rs;
         }catch (Exception e){
             System.out.println(""+e);
         }
        return 0;
    }
  /*  public static void main(String[] args)
    {
        adminalldb db=new adminalldb();
        db.update(1, "pent", 200 , 1000);
    }
*/
public int adminADDnewitem(int productid,String productname,int  productprice,int quantity){
     try{   
             dbconn cn=new dbconn();
           Statement st=cn.dbconnections().createStatement();
           PreparedStatement pt=cn.dbconnections().prepareStatement("INSERT INTO product(productid,productname,productprice,quantity) VALUES( ?,?,?,?);");
               
               pt.setInt(1,productid);
               pt.setString(2,productname);
               pt.setInt(3,productprice);
               
               pt.setInt(4,quantity);
               
               
               int i=pt.executeUpdate(); 
               return i;
        
        
        
    } catch(Exception e)
         {
          System.out.println(""+e);
         }
     return 0;
    }
  public int  adminDELETE(int id)
    {
          try{
          dbconn cn=new dbconn();
           Statement st=cn.dbconnections().createStatement();
            int rows = st.executeUpdate("UPDATE product set quantity='0' where id='"+id+"'");
            return rows;
     }
      catch(Exception e)
         {
          System.out.println(""+e);
         }
     return 0;
    }
  public int admingetquentityproduct(String name,int sellerid)
    {
        int quantity=0;
        System.out.println(name+" asfdsafgfdhd"+sellerid);
          try{
          dbconn cn=new dbconn();
           Statement st=cn.dbconnections().createStatement();
           String sql="SELECT * FROM product where name='"+name+"' and saler_id='"+sellerid+"'";
             
             ResultSet rows = st.executeQuery(sql);
              System.out.println(sql);
             while(rows.next()){
                 quantity=rows.getInt("quantity");
             }
              return quantity;
     }
      catch(Exception e)
         {
          System.out.println("sfdsfbfbddb"+e);
         }
     return -1;
    }
  public int adminaddnewitem(String name,String desc,int category,double  price,int discount,int quantity,String img,int id){
     try{   
             dbconn cn=new dbconn();
           Statement st=cn.dbconnections().createStatement();
           ResultSet r=st.executeQuery("SELECT id FROM discount where discount_percent='"+discount+"';");
           while(r.next()){
                 discount=r.getInt("id");
             }
           PreparedStatement pt=cn.dbconnections().prepareStatement("insert into product(name,Description,price,discount_id,quantity,category_id,saler_id,imagename) VALUES(?,?,?,?,?,?,?,?);"); 
               pt.setString(1,name);
               pt.setString(2,desc);
               pt.setDouble(3, price);
               pt.setInt(4, discount);
               pt.setInt(5,quantity);
               pt.setInt(6,category);
               pt.setInt(7, id);
               pt.setString(8,img);
               System.out.println(pt);
               System.out.println(name);
               System.out.println(desc);
               int i=pt.executeUpdate(); 
               return 1;
        
    } catch(Exception e)
         {
          System.out.println("aaaa"+e);
         }
     return 0;
    }
   public int adminupdateitem(String name,String desc,int category,double  price,int discount,int quantity,String image,int id){
     try{   
             dbconn cn=new dbconn();
           Statement st=cn.dbconnections().createStatement();
           ResultSet r=st.executeQuery("SELECT id FROM discount where discount_percent='"+discount+"';");
           while(r.next()){
                 discount=r.getInt("id");
             }
           PreparedStatement pt=cn.dbconnections().prepareStatement("update product set name=?,Description=?,price=?,discount_id=?,quantity=?,imagename=? where name=? and saler_id=?");
               pt.setString(1,name);
               pt.setString(2,desc);
               pt.setDouble(3, price);
               pt.setInt(4, discount);
               pt.setInt(5,quantity);
               pt.setString(6,image);
               pt.setString(7,name);
               pt.setInt(8,id);
               int i=pt.executeUpdate(); 
               return 1; 
    } catch(Exception e)
         {
          System.out.println(""+e);
         }
     return 0;
    }
  public static void main(String[] args)
  {
      Seller db=new Seller();
     int i= db.admingetquentityproduct("tshirt",102);
     if(i>0)
     {
         System.out.println("now");
     }
     else{
         System.out.println("welcome");
     }
  }
}
