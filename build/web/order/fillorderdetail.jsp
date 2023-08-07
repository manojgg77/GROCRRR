<%-- 
    Document   : fillorderdetail
    Created on : 9 Jul, 2023, 8:45:01 AM
    Author     : deepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>.alert {
  padding: 20%;
  color: black;
}

/* The close button */
.closebtn {
  margin-left: 50%;
  color: white;
  font-weight: bold;
  float: center;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
  color: black;
}</style>
 <%@include file="/message.jsp" %>
        </div> 
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>orederdetail</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
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
        <body>
             <jsp:include page="../home.jsp"/> 
            <div class="container mt-3">
                    <div Style="width:100%;height: 480px ; display: inline-flex; overflow: hidden;">
                        <div style="width: 400px; height: 460px; text-align: center;  margin: auto;border-radius: 10px;border: 3px solid black;;background-color: #328089; margin-top: 10px">
                            
                            <div style="width: 90%; height: 410px;  margin: auto;margin-top: 25px; border-radius: 10px;border: 3px solid black;overflow: hidden;background-image:url( image/pngtree-blue-background-with-geometric-forms-image_280879.jpg);">
                                
                                <h2 style="color:#20b1c1;padding-top: 50px; color:WHITE ;text-align: center">ORDER DETAILS</h2>
                                 <h3 class="bg-danger fw-bold">
                                        
                                        <%   
                                        int cid=Integer.parseInt(request.getParameter("cd"));
                                        int price=Integer.parseInt(request.getParameter("price"));
                                        session.setAttribute("p_id",cid);
                                        session.setAttribute("price",price);
                                        System.out.println(cid);
                                        System.out.println(price);
                                        System.out.println(session.getAttribute("id"));
                                        %>
                                    </h3><br>
                                     
                                <form action="/GROCRY/useraddressfororder" method="post">
                                    <table style="margin-top: 30px;margin-left: 30px;color:white;margin-bottom: 10px;">
                                       <tr>
                                            <td>building name</td>
                                            <td><input type="text" placeholder="building name" name="building_name"><br></td>
                                        </tr>

                                        <tr>
                                            <td>street address</td>
                                            <td><input type="text" placeholder="street address" name="street_address"><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>city</td>
                                            <td><input type="text" placeholder="city" name="city" required><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>State</td>
                                            <td><input type="text" placeholder="State" name="State"><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>country</td>
                                            <td><input type="text" placeholder="country" name="country"><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>pin code</td>
                                            <td><input type="text" placeholder="pin code" name="pin_code" pattern="[0-9]{6}"><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Phone Number</td>
                                            <td><input type="tel" id="phone" name="phone" pattern="[0-9]{3}[0-9]{4}[0-9]{3}"><br>
                                            </td>
                                        </tr>
                                    </table>


                                   
                                    <input type="submit" value="pay(<%=price%>)" style="background-color: red">

                                </form>
                            </div>

                        </div>
                    </div>
            </div>

    </body>
</html>
