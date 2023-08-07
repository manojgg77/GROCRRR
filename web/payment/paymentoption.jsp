<%-- 
    Document   : paymentoption
    Created on : 12 Jul, 2023, 4:01:07 PM
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
        <div class="container-fluid bg-success">
            <div class="row">
                <div class="col-lg-4">
                    <img src="../upi.png" alt=""/>
                    <input id="upi" type="radio" name="payment" value="upi">
                    <label>UPI</label>
                </div>
                <div class="col-lg-4">
                    <img src="../dabitcard.png" alt=""/>
                    <input id="dabit" type="radio" name="payment" value="DebitCard">
                    <label>Debit Card</label>
                </div>
                <div class="col-lg-4">
                    <img src="../dabitcard.png" alt=""/>
                    <input id="cradit" type="radio" name="payment" value="CraditCard">
                    <label>Cradit Card</label>
                </div>
                <div class="col-lg-4">
                    <img src="../cashimage.png" alt=""/>
                    <input id="case" type="radio" name="payment" value="cash_on_delivery">
                    <label>Cash On Delivery</label>
                </div>
            </div>
        </div>
    </body>
</html>
