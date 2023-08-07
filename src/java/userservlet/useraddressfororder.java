/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import databaseconnection.Registeruserdb;
import databaseconnection.order;
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
public class useraddressfororder extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         PrintWriter out = res.getWriter();
        try{
        res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
        String building_name=req.getParameter("building_name");
        String street_address=req.getParameter("street_address");
        String city=req.getParameter("city");
       
        String State=req.getParameter("State");
        String country=req.getParameter("country");
        String pin_code=req.getParameter("pin_code");
        String address=building_name+","+street_address+","+city+","+State+","+country+","+pin_code;
        String phone=req.getParameter("phone");
        out.print(address);
        out.print(pin_code);
        HttpSession ht=req.getSession();
        int userid=(int)ht.getAttribute("id");
        out.print(userid);
        if( building_name.isEmpty()||street_address.isEmpty()||city.isEmpty()|| State.isEmpty()||country.isEmpty()|| pin_code.isEmpty()|| phone.isEmpty())
        {
            ht.setAttribute("message", "Please fill all feild");
            res.sendRedirect("order/fillorderdetail.jsp");
            return;
             
        }   
         order o=new order();
         int id=o.orders(userid,address,city, pin_code, country, phone);
        if(id!=0){
         out.println("<h1>sucess!!!!!!!!!!!!!!!!!!!</h1>");
          ht.setAttribute("message", "successful");
         res.sendRedirect("user/login.jsp");
        }
    }catch(Exception e){
            out.println(e);
             out.println("<h1>Failed!!!!!!!!!!!!!!!!!!!</h1>");
        }
        
       
    }

}
