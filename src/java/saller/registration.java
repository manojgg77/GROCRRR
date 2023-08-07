/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saller;

import databaseconnection.Registeruserdb;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class registration extends HttpServlet {

     protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        try{
        
        res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
        String name=req.getParameter("name");
        String address=req.getParameter("address");
        String uemail=req.getParameter("uemail");
        String uphone=req.getParameter("uphone");
        String panno=req.getParameter("panno");
         String shop_type=req.getParameter("shop_type");
          String upwd=req.getParameter("upwd");
           String cupwd=req.getParameter("cupwd");
        HttpSession ht=req.getSession();
        if( name.isEmpty()||address.isEmpty()||uemail.isEmpty()|| upwd.isEmpty()||uphone.isEmpty()|| panno.isEmpty()|| cupwd.isEmpty())
        {
            ht.setAttribute("message", "Please fill all feild");
            res.sendRedirect("registrationuser.jsp");
            return;
             
        }  
        else{
         Registeruserdb rg=new Registeruserdb();
        int id= rg.registerseller(name,address,uemail,uphone,panno,shop_type,upwd,cupwd);
         out.println("<h1>sucess!!!!!!!!!!!!!!!!!!!</h1>");
          ht.setAttribute("message", "successful");
         res.sendRedirect("user/login.jsp");
        }
        } catch(Exception e){
            out.println(e);
             out.println("<h1>Failed!!!!!!!!!!!!!!!!!!!</h1>");
        }
     }
}
