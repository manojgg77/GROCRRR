/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import databaseconnection.checkinguser;
import databaseconnection.forgetpswuser1;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class forgetpswuser extends HttpServlet {

     
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
          PrintWriter out = res.getWriter();
        try{
        HttpSession s=req.getSession();
        res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
        String username=req.getParameter("username");
         
        String uemail=req.getParameter("uemail");
       
        String uphone=req.getParameter("uphone");
        forgetpswuser1 f= new forgetpswuser1();
       int id= f.userloginStatus(username, uemail, uphone);
        if(id>0)
        {
            s.setAttribute("wefind", id);
            res.sendRedirect("/GROCRY/user/confrimforgetpswuser.jsp");
        }
        else{
            s.setAttribute("errorfind", "something wrong");
            res.sendRedirect("/GROCRY/user/sforgetpswuser.jsp");        }
    }
catch (Exception ex) {
            System.out.println(""+ex);
        }
    
}
}
