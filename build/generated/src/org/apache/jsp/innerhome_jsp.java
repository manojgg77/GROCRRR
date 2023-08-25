package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Formatter;
import java.sql.ResultSet;
import databaseconnection.dbqueryshomepage;
import databaseconnection.dbconn;

public final class innerhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
ResultSet rs=null;
      out.write("\r\n");
      out.write("        <!DOCTYPE html>\r\n");
      out.write("        <html>\r\n");
      out.write("        <head>\r\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("            <title>JSP Page</title>\r\n");
      out.write("        </head>\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("            integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("            integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js\"\r\n");
      out.write("            integrity=\"sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF\"\r\n");
      out.write("            crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <style>\r\n");
      out.write("              a{\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("            }\r\n");
      out.write("            .new{\r\n");
      out.write("                margin:0px;\r\n");
      out.write("            }\r\n");
      out.write("            .new a {\r\n");
      out.write("\r\n");
      out.write("                background-color: none;\r\n");
      out.write("                border: none;\r\n");
      out.write("                margin-top: 5px;\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                color:white;\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .new a p {\r\n");
      out.write("                padding-left: 10px;\r\n");
      out.write("                padding-top: 10px;\r\n");
      out.write("                padding-right: 10px;\r\n");
      out.write("            }\r\n");
      out.write("         @media screen and (max-width: 600px) {\r\n");
      out.write("             .new a{\r\n");
      out.write("                 margin-top: 0px;\r\n");
      out.write("             }\r\n");
      out.write("            .new a p{\r\n");
      out.write("                 font-size: 12px;\r\n");
      out.write("                line-height:12px;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("            @media screen and (min-width: 600px) and (max-width: 720px){ \r\n");
      out.write("             .new a {\r\n");
      out.write("            font-size: 10px;\r\n");
      out.write("            line-height:12px;\r\n");
      out.write("        }\r\n");
      out.write("        }\r\n");
      out.write("        /* Media query for screens smaller than 600px */\r\n");
      out.write("        @media screen and (min-width: 720px) and (max-width: 900px) {\r\n");
      out.write("            .new a {\r\n");
      out.write("                font-size: 12px;\r\n");
      out.write("                line-height:0px;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Media query for screens between 601px and 1200px */\r\n");
      out.write("        @media screen and (min-width: 901px) and (max-width: 1200px) {\r\n");
      out.write("            .new a{\r\n");
      out.write("                font-size: 15px;\r\n");
      out.write("                line-height:0px;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Media query for screens larger than 1200px */\r\n");
      out.write("        @media screen and (min-width: 1201px) {\r\n");
      out.write("            .new a{\r\n");
      out.write("                font-size: 18px;\r\n");
      out.write("                line-height:0px;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("            .new a:hover {\r\n");
      out.write("                border: 2px solid;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("\r\n");
      out.write("        <body>\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home.jsp", out, false);
      out.write(" \r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("            <div class=\"row new\" style=\"background-color:#333333\">\r\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\" style=\"display: flex;color: white\">\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=all\">\r\n");
      out.write("                        <p>all</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=all\">\r\n");
      out.write("                        <p>sell</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=all\">\r\n");
      out.write("                        <p>best sellers</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=mobiles\">\r\n");
      out.write("                        <p>mobiles</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=all\">\r\n");
      out.write("                        <p>customer service</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=all\">\r\n");
      out.write("                        <p>new releases</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=Electronics\">\r\n");
      out.write("                        <p>Electronics</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=Prime\">\r\n");
      out.write("                        <p>Prime</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=Home&kitchen\">\r\n");
      out.write("                        <p>Home&kitchen</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"productsshowbycatagry.jsp?category=Fashion\">\r\n");
      out.write("                        <p>Fashion</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                ");

                dbqueryshomepage d=new dbqueryshomepage();
       ResultSet r=d.getproductdetailsbydiscount();
       String search=(String)session.getAttribute("search");
         if (search != null) {
         r=(ResultSet) session.getAttribute("rs");
         }
               session.setAttribute("search",null);
            session.setAttribute("rs",null);
       int id=(Integer)session.getAttribute("id");
      // session.setAttribute("user",id);
          try {
              while(r.next()){
                  Formatter f=new Formatter();
                  int discount=Integer.parseInt(r.getString("d.discount_percent"));
                  

      out.write("\r\n");
      out.write("<div class=\"col-lg-2 col-md-4 col-sm-6 col-12\">\r\n");
      out.write("    <h3></h3>\r\n");
      out.write("    <a href=\"productdetail/productdetails.jsp?id=");
      out.print(r.getString("id"));
      out.write("\">\r\n");
      out.write("        <img src=\"photos/");
      out.print(r.getString("imagename"));
      out.write("\" alt=\"\" style=\"height: 200px;width:200px\"/>\r\n");
      out.write("        <b style=\"display: block;\">\r\n");
      out.write("            ");
      out.print(f.format("%.10s",r.getString("name")));
      out.write("...</b>\r\n");
      out.write("            ");
int rate=(Integer.parseInt(r.getString("price"))-(discount*Integer.parseInt(r.getString("price")))/100);
      out.write("\r\n");
      out.write("            ");
      out.print(discount);
      out.write("%off\r\n");
      out.write("            <b style=\"text-decoration:line-through\">");
      out.print(r.getString("price"));
      out.write("</b>\r\n");
      out.write("            <b style=\"text-decoration:\">");
      out.print(rate);
      out.write("</b><br>\r\n");
      out.write("    </a>\r\n");
      out.write("            <button><a href=\"/GROCRY/addtocart?productid=");
      out.print(r.getString("id"));
      out.write("&quantity=1\">add to cart</a></button>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }
}
catch (Exception ex) {
              System.out.println(ex);
          }
      out.write("\r\n");
      out.write("             </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            </body>\r\n");
      out.write("\r\n");
      out.write("        </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
