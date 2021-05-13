<%-- 
    Document   : printinvoice
    Created on : May 7, 2021, 11:56:52 PM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@page import="java.util.List"%>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>

<%    DataBase dbt = new DataBase();
//User me =(User)session.getAttribute("loginUser");
//UserHandle userHandle=new UserHandle();
Customer me =(Customer)session.getAttribute("loginUser");
    List<Products> list = null;
    List<Customer> Cuslist = null;
    list = dbt.findGoodsByUser(me);

%>
<%!int total = 0;%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Invoice Print</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="admin/assests/plugins/fontawesome-free/css/all.min.css">
        <!-- Ekko Lightbox -->
        <link rel="stylesheet" href="admin/assests/plugins/ekko-lightbox/ekko-lightbox.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="admin/assests/dist/css/adminlte.min.css">
    </head>
    <body>
        <div class="wrapper">
            <!-- Main content -->
            <section class="invoice">
                <!-- title row -->
                <div class="row">
                    <div class="col-12">
                        <h2 class="page-header">
                            <i class=""></i> 7ring.
                            <small class="float-right"><%= (new java.util.Date()).toLocaleString()%></small>
                        </h2>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- info row -->
                <div class="row invoice-info">
                    <div class="col-sm-4 invoice-col">
                        From
                        <address>
                            <strong>7ring </strong><br>
                            41/1 Mawathgama<br>
                            Homagama,Sri Lanka<br>
                            Phone: 011234564789<br>
                            Email:7rings@gmail.com
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        To
                        <%
                            Cuslist = dbt.findByUser(5);
                            if (Cuslist.size() != 0) {
                        %>

                        <%
                            for (int i = 0; i < Cuslist.size(); i++) {
                                Customer cus = Cuslist.get(i);

                        %>
                        <address>
                            <strong><%=cus.getFname()%><%=cus.getLname()%></strong><br>
                            <%=cus.getAddress1()%><br>
                            <%=cus.getAddress2()%><br>
                            <%=cus.getPhone()%><br>
                            Email: <%=cus.getEmail()%>
                        </address>
                        <%}%>

                        <%} else {
                        %>
                        The shopping cart is empty!;
                        <%}%>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <b>Invoice #007612</b><br>
                        <br>
                        <b>Order ID:</b> 4F3S8J<br>
                        <b>Payment Due:</b> 2/22/2014<br>
                        <b>Account:</b> 968-34567
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->

                <!-- Table row -->
                <div class="row">
                    <div class="col-12 table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Qty</th>
                                    <th>Product</th>
                                    <th>Material color</th>
                                    <th>Description</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    list = dbt.findGoodsByUser(me);
                                    if (list.size() != 0) {
                                %>

                                <%
                                    for (int i = 0; i < list.size(); i++) {
                                        Products get = list.get(i);
                                          total = total + get.getPrice();
                                %>
                                <tr>
                                    <td>1</td>
                                    <td><%=get.getTitle()%></td>
                                    <td><%=get.getMaterial_color()%></td>
                                    <td><%=get.getDescription()%></td>
                                    <td>Rs <%=get.getPrice()%></td>
                                </tr>

                                <%}%>

                                <%} else {
                                %>
                                The shopping cart is empty!;
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->

                <div class="row">
                    <!-- accepted payments column -->
                    <div class="col-6">
                        <p class="lead">Payment Methods:</p>
                        <img src="admin/assests/dist/img/credit/visa.png" alt="Visa">
                        <img src="admin/assests/dist/img/credit/mastercard.png" alt="Mastercard">
                        <img src="admin/assests/dist/img/credit/american-express.png" alt="American Express">
                        <img src="admin/assests/dist/img/credit/paypal2.png" alt="Paypal">
                    </div>
                    <!-- /.col -->
                    <div class="col-6">
                        <p class="lead">Amount Due 2/22/2014</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th style="width:50%">Subtotal:</th>
                                    <td>Rs <%=total%></td>
                                </tr>
                                <tr>
                                    <th>Shipping:</th>
                                    <td>Rs 5.80</td>
                                </tr>
                                <tr>
                                    <th>Total:</th>
                                    <td>Rs <%=total%></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        <!-- ./wrapper -->
        <!-- Page specific script -->
        <script>
            window.addEventListener("load", window.print());
        </script>
    </body>
</html>

