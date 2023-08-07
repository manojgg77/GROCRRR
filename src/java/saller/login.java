/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saller;

import databaseconnection.checkinguser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class login extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        try {
            res.setContentType("text/html");
            String uemail = req.getParameter("uemail");
            String upwd = req.getParameter("upwd");
            checkinguser ch = new checkinguser();
            int t = ch.sallerloginStatus(uemail, upwd);
            if (t == 0) {
                int i = ch.sallerlogin(uemail, upwd);
                if (i != 0) {
                    HttpSession session = req.getSession();
                    Base64.Encoder encoder = Base64.getEncoder();
                    String i1 = encoder.encodeToString(String.valueOf(i).getBytes());
                    session.setAttribute("i11", i1);
                    req.getRequestDispatcher("innerhome.jsp").forward(req, res);
                } else {
                    out.println("<h1>failed!!!!!!!!!!!!!!!!!!!</h1>");
                }
            } else if (t == 1) {
                int i = ch.sallerlogin(uemail, upwd);
                HttpSession session = req.getSession();
                session.setAttribute("i11", null);
                session.setAttribute("id1", i);
                out.print("<html>");
                out.println("<head>");
            out.println("<style>");
            out.println(".confirmation-text {");
            out.println("  font-size: 20px;");
            out.println("}");
            out.println("</style>");
             out.println("</head>");
             out.println("<body>");
            out.println("<script>");
            out.println("window.onload = function() {");
            out.println("  showConfirm();");
            out.println("};");
            out.println("function showConfirm() {");
            out.println("  var  result= confirm('please logout you id');");
            out.println("  if (result) {");
            out.println("window.location.href = '/GROCRY/sallerlogout';");
            out.println("  }");
            out.println("}");
            out.println("</script>");
                req.getRequestDispatcher("saler/sallerlogin.jsp").include(req, res);
                out.println("</body>");
                out.println("</html>");
            } else if (t == -1) {
                out.println("<html>");
                out.println("<body>");
                out.println("<h1>Hello from Servlet!</h1>");

// Call the showConfirm function directly when the page loads
                out.println("<script>");
                out.println("window.onload = function() {");
                out.println("  showConfirm();");
                out.println("};");
                out.println("function showConfirm() {");
                out.println("  var result = confirm('please wait for conformation by admin');");
                out.println("  if (result) {");
                out.println("window.location.href = 'innerhome.jsp';");
                out.println("  }");
                out.println("}");
                out.println("</script>");
                out.println("</body>");
                out.println("</html>");
            } else {
                out.println("username or password not currect");
                req.getRequestDispatcher("saler/sallerlogin.jsp").forward(req, res);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
