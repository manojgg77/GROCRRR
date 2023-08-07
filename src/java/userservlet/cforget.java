/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import databaseconnection.forgetpswuser1;
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
public class cforget extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       PrintWriter out = res.getWriter();
        try{
        
        res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
        
          String upwd=req.getParameter("upwd");
           String cupwd=req.getParameter("cupwd");
        HttpSession ht=req.getSession();
        int id=(Integer)ht.getAttribute("wefind");
        if(upwd.equals(cupwd)){
            
            forgetpswuser1 f=new forgetpswuser1();
            int i=f.cforget(id, upwd);
            if(i==1)
            {
                 out.print("<html>");
                out.println("<head>");
             out.println("</head>");
             out.println("<body>");
            out.println("<script>");
            out.println("window.onload = function() {");
            out.println("  showConfirm();");
            out.println("};");
            out.println("function showConfirm() {");
            out.println("  var  result= confirm('PASSWORD CHANGE SUCESSFUL');");
            out.println("  if (result) {");
            out.println("window.location.href = '/GROCRY/user/login.jsp';");
            out.println("}");
            out.println("}");
            out.println("</script>");
                out.println("</body>");
                out.println("</html>");
            }
        }
        else{
         out.print("<html>");
                out.println("<head>");
             out.println("</head>");
             out.println("<body>");
            out.println("<script>");
            out.println("window.onload = function() {");
            out.println("  showConfirm();");
            out.println("};");
            out.println("function showConfirm() {");
            out.println("  var  result= confirm('password and conform password is not same');");
            out.println("  if (result) {");
            out.println("window.location.href = '/GROCRY/user/confrimforgetpswuser.jsp';");
            out.println("}");
            out.println("}");
            out.println("</script>");
                out.println("</body>");
                out.println("</html>");
        }
    }
        catch(Exception e){System.out.println(""+e);}

    }

}
