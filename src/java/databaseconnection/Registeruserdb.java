package databaseconnection;
import databaseconnection.dbconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author 91967
 */
public class Registeruserdb {
    public int register(String fristname,String lastname, String uemail,String uphone,String upwd)
    {
        
        try{
          
            String username=fristname+" "+lastname;
        dbconn cn=new dbconn();
          Date currentDate =new Date();
          SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
          String fcurrentDate=df.format(currentDate);
           PreparedStatement pt=cn.dbconnections().prepareStatement("INSERT INTO user(username,first_name,last_name,email,telephone,password,usertype,created_at) VALUES( ?,?,?,?,?,?,?,?);");
           
               pt.setString(1,username);
                pt.setString(2,fristname);
                 pt.setString(3,lastname);
               pt.setString(4,uemail);
              
               pt.setString(5,uphone);
               pt.setString(6,upwd);
               pt.setString(7,"c");
               pt.setString(8,fcurrentDate);
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
     public int registerseller(String name,String address, String uemail,String uphone,String panno,String shop_type,String upwd,String cupwd)
    {
        
        try{
        dbconn cn=new dbconn();
           PreparedStatement pt=cn.dbconnections().prepareStatement("INSERT INTO seller(name,emailid,shop_address,phone_no,PAN_no,shop_type,password,status) VALUES( ?,?,?,?,?,?,?,0);");
           PreparedStatement pt1 = cn.dbconnections().prepareStatement("INSERT INTO user(username,first_name,last_name,email,telephone,password,usertype) VALUES( ?,?,?,?,?,?,?);");
            String inputString = name;
        String[] parts = inputString.split("\\s+",2);
        String firstname = parts[0];
        String lastname = parts[1];
               pt.setString(1,name);
                pt.setString(2,uemail);
                 pt.setString(4,uphone);
               pt.setString(3,address);
               pt.setString(5,panno);
               pt.setString(6,shop_type);
               pt.setString(7,upwd);
                 pt1.setString(1,name);
                pt1.setString(2,firstname);
                 pt1.setString(3,lastname);
               pt1.setString(4,uemail);
               pt1.setString(5,uphone);
               pt1.setString(6,upwd);
               pt1.setString(7,"s");
               int res=pt1.executeUpdate();
                res=pt.executeUpdate();
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
   

