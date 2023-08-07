<%-- 
    Document   : forgetpswuser
    Created on : 26 Jul, 2023, 9:13:39 AM
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
                        <form action="/GROCRY/forgetpswuser" method="post">
                            <table style="margin-top: 30px;margin-left: 30px;color:white;margin-bottom: 10px;">
                                <tr>
                                    <td>NAME</td>
                                    <td><input type="text" placeholder="Enter Username" name="username" required><br></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="Email" placeholder="Enter Email" name="uemail" required><br></td>
                                </tr>

                                <tr>
                                    <td>Phone Number</td>
                                    <td><input type="tel" placeholder="Enter phonenumber" name="uphone" required><br>
                                    </td>
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
