package databaseconnection;

import databaseconnection.dbconn;
import java.sql.ResultSet;
import java.sql.Statement;
 
/**
 *
 * @author 91967
 */
public class productshow {
    public ResultSet productshow1()
            
    {
        
        ResultSet rs1 = null;
               try {
          dbconn cn=new dbconn();
                   System.out.println(cn);
            Statement st=cn.dbconnections().createStatement();
                
                  String sql="select * from  product p join discount d on p.discount_id=d.id";
                  ;
             rs1 = st.executeQuery(sql);
              
           return rs1;
        } catch (Exception e) {
              System.out.println( e);
        }
             return rs1;
    }
     public ResultSet productshow2(int id)
            
    {
        
        ResultSet rs1 = null;
               try {
          dbconn cn=new dbconn();
                   System.out.println(cn);
            Statement st=cn.dbconnections().createStatement();
                
                  String sql="select * from  product p join discount d on p.discount_id=d.id where p.id='"+id+"'";
                  ;
             rs1 = st.executeQuery(sql);
              
           return rs1;
        } catch (Exception e) {
              System.out.println( e);
        }
             return rs1;
    }
    

//public static void main(String[] args)
//{
//    productshow p=new productshow();
//    //p.productshow1();
//}
}