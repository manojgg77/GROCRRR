/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saller;

import databaseconnection.checkinguser;
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
public class sallerlogout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>"); 
        HttpSession session=request.getSession();
        int i=(Integer)session.getAttribute("id1");
        checkinguser u=new checkinguser();
        u.sallerlogout(i);
        request.getRequestDispatcher("/saler/sallerlogin.jsp").forward(request, response);
        
    }
    }
