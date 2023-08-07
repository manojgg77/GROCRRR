/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adminpower;

 
import databaseconnection.Seller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91967
 */
public class deleteproduct extends HttpServlet {

   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
           HttpSession ht=request.getSession();
          response.setContentType("text/html");
                int id=(Integer.parseInt(request.getParameter("id")));
               System.out.println(id);
                Seller db=new Seller();
                int rows=db.adminDELETE(id);
                if(rows>0)
                {
                      ht.setAttribute("message", "one product deleted ");
                    ht.setAttribute("productid",id);
                    response.sendRedirect("admin/adminhome.jsp");
                  
                    return;
                }
                else if(rows==0){
                     ht.setAttribute("message", "wrong id entred go to the all product section check id frist ");
                   //  response.sendRedirect("deleteitembyadmin.jsp");
                     
                    return;
                }
              
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
           HttpSession ht=request.getSession();
          response.setContentType("text/html");
                int productid=(Integer.parseInt(request.getParameter("id")));
                
                Seller db=new Seller();
                int rows=db.adminDELETE(productid);
                if(rows>0)
                {
                      ht.setAttribute("message", "one product deleted ");
                    ht.setAttribute("productid",productid);
                      response.sendRedirect("admin/adminhome.jsp");
                    return;
                }
                else if(rows==0){
                     ht.setAttribute("message", "wrong id entred go to the all product section check id frist ");
                       response.sendRedirect("admin/adminhome.jsp");
                    return;
                }
              
    }


    
}
