<%-- 
    Document   : productderails.jsp
    Created on : 3 Jul, 2023, 5:45:02 PM
    Author     : deepa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="databaseconnection.dbqueryshomepage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%-- 
    Document   : productdetails
    Created on : 29 Jun, 2023, 5:59:49 PM
    Author     : deepa
--%>

    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>
     <%
         int userid=(Integer)session.getAttribute("id");
          //  int userid=(Integer)session.getAttribute("user");
           // session.setAttribute("user",userid);
            int id=Integer.parseInt(request.getParameter("id"));
            dbqueryshomepage d=new dbqueryshomepage();
            ResultSet r=d.getproductdetail(id);
            %>
    <body>
        <div class="container-fluid">
             <jsp:include page="../home.jsp"/> 
            <div class="row">
<%
            while(r.next()){
                System.out.println("../photos/"+r.getString("p.imagename"));
        %>
        
        <div class="col-lg-4 mt-2"> 
            <img src=<%="../photos/"+r.getString("p.imagename")%> alt="" style="width: 400px;height:400px"/></div>
            <div class="col-lg-7">
                <div class="row">
                    <p id="s"><b><%=r.getString("p.name")%></b></p>
                    
        <p id="s"><%=r.getString("p.Description")%></p>
            </div>
            <div class="row">
                
                <p id="s">price:<b style="text-decoration:line-through solid"><%=r.getString("p.price")%></b></p>
            <p id="s">discount:<%=r.getString("d.discount_percent")%></p>
            <p id="s"><b>final price</b>:<%=Integer.parseInt(r.getString("p.price"))-(((Integer.parseInt(r.getString("p.price")))*Integer.parseInt(r.getString("d.discount_percent"))/100))%></p>
            
            </div>
            </div>
            <div class="row">
                <p id="s">price:<b style="text-decoration:line-through solid"><%=r.getString("p.price")%></b></p>
            <p id="s">discount:<%=r.getString("d.discount_percent")%></p>
            <%
            System.out.println(Integer.parseInt(r.getString("p.price")));
            System.out.println((r.getString("d.discount_percent")));
            System.out.println((Integer.parseInt(r.getString("p.price"))/100)*Integer.parseInt(r.getString("d.discount_percent")));
            %>
            <p id="s"><b>final price</b>:<%=Integer.parseInt(r.getString("p.price"))-(((Integer.parseInt(r.getString("p.price")))*Integer.parseInt(r.getString("d.discount_percent")))/100)%></p>
            </div>
     <%}%>
            </div>
            quantity:
            <div style="display: inline-flex;">
                <button onclick="decrement()"><b>-</b></button>
                <input id=demoInput type="number" min=1 max=10 value=1  style="width:40px;text-align:center" readonly>
                <button class="m-0" onclick="increment()"><b>+</b></button>
                <a></a>
            </div>
            <script>
   function increment() {
      document.getElementById('demoInput').stepUp();
   }
   function decrement() {
      document.getElementById('demoInput').stepDown();
   }
</script>
            <div class="row">
                <div class="col-lg-7 mt-3">
                    <button><a id="link" href="javascript:;" onclick="this.href='/GROCRY/addtocart?productid=<%=id%>&quantity='+document.getElementById('demoInput').value">add to cart</a></button>
                </div>
                 <div class="col-lg-4 mt-3">
                <a><button>order</button></a>
                </div>
            </div>
        </div>
    </body>
</html>
