package userservlet;

import databaseconnection.Seller;
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
public class removefromcart extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
           HttpSession ht=request.getSession();
          response.setContentType("text/html");
                int id=(Integer.parseInt(request.getParameter("id")));
                 int cid=(Integer.parseInt(request.getParameter("cid")));
               System.out.println(id);
                cart db=new cart();
                int rows=db.removefromcart(id,cid);
                if(rows>0)
                {
                      ht.setAttribute("message", "one product deleted ");
                    response.sendRedirect("cart/showcart.jsp");
                  
                    return;
                }
                else if(rows==0){
                     ht.setAttribute("message", "wrong id entred go to the all product section check id frist ");
                   //  response.sendRedirect("deleteitembyadmin.jsp");
                     
                    return;
                }
              
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
   
}
