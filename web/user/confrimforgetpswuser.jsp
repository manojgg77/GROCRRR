<%-- 
    Document   : confrimforgetpswuser
    Created on : 26 Jul, 2023, 9:40:59 AM
    Author     : deepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
                
                    <div Style="width:100%;height: 480px ; display: inline-flex; overflow: hidden;">

                        <div
                            style="width: 400px; height: 460px; text-align: center;  margin: auto;border-radius: 10px;border: 3px solid black;;background-color: #328089; margin-top: 10px">
                            <div
                                style="width: 90%; height: 410px;  margin: auto;margin-top: 25px; border-radius: 10px;border: 3px solid black;overflow: hidden;background-image:url( image/pngtree-blue-background-with-geometric-forms-image_280879.jpg);">
                                <h2 style="color:#20b1c1;padding-top: 50px; color:red;text-align: center">SIGN UP</h2>
                                 <h3 class="bg-danger fw-bold">
                                        <%@include file="/message.jsp" %>
                                    </h3><br>
                                <form action="/GROCRY/cforget" method="post">
                                    <table style="margin-top: 30px;margin-left: 30px;color:white;margin-bottom: 10px;">
                                       
                                        <tr>
                                         <td>Enter password</td>
                                         <td><input type="password" placeholder="Enter password" name="upwd" required><br></td>
                                        </tr>
                                        <tr>
                                         <td>Enter conform password</td>
                                            <td><input type="password" placeholder="Enter password again" name="cupwd" required><br></td>
                                        </tr>
                                    </table>


                                   
                                    <input type="submit" value="Submit">

                                </form>
                            </div>

                        </div>
                    </div>
            </div>
    </body>
</html>
