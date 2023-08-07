 

    <%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.Statement"%>
 
 
        <%@page import="java.sql.ResultSet" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
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

                    </head>

                    <body >
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
     <a href="updateitemadmin.jsp"><button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false"><a  class="text-decoration-none text-center" href="updateitemadmin.jsp">Update</a></button></a>
    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><a herf="updateproduct.jsp">Profile</a></button>
    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</button>
    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
    <div class="container ">
 	<div class="row ">
    	<div class="col  col-lg-8" style="width:400px ;margin-left: 50%">
    	  <form name="fileform" action="AddImage1" method="post" enctype="multipart/form-data">
    	<div class="mb-3">
 			 <label for="formGroupExampleInput" class="form-label">Add Product Information</label>
  			</div>
    		<div class="mb-3">
 			 <label for="formGroupExampleInput" class="form-label">Product Name:-</label>
  				<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter Product Name.." name="name">
				</div>
			<div class="mb-3">
  			<label for="formGroupExampleInput2" class="form-label">Product Rate:-</label>
  			<input type="number" style="-moz-appearance:textfield" class="form-control" id="formGroupExampleInput2" placeholder="Enter Product Rate..." name="rate">
			</div>
                        	<div class="mb-3">
  			<label for="formGroupExampleInput2" class="form-label">Product Quantity:-</label>
  			<input type="number" style="-moz-appearance:textfield" class="form-control" id="formGroupExampleInput2" placeholder="Enter Product Rate..." name="quantity">
			</div>
			<div class="mb-3">
  				  Select Image :
  			 <input type="file" name="image">
   					</div>
			<div class="mb-3">
  			<input type="submit" class="form-control" id="formGroupExampleInput2" value="Add Product">
			</div>
		</form>
		
		
<table border="1" width="500px">
<tr>
<td>id.</td>
<td>Image</td>
<td>name</td>
<td>rate</td>
<td>quantity</td>
<td>Delete</td>
<td>edit</td>

</tr>
<h1>
<% 
String path=request.getServletContext().getRealPath("images");
System.out.print(path);
%>
</h1>

<%

try{
  dbconn connection=new dbconn();
Statement statement =connection.dbconnections().createStatement();
String sql ="select * from product";
ResultSet  resultSet = statement.executeQuery(sql);
while(resultSet.next()){
int pid=resultSet.getInt("id");
System.out.println(""+resultSet.getString("name"));
%>
<tr>
<td><%=pid %></td>
<td><img src="images/<%=resultSet.getString("imagename") %>" style="width:100px"/></td>
<td><%=resultSet.getString("name") %></td>

<td><%=resultSet.getInt("price") %></td>
<td><%=resultSet.getInt("quantity") %></td>
<td> <a href="deleteproduct?id=<%=pid %>">Delete</a></td>
<td> <a href="update?id=<%=pid %>">Edit</a></td>
</tr>
<%
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
