/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import databaseconnection.cart;
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
public class addtocart extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
          response.setContentType("text/html");
          HttpSession session=request.getSession();
        // int userid=Integer.parseInt(Integer.toString((int)session.getAttribute("user")));
         int userid=Integer.parseInt(Integer.toString((int)session.getAttribute("id")));
        int productid=Integer.parseInt(request.getParameter("productid"));
         int quantity=Integer.parseInt(request.getParameter("quantity"));
         cart c=new cart();
         if(userid!=1){
         if(quantity==1){
        c.addsingleitem(userid,productid);
        response.sendRedirect("innerhome.jsp");
    }
    else{
    c.addsingleitemwithquentity(userid, productid,quantity);
    response.sendRedirect("cart/showcart.jsp");
}
}
         else{
         out.println("please login first");
         //request.getRequestDispatcher("user/login.jsp").forward(request, response); 
         response.sendRedirect("user/login.jsp");
         }
         
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
