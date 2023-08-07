<%-- 
    Document   : adminhome
    Created on : 17 Jul, 2023, 11:17:34 AM
    Author     : deepa
--%>
 <%@page import="java.util.Base64.Decoder"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <link rel="stylesheet" href="style.css">
                        <title>JSP Page</title>
                        <link rel="stylesheet" href="style.css">
                        <link rel="preconnect" href="https://fonts.googleapis.com">
                        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                        <link
                            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                            rel="stylesheet">
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                            crossorigin="anonymous">
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
    table, th, td {
  border: 1px solid black;
  text-align: center;
}
.tbl tr{
    border: 2px solid black;
}
.tbl tr td{
    border: 2px solid black;
}

                            </style>
                    </head>

                    <body >
                         <jsp:include page="../home.jsp" />
                         <%
                             String ill=(String)session.getAttribute("i11");
                              Decoder d = Base64.getDecoder();
        byte[] a = d.decode(ill);
       String l = new String(a);
       int i = Integer.parseInt(l);
                         %>
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
    <div class="container ">
        <h1></h1>
        <button onclick="createtable()">submit</button>
        <form action="/GROCRY/addproducts" method="post" enctype="multipart/form-data">
            <lable>no of product</lable><input type="number" name="rows" id="rows"/><br/>
        <div id="tablearea">
            
        </div>
            
        <script>
            function createtable(){
                
            let row=document.getElementById("rows").value;
            let col=5;
            console.log(row);
            console.log(col);
            var html="";
               html+="<table border='1'>";
               html+="<tr><td>name</td><td>description</td><td>catagary_id</td><td>price</td><td>discount</td><td>quantity</td><td>image</td></tr>";
            for(let r=0;r<row;r++){
               html+="<tr>";
               for(let c=0;c<2;c++){
                   html+="<td>";
                   html+="<input type='text' name='name"+c+""+r+"'>";
                   html+="</td>";
               }
               for(let c=2;c<6;c++){
                   html+="<td>";
                   html+="<input type='number' name='name"+c+""+r+"'>";
                   html+="</td>";
               }
               c=6;
                html+="<td>";
                   html+="<input type='file' name='name"+c+""+r+"'>";
                   html+="</td>";
               html+="</tr>"; 
            }
            html+="</table>";
            html+="<input type = 'submit' value = 'Upload'/>";
            html+="</form>";
            document.getElementById("tablearea").innerHTML=html;
    }
        </script>
    
    <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
             <% if (request.getAttribute("addedelement") != null) { %>
        <h2>inserted data:</h2>
        <%
            // Retrieve the 2D ArrayList from the request attribute
            ArrayList<ArrayList<Object>> addedelement = (ArrayList<ArrayList<Object>>) request.getAttribute("addedelement");
            // Display the contents of the 2D ArrayList
            for (ArrayList<Object> row : addedelement) {
                for (Object element : row) {
                    out.print(element + ",");
                }
                out.println("<br>");
            }
        %>
    <% } %>
    </div>
    </div>
     <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
     <% if (request.getAttribute("notaddedelement") != null) { %>
        <h2>not inserted data inserted data:</h2>
        <%
            // Retrieve the 2D ArrayList from the request attribute
            ArrayList<ArrayList<Object>> notaddedelement = (ArrayList<ArrayList<Object>>) request.getAttribute("notaddedelement");
            // Display the contents of the 2D ArrayList
            for (ArrayList<Object> row : notaddedelement) {
                for (Object element : row) {
                    out.print(element + ",");
                }
                out.println("<br>");
            }
            out.println("<h3>plesase chack manualy and add these data with currection in given csv file and upload file again<h3>");
        %>
    <% } %>
    </div>
    </div>
 
        </div>
        </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-3"></div>
                <div>
                    <table style="width:100%" class="tbl" border="1">
<tr>
<td>S. No.</td>
<td>Image</td>
<td>name</td>
<td>discription</td>
<td>rate</td>
<td>quantity</td>
<td>Delete</td>
<td>edit</td>

</tr>
<h1>
<% 
String path=request.getServletContext().getRealPath("images");
%>
</h1>

<%

try{
  dbconn connection=new dbconn();
Statement statement =connection.dbconnections().createStatement();
String sql ="select * from product where saler_id='"+i+"' and quantity>0";
ResultSet  resultSet = statement.executeQuery(sql);
int j=1;
while(resultSet.next()){
int pid=resultSet.getInt("id");
%>
<tr>
    <td><%=j%></td>
<td><img src="images/<%=resultSet.getString("imagename") %>" style="width:40px"/></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("Description") %></td>
<td><%=resultSet.getInt("price") %></td>
<td><%=resultSet.getInt("quantity") %></td>
<td> <a href="/GROCRY/deleteproduct?id=<%=pid %>">Delete</a></td>
<td> <a href="/GROCRY/admin/oneitemupdate.jsp?id=<%=pid %>">Edit</a></td>

<!--<a href="/GROCRY/update?id=<%=pid %>">Edit</a>-->
</tr>
<%
    j++;
}
 
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
    </div>
   </div>
</div>
    
     
                     
    </body>
</html>
