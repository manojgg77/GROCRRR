/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import databaseconnection.checkinguser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.Base64.Decoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class logout extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            String sid=null;
            response.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>"); 
        HttpSession session=request.getSession();
        int i=(Integer)session.getAttribute("id");
        sid=(String)session.getAttribute("i11");
        session.setAttribute("ill",null);
        if(sid==null){
        }
        else{
        Decoder d=Base64.getDecoder();
          byte[] a=d.decode(sid);
           String l=new String(a);
           int si=Integer.parseInt(l);
          }
        checkinguser u=new checkinguser();
        u.userlogout(i);
        session.setAttribute("i1",null);
        session.invalidate();
        response.sendRedirect("/GROCRY/innerhome.jsp");
        
    }
}
