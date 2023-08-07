<%-- 
    Document   : productsshowbycatagry
    Created on : 29 Jun, 2023, 11:26:13 PM
    Author     : deepa
--%>
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
            .new{
                margin:0px;
            }
            .new a {

                background-color: none;
                border: none;
                margin-top: 5px;
                font-size: 16px;
                line-height: 0px;
                text-decoration: none;
                color:white;
            }

            .new a p {
                padding-left: 10px;
                padding-top: 10px;
                padding-right: 10px;
            }

            .new a:hover {
                border: 2px solid;
            }
        </style>

        <body>
            <div class="row new" style="background-color:#333333">
                <div class="col-lg-12" style="font-size: 0px;display: flex;color: white">
                    <a href="#">
                        <p>all</p>
                    </a>
                    <a href="#">
                        <p>amazon mini tv</p>
                    </a>
                    <a href="#">
                        <p>sell</p>
                    </a>
                    <a href="#">
                        <p>best sellers</p>
                    </a>
                    <a href="#">
                        <p>mobiles</p>
                    </a>
                    <a href="#">
                        <p>customer service</p>
                    </a>
                    <a href="#">
                        <p>new releases</p>
                    </a>
                    <a href="#">
                        <p>Electronics</p>
                    </a>
                    <a href="#">
                        <p>Prime</p>
                    </a>
                    <a href="#">
                        <p>Home&kitchen</p>
                    </a>
                    <a href="#">
                        <p>Fashion</p>
                    </a>
                </div>
            </div>
                <div class="row">
                <%
                    
                   String category = request.getParameter("category");
                dbqueryshomepage d=new dbqueryshomepage();
       ResultSet r=d.getproductdetailsbycategory(category);
         System.out.println(r);
          try {
              while(r.next()){
%>
<div class="col-lg-2">
    <h3></h3>
    <a href="productdetails.jsp?id=<%=r.getString("id")%>" target="inner">
        <img src="images/catalogue.png" alt="" style="height: 200px;width:200px"/>
        <b style="display: block;">
            <%=r.getString("name")%></b>
            <%int i=(Integer.parseInt(r.getString("discount_id"))*10);%>
            <%int rate=(Integer.parseInt(r.getString("price"))-(i*Integer.parseInt(r.getString("price")))/100);%>
            <%=i%>%off
            <b style="text-decoration:line-through"><%=r.getString("price")%></b>
            <b style="text-decoration:"><%=rate%></b>
    </a>
</div>

<%}}
catch (Exception ex) {
              System.out.println(ex);
          }%>
             </div>
            </body>

        </html>