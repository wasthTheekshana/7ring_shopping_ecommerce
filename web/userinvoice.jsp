<%-- 
    Document   : userinvoice
    Created on : May 7, 2021, 11:10:21 PM
    Author     : wasat
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@page import="java.util.List"%>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*" %>
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
        <title>AdminLTE 3 | Invoice</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="admin/assests/plugins/fontawesome-free/css/all.min.css">
        <!-- Ekko Lightbox -->
        <link rel="stylesheet" href="admin/assests/plugins/ekko-lightbox/ekko-lightbox.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="admin/assests/dist/css/adminlte.min.css">
    </head>
    <body class="hold-transition sidebar-mini">



        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Invoice</h1>
                        </div>

                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">



                            <!-- Main content -->
                            <div class="invoice p-3 mb-3">
                                <!-- title row -->
                                <div class="row">
                                    <div class="col-12">
                                        <h4>
                                            <i class=""></i> 7ring.

                                            <small class="float-right"><%= (new java.util.Date()).toLocaleString()%></small>
                                        </h4>
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

                                <!-- this row will not appear when printing -->
                                <div class="row no-print">
                                    <div class="col-12">
                                        <a href="printinvoice.jsp" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                                        <a href="index.jsp"> 
                                        <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i>Back to shop
                                        </button>
                                        </a>
                                        <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                                            <i class="fas fa-download"></i> Generate PDF
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!-- /.invoice -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>

        <script src="admin/assests/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="admin/assests/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Ekko Lightbox -->
        <script src="admin/assests/plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
        <!-- AdminLTE App -->
        <script src="admin/assests/dist/js/adminlte.min.js"></script>
        <!-- Filterizr-->
        <script src="admin/assests/plugins/filterizr/jquery.filterizr.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="admin/assests/dist/js/demo.js"></script>
        <!-- Page specific script -->

        <script src="admin/assests/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="admin/assests/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="admin/assests/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="admin/assests/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
        <script src="admin/assests/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
        <script src="admin/assests/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
        <script src="admin/assests/plugins/jszip/jszip.min.js"></script>
        <script src="admin/assests/plugins/pdfmake/pdfmake.min.js"></script>
        <script src="admin/assests/plugins/pdfmake/vfs_fonts.js"></script>
        <script src="admin/assests/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
        <script src="admin/assests/plugins/datatables-buttons/js/buttons.print.min.js"></script>
        <script src="admin/assests/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    </body>
</html>
