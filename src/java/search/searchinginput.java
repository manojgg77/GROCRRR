/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package search;

import databaseconnection.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class searchinginput extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try{
        PrintWriter out = res.getWriter();
            res.setContentType("text/html");
            String item=(String)req.getParameter("searchitem");
            dbqueryshomepage c=new dbqueryshomepage();
            ResultSet r=c.getproductdetailsbysearch(item);
            HttpSession  session=req.getSession();
            session.setAttribute("search","1");
            session.setAttribute("rs",r);
            res.sendRedirect("innerhome.jsp");
            
    }catch(Exception e){System.out.println(e);}
    }
}
