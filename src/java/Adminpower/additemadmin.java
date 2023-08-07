/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adminpower;

 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91967
 */
public class additemadmin extends HttpServlet {

     

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
           HttpSession ht=request.getSession();
          response.setContentType("text/html");
                int productid=(Integer.parseInt(request.getParameter("productid")));
                  int pp=productid;
                String productname= request.getParameter("productname");
                int productprice=(Integer.parseInt(request.getParameter("productprice")));   
                int quantity=(Integer.parseInt(request.getParameter("quantity"))); 
                 String productdes= request.getParameter("productdes");
                List<Integer> list=(List<Integer>)request.getSession().getAttribute("list");
                for(Integer fruit:list){
                out.print("<div>"+fruit+"</div>");}
               
             /*
                 if( productid<=0||productname.isEmpty()||productprice<=0||quantity<=0||productdes.isEmpty())
                {
                    ht.setAttribute("message", "Please fill all feild");
                    ht.setAttribute("productid",pp);
                    response.sendRedirect("additembyadmin.jsp");
                    return;
                }
                 /*else if(list.equals(productid))
                 {
                      ht.setAttribute("message", "please Enter different id");
                    response.sendRedirect("additembyadmin.jsp");
                    return;
                 }
                  
                  adminalldb db= new adminalldb();
                 int i= db.adminADDnewitem(productid, productname, productprice, quantity);
    */}

    
}
