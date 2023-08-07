<%-- Document : innerhome.jsp Created on : 15 Jun, 2023, 3:59:56 PM Author : deepa --%>
<%@page import="java.util.Formatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="databaseconnection.dbqueryshomepage"%>
<%@page import="databaseconnection.dbconn"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%ResultSet rs=null;%>
        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
        <style>
              a{
                text-decoration: none;
            }
            .new{
                margin:0px;
            }
            .new a {

                background-color: none;
                border: none;
                margin-top: 5px;
                text-decoration: none;
                color:white;
                text-decoration: none;
            }

            .new a p {
                padding-left: 10px;
                padding-top: 10px;
                padding-right: 10px;
            }
         @media screen and (max-width: 600px) {
             .new a{
                 margin-top: 0px;
             }
            .new a p{
                 font-size: 12px;
                line-height:12px;
            }
        }
            @media screen and (min-width: 600px) and (max-width: 720px){ 
             .new a {
            font-size: 10px;
            line-height:12px;
        }
        }
        /* Media query for screens smaller than 600px */
        @media screen and (min-width: 720px) and (max-width: 900px) {
            .new a {
                font-size: 12px;
                line-height:0px;
            }
        }

        /* Media query for screens between 601px and 1200px */
        @media screen and (min-width: 901px) and (max-width: 1200px) {
            .new a{
                font-size: 15px;
                line-height:0px;
            }
        }

        /* Media query for screens larger than 1200px */
        @media screen and (min-width: 1201px) {
            .new a{
                font-size: 18px;
                line-height:0px;
            }
        }

            .new a:hover {
                border: 2px solid;
            }
        </style>

        <body>
            <jsp:include page="home.jsp" /> 
            <div class="container-fluid">
            <div class="row new" style="background-color:#333333">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12" style="display: flex;color: white">
                    <a href="productsshowbycatagry.jsp?category=all">
                        <p>all</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=all">
                        <p>sell</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=all">
                        <p>best sellers</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=mobiles">
                        <p>mobiles</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=all">
                        <p>customer service</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=all">
                        <p>new releases</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=Electronics">
                        <p>Electronics</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=Prime">
                        <p>Prime</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=Home&kitchen">
                        <p>Home&kitchen</p>
                    </a>
                    <a href="productsshowbycatagry.jsp?category=Fashion">
                        <p>Fashion</p>
                    </a>
                </div>
            </div>
                <div class="row">
                <%
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
                  
%>
<div class="col-lg-2 col-md-4 col-sm-6 col-12">
    <h3></h3>
    <a href="productdetail/productdetails.jsp?id=<%=r.getString("id")%>">
        <img src="photos/<%=r.getString("imagename")%>" alt="" style="height: 200px;width:200px"/>
        <b style="display: block;">
            <%=f.format("%.10s",r.getString("name"))%>...</b>
            <%int rate=(Integer.parseInt(r.getString("price"))-(discount*Integer.parseInt(r.getString("price")))/100);%>
            <%=discount%>%off
            <b style="text-decoration:line-through"><%=r.getString("price")%></b>
            <b style="text-decoration:"><%=rate%></b><br>
    </a>
            <button><a href="/GROCRY/addtocart?productid=<%=r.getString("id")%>&quantity=1">add to cart</a></button>
</div>

                    <%
                        }
}
catch (Exception ex) {
              System.out.println(ex);
          }%>
             </div>
            </div>
            </body>

        </html>