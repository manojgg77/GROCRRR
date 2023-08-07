/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saller;

 
import databaseconnection.Seller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91967
 */
public class updateproduct extends HttpServlet {

     

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
          response.setContentType("text/html");
           
          int  i=1 ;
          HttpSession session=request.getSession();
           int j=(int)session.getAttribute("row")-1;
           
          int sum=0;
              Seller ab=new Seller();
          while(j>0)
          {
              int productid=(Integer.parseInt(request.getParameter("productid"+Integer.toString(i))));
                String productname=request.getParameter("productname"+Integer.toString(i));
                String productDescription= request.getParameter("productDescription"+Integer.toString(i));
                int productprice=(Integer.parseInt(request.getParameter("productprice"+Integer.toString(i))));   
                 double productdiscount_percent=(Double.parseDouble(request.getParameter("productdiscount_percent"+Integer.toString(i))));   
                int quantity=(Integer.parseInt(request.getParameter("quantity"+Integer.toString(i)))); 
                sum=sum + ab.update(productid,productname,productDescription,productprice,productdiscount_percent,quantity);
              System.out.println(sum);
             i++;
             j--;
          }
        
          request.getRequestDispatcher("/admin/adminhome.jsp").forward(request, response);
         
          
    }

    
}
