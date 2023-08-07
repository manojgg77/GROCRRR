<%-- Document : updateitem.jsp Created on : 12 Jun, 2023, 11:52:02 AM Author : deepa --%>
    <%@page import="databaseconnection.*" %>
        <%@page import="java.sql.ResultSet" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <% int productid=Integer.parseInt(request.getParameter("id"));
                    productshow p=new productshow();
                try{ ResultSet rs=p.productshow2(productid); %>
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
    table,td {
  border: 1px solid black;
  text-align: center;
}
                            </style>
                    </head>

                    <body style="background-image:url(image/Landscape-Color.jpg)">
                         <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar scroll</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Link</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      
    </div>
  </div>
</nav>
                       
<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
   <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><a  class="text-decoration-none text-center" href="sir.jsp">Add Product</a></button>
    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false" > <a  class="text-decoration-none text-center" href="updateitemadmin.jsp">Update</a></button>
    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><a herf="updateproduct.jsp">Profile</a></button>
    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</button>
    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</button>
  </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10 col-md-10 col-sm-5 col-7">
                                    <div class=" ff  card bg-transparent ">
                                        <form class=" m-auto d-inline text-center" action="/GROCRY/updateproduct" method="post">
                                            <table class=" text-centre">
                                                <tr class="bg-primary fw-bold">
                                                    <td style="visibility:hidden;display:none">pid</td>
                                                    <td> Product_Name</td>
                                                    <td>Description</td>
                                                    <td>price</td>
                                                    <td>discount(%)</td>
                                                    <td>quantity</td>
                                                </tr>
                                                <% int i=1; while(rs.next()){%>
                                                    <tr>
                                                        <td style="visibility:hidden;display: none"><input type="number"  style="-moz-appearance: textfield;" name="productid<%=i%>" value="<%=rs.getInt("id")%>"></td>
                                                        <td><input type="text" name="productname<%=i%>" value="<%=rs.getString("name")%>"></td>
                                                        <td><input type="text" name="productDescription<%=i%>" id="1" value="<%=rs.getString("Description")%>"> </td>
                                                        <td><input type="number" style="-moz-appearance: textfield;" name="productprice<%=i%>" value="<%=rs.getInt("price")%>"> </td>
                                                        <td><input type="number" style="-moz-appearance: textfield;" name="productdiscount_percent<%=i%>" value="<%=rs.getDouble("discount_percent")%>"></td>
                                                        <td><input type="number" style=" -moz-appearance: textfield" name="quantity<%=i%>" value="<%=rs.getInt("quantity")%>"></td>
                                                                                                          
                                                    </tr>

                                                    <%i++;} session.setAttribute("row",i--);%>
                                            </table>

                                            <%}catch (Exception e) { System.out.println( e); } %>
                                                <input type="submit" value="submit" name="submit">



                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </body>

                    </html>