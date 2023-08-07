<%-- Document : login.jsp Created on : 5 Jun, 2023, 11:21:24 AM Author : 91967 --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>LOGIN USER </title>
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

        <body style="background-image:url( img/Landscape-Color.jpg );">
         

                <div class="container">
                    <div Style="width:100%;height: 320px ; display: inline-flex ;overflow: hidden;">


                        <div
                            style="width: 400px; height: 300px; text-align: center;  margin: auto;border-radius: 10px;border: 3px solid black ;background-color: #328089; margin-top: 10px">
                            <div style="width: 90%; height: 250px;  margin: auto;margin-top: 25px; border-radius: 10px;border: 3px solid black;overflow: hidden;background-image:url(image/pngtree-blue-background-with-geometric-forms-image_280879.jpg);">
                                <h2 style="color:#20b1c1;padding-top: 50px; color:red;text-align: center">SIGN IN</h2>
                                <form action="/GROCRY/adminlogin" method="post" style="color:white;">
                                    <table style="margin-top: 30px;margin-left: 30px;margin-bottom: 10px;">
                                        <tr>
                                            <td>Email</td>
                                            <td><input type="Email" placeholder="Enter Email" name="uemail"><br></td>
                                        </tr>
                                        <tr>
                                            <td>Password</td>
                                            <td><input type="password" placeholder="Enter your password"
                                                    name="upwd"><br></td>
                                        </tr>
                                    </table>
                                    <input type="submit" value="Submit"><br>

                                    <!--                        <button style="background-color: white"><a style="text-decoration: none" href="">Forget password</a></button>-->

                                </form>

                            </div>

                        </div>
                    </div>
        </body>

        </html>