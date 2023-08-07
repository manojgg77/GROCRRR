<%-- 
    Document   : home.jsp
    Created on : 15 Jun, 2023, 2:10:22 PM
    Author     : deepa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page session="true"%>
<%@page import="databaseconnection.checkinguser"%>
<%@page import="userservlet.LoginUser"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.Base64.Decoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%
    int i = 0;
    String l = "1";
    String name = null;
    String usertype = null;
    String emailid = null;
    String sid = null;
    String i1 = (String) session.getAttribute("i1");
    if (i1 == null) {
        i1 = "1";
        i = Integer.parseInt(i1);
        session.setAttribute("id", i);
    } else {
        Decoder d = Base64.getDecoder();
        byte[] a = d.decode(i1);
        l = new String(a);
        i = Integer.parseInt(l);
        session.setAttribute("id", i);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <style>
            a{
                text-decoration: none;
            }
            /* Default width for the textfield */
            .resize-textfield {
                width: 200px;
            }
             @media (max-width: 520px) {
                 .img{
                     height:50px;
                     width:40px
                 }
                .cart{
                   
                }
                .hello{
                    display:inherit;
                }
            }
             @media (min-width: 520px) {
                  .img{
                     height:40px;
                     width:40px
                 }
                .cart{
                   display: flex;
                }
                 .hello{
                    display:flex;
                }
            }

            /* Media query for smaller screen sizes */
            @media (max-width: 950px) {
                .hello{
                    font-size:10px;
                }
                .hello1{font-size:8px;}
                .resize-textfield {
                    width: 150px;
                }
            }
            @media (min-width:700px){
                .marg{
                     margin-left: 10px;
                     font-size:12px;
                 }
            }

            /* Media query for even smaller screen sizes */
            @media (max-width: 780px) {
                .resize-textfield {
                    width: 100px;
                }
            }
                @media (max-width: 600px) {
                    .resize-textfield {
                        width: 60px;
                    }
                     @media (max-width:700px){
                .marg{
                     font-size: 8px;
                 }
            }
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
                        text-decoration: none;
                    }

                    .new a p {
                        padding-left: 10px;
                        padding-top: 10px;
                        padding-right: 10px;
                    }

                    .new a:hover {
                        border: 2px solid;
                    }
                }
            </style>
        </head>
        <body> 
            <div class="container-fluid">
                <div class="row" style="height: 50px;overflow: hidden;background-color:#100a3d;color: white;">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-4" style="display: flex;">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                            <div class="row d-flex">
                                <div class="col-lg-2 col-md-2 col-sm-1 col-1 mt-1"> <a href="/GROCRY/innerhome.jsp"><img src="/GROCRY/images/b_home.png" alt=""/></a></div>
                                <div class="col-lg-10 col-md-10 col-sm-9 col-9"><img src="/GROCRY/photos/logo.jpeg" alt="" style="border-radius:50%;" class="img"/></div>
                                
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-4 hello">
                            <p>hello<br>    
                                <a>select your Address</a></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-4 mt-2 hello" style="border-radius: 10px;display:flex">
                        <div class="col-lg-2 col-md-2">
                            <button style="width: 40px;">All</button>
                        </div>
                        <form method="post" action="searchinginput" class="hello">
                        <div class="col-lg-10 col-md-6"><input type="search" name="searchitem" class=" resize-textfield">
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-2">  
                            <button style="width: 60px;">search</button>
                        </div>
                        </form>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-4 hello">
                        <div class="col-lg-4 col-md-4 col-sm-3 col-2 mt-2">
                            <p style="display:flex"> 
                                <%
                                    if (i == 1) {
                                %>
                                <a href="/GROCRY/user/registration.jsp"><b>sign up</b></a>
                                <a href="/GROCRY/user/login.jsp" class="marg"><button><b style="">sign in</b></button></a></p>
                                <%} else {
                                    checkinguser u = new checkinguser();
                                    ResultSet r = u.getusername(l);
                                    while (r.next()) {
                                        name = r.getString("username");
                                        usertype = r.getString("usertype");
                                        emailid = r.getString("email");
                                    }
                                %>
                            <b><%=name%></b></p></div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-2 hello1"><a href="/GROCRY/logout"><button style="background-color: #100a3d;border: none;color:red">logout</button></a>

                            
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-3 cart">
                            <a class="mt-2" href="/GROCRY/cart/showcart.jsp"><button>cart</button></a><a class="col-lg-1 col-md-1"></a>
                            <a class="mt-2" href="/GROCRY/cart/showcart.jsp"><button>order</button></a>
                            <%
                            }%>
                        </div>
                        <%
                                if (usertype!=null && usertype.equals("s")){
                                    session.setAttribute("emailid", emailid);
                                    sid = (String) session.getAttribute("i11");
                                    System.out.println(sid);
                                    if (sid == null) {
                            %>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-2" style="display: flex;"><a href="/GROCRY/saler/sallerlogin.jsp" class="mt-2"><button style="">seller</button></a></div>
                        <%
                           } else {%>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-2" style="display: flex;"><a href="/GROCRY/admin/adminhome.jsp" class="mt-2"><button style="">selling</button></a></div>

                        <% } 
                        } %><% else if(usertype!=null && usertype.equals("c")){
                        %>
                        <a href="/GROCRY/saler/sallerregistration.jsp" style="font-size:8px">create a saller account</a>
                        <%
                            }
                        %>
                    </div>
                </div>
                <!--            <div class="row" style="height:640px">
                                <div class="col-lg-12" style="padding-left: 0px;padding-right: 0px;">
                                    <iframe src="innerhome.jsp" name="inner" height="100%" width="100%" title="Iframe Example"></iframe>
                                </div>  
                            </div> -->
            </div>       
        </body>
    </html>
