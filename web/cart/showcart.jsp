<%-- 
    Document   : showcart
    Created on : 5 Jul, 2023, 11:12:35 AM
    Author     : deepa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="databaseconnection.cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="../home.jsp"/> 
        <%
             int id=(int)session.getAttribute("id");
        cart c=new cart();
        ResultSet r=c.showcart(id);
        %>
        <div class="container-fluid">
            <%
            while(r.next()){
               int cid=r.getInt("c.id");
            %>
            <div class="row">
                <div class="col-lg-3 col-3">
                    <img src="../photos/<%=r.getString("p.imagename")%>" alt="" style="height: 200px"/>
                </div>
                <div class="col-lg-8 col-8">
                    <div class="row">
                        <b> <%=r.getString("p.name")%></b><br>
                        <i><%=r.getString("p.Description")%></i>
                        <b style="text-decoration: line-through 2px;"><%=r.getInt("p.price")%></b>
                        <i><b><%=r.getInt("d.discount_percent")%>%</b>discount</i>
                        <%int price=r.getInt("p.price")-(r.getInt("p.price")*r.getInt("d.discount_percent")/100);
                        int productquantity=r.getInt("p.quantity");
                        int cartquantity=r.getInt("c.quantity");
                        if(cartquantity>productquantity){
                        c.updatecartquantity(productquantity,r.getInt("c.id"));
                        cartquantity=productquantity;
                        }
                        int totalprice=price*cartquantity;
                        %>
                        <b style="color:red">rate:<%=price%></b>
                        <b>quantity:<%=cartquantity%></b>
                        <h3>total price:<%=price*cartquantity%></h3>
                         </div>
                         <a class="text-success" href="/GROCRY/removefromcart?id=<%=cid%>&cid=<%=id%>"><button class="bg-danger" onclick="">remove</button></a>
                         <a href="../order/fillorderdetail.jsp?cd=<%=r.getString("c.id")%>&price=<%=totalprice%>" class="ms-5"><button class="bg-success">order</button></a>
                    </div>
                    <div class="row">
                    
                    </div>   
                </div>
                         <%}%>
        </div>
       
    </body>
</html>
