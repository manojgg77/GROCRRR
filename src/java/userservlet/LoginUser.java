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
import java.util.Base64.Encoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91967
 */
@WebServlet(name = "loginuser" + "", urlPatterns = {"/loginuser"})
public class LoginUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        String uemail = req.getParameter("uemail");
        String upwd = req.getParameter("upwd");

        checkinguser ch = new checkinguser();
        int t = ch.userloginStatus(uemail, upwd);
        if (t == 0) {
            int i = ch.userlogin(uemail, upwd);
            if (i != 0) {
                Encoder encoder = Base64.getEncoder();
                String i1 = encoder.encodeToString(String.valueOf(i).getBytes());
                HttpSession session = req.getSession();
                session.setAttribute("i1", i1);
                res.sendRedirect("innerhome.jsp");
            } else {
                out.println("<h1>failed!!!!!!!!!!!!!!!!!!!</h1>");
            }
        } else if (t == 1) {
            int i = ch.userlogin(uemail, upwd);
            Encoder encoder = Base64.getEncoder();
            String i11 = encoder.encodeToString(String.valueOf(i).getBytes());
            HttpSession session = req.getSession();
            session.setAttribute("id", i);
            out.println("<html>");
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
            out.println("window.location.href = '/GROCRY/logout';");
            out.println("  }");
            out.println("}");
            out.println("</script>");
            out.println("</body>");
            out.println("</html>");
            req.getRequestDispatcher("user/login.jsp").include(req, res);
        } else {
            out.println("<html>");
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
            out.println("  var  result= confirm('password is not currect please forget password');");
            out.println("  if (result) {");
            out.println("window.location.href = '/GROCRY/user/forgetpswuser.jsp';");
            out.println("  }");
            out.println("}");
            out.println("</script>");
            out.println("</body>");
            out.println("</html>");
            out.println("username or password not currect");

            req.getRequestDispatcher("user/login.jsp").include(req, res);
        }
    }

}
