/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author deepa
 */
public class dbconn {
     public Connection dbconnections(){
        Connection conn = null;
        try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      String connString="jdbc:mysql://localhost:3306/deepak";
       conn = DriverManager.getConnection(connString, "root", "deepak");
    }
        catch(ClassNotFoundException | SQLException e){System.out.println(e);}
        return conn;
}    
}
