<%-- 
    Document   : AllOrders
    Created on : Apr 25, 2021, 6:31:43 PM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@include file="database.jsp" %>
<!DOCTYPE html>

<%! String id;%>
<%! String name;%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AdminLTE 3 | DataTables</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="admin/assests/plugins/fontawesome-free/css/all.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="admin/assests/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="admin/assests/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
        <link rel="stylesheet" href="admin/assests/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="admin/assests/dist/css/adminlte.min.css">
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="../../index3.html" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                </ul>

                <!-- SEARCH FORM -->
                <form class="form-inline ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <!-- Messages Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-comments"></i>
                            <span class="badge badge-danger navbar-badge">3</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="admin/assests/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Brad Diesel
                                            <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">Call me whenever you can...</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="admin/assests/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            John Pierce
                                            <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">I got your message bro</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="admin/assests/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Nora Silvester
                                            <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">The subject goes here</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                        </div>
                    </li>
                    <!-- Notifications Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-bell"></i>
                            <span class="badge badge-warning navbar-badge">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-envelope mr-2"></i> 4 new messages
                                <span class="float-right text-muted text-sm">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-users mr-2"></i> 8 friend requests
                                <span class="float-right text-muted text-sm">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-file mr-2"></i> 3 new reports
                                <span class="float-right text-muted text-sm">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                            <i class="fas fa-th-large"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="admin/admin/index3.html" class="brand-link">
                    <img src="admin/assests/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">AdminLTE 3</span>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="admin/assests/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                        </div>
                        <div class="info">
                            <a href="#" class="d-block">Alexander Pierce</a>
                        </div>
                    </div>

                    <!-- SidebarSearch Form -->
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item ">
                                <a href="home.jsp" class="nav-link ">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Dashboard 
                                    </p>
                                </a>

                            </li>
                            <li class="nav-item">
                                <a href="Allitems.jsp" class="nav-link ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        All Items
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="addproduct.jsp" class="nav-link ">
                                    <i class="nav-icon fas fa-copy"></i>
                                    <p>
                                        Add Items
                                    </p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-chart-pie"></i>
                                    <p>
                                        Add Sellers
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link active">
                                    <i class="nav-icon fas fa-tree"></i>
                                    <p>
                                        All Orders
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="AllCustomer.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-edit"></i>
                                    <p>
                                        All Customers
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-chart-pie"></i>
                                    <p>
                                        Orders
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="AllOrders.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>All
                                             <span class="badge badge-primary right">6</span>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item active">
                                        <a href="#" class="nav-link active">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Pending
                                            <span class="badge badge-secondary right">6</span>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="ConfrimOrder.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Confirmed
                                            <span class="badge badge-light right">6</span>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="pages/charts/uplot.html" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Delivered
                                            <span class="badge badge-success right">6</span>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="pages/charts/uplot.html" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Canceled
                                            <span class="badge badge-danger right">6</span>
                                            </p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-table"></i>
                                    <p>
                                        Stock
                                    </p>
                                </a>
                            </li>
                            <li class="nav-header">EXAMPLES</li>


                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Orders</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Orders</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="card">
                        <div class="col-3">
                            <button type="submit" class="btn btn-block btn-success" onclick="myApp.printTable()">Print</button>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">

                            <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                <div class="row">
                                    <div class="col-sm-12">
                                        <%                                            
                                        String query = "SELECT * FROM orders where status='Pending'";
                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery(query);

                                            if (rs.next()) {
                                        %>
                                        <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" role="grid" aria-describedby="example1_info">
                                            <thead>
                                                <tr>
                                                    <th>Order Num</th>
                                                    <th>Customer Name</th>
                                                    <th>Product Name</th>
                                                    <th>Price</th>
                                                    <th>Date</th>
                                                    <th>Status</th>
                                                    <th style="width: 20%"></th>

                                                </tr>
                                            </thead>

                                            <%
                                                do {

                                                    id = rs.getString("id");
                                                    String name = rs.getString("order_num");
                                                    String disc = rs.getString("first_name");
                                                    String price = rs.getString("product_name");
                                                    String discount = rs.getString("price");
                                                    String date = rs.getString("date");
                                                    String main = rs.getString("status");
                                            %>
                                            <tbody>

                                                <tr>
                                                    <td><%=name%></td>
                                                    <td><%=disc%></td>
                                                    <td><%=price%></td>
                                                    <td><%=discount%></td>
                                                    <td><%=date%></td>
                                                   
                                                    <td>
                                                        <span class="badge badge-danger"><%=main%></span>    
                                                    </td>
                                                   
                                                    <td>

                                                        <a class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#modal-xl" onclick="passid(<%=id%>)">
                                                            <i class="fas fa-folder">
                                                            </i> View
                                                        </a>
                                                        <a class="btn btn-info btn-sm" data-toggle="modal" data-target="#modal-sm" onclick="editChange(<%=name%>,<%=id%>)">
                                                            <i class="fas fa-pencil-alt">
                                                            </i> Edit
                                                        </a>
                                                        <a class="btn btn-danger btn-sm" href="#">
                                                            <i class="fas fa-trash">
                                                            </i> Delete
                                                        </a>
                                                    </td>

                                                </tr> 
                                            </tbody>
                                            <%
                                                    } while (rs.next());
                                                } else {
                                                    out.println("no records found");
                                                }

                                            %>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>

                    <div class="modal fade" id="modal-xl">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" id="model_header">

                                </div>
                                <div class="modal-body" id="model_body"> 

                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                    </div>

                    <div class="modal fade" id="modal-sm">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="headName">Small Modal</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body" id="statusOption">

                                </div>
                                <div class="modal-footer justify-content-between" id="statusbtn">

                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="float-right d-none d-sm-block">
                    <b>Version</b> 3.1.0-rc
                </div>
                <strong>Copyright &copy; 2014-2020 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="admin/assests/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="admin/assests/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- DataTables  & Plugins -->
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
        <!-- AdminLTE App -->
        <script src="admin/assests/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="admin/assests/dist/js/demo.js"></script>
        <!-- Page specific script -->
        <script>
                                                            var myApp = new function () {
                                                                this.printTable = function () {
                                                                    var tab = document.getElementById('example1');
                                                                    var win = window.open('', '', 'height=700,width=1650');
                                                                    win.document.write(tab.outerHTML);
                                                                    win.document.close();
                                                                    win.print();
                                                                };
                                                            };


        </script>

        <script>
            function passid(getId) {

                console.log(getId);
                xmlShop = new XMLHttpRequest();
                xmlShop.onreadystatechange = function ()
                {
                    if ((xmlShop.readyState == 4) && (xmlShop.status == 200))
                    {
                        var resptext = this.responseText;
                        console.log("Map Data >> " + resptext);
                        var dataArray = JSON.parse(resptext);
                        console.log(dataArray);
                        // document.getElementById("Fdata").innerHTML = this.responseText;
//                    var divComnt;
//                    var path = "images/";
                        for (var x = 0; x < dataArray.length; x++) {
                            console.log(dataArray[x].Product_id + " " + dataArray[x].Default_image);
                            // divComnt = "<div  class='col-lg-4 col-md-6 col-sm-6'><div class='product__item'><div class='product__item__pic set-bg' data-setbg= 'images/" + dataArray[x].Default_image + "'><ul class='product__item__pic__hover'><li><a href='#'><i class='fa fa-heart'></i></a></li><li><a href='SinglItem?id=" + dataArray[x].Product_id + "'><i class='fas fa-eye'></i></a></li><li><a href='#'><i class='fa fa-shopping-cart'></i></a></li></ul></div><div class='product__item__text'><h6><a href='#'>" + dataArray[x].Title + "</a></h6><h6><a href='#'>" + dataArray[x].Description + "</a></h6><h5>Rs " + dataArray[x].Price + "</h5></div></div></div>";
                            divComnt = "<div class='col-6'>\n\
                                        <p class='lead'>Amount Due 2/22/2014</p>\n\
                                        <div class='table-responsive'>\n\
                                            <table class='table'>\n\
                                                <tr>\n\
                                                    <th style='width:50%'>Subtotal:</th>\n\
                                                    <td>Rs " + dataArray[x].price + "</td>\n\
                                                </tr>\n\
                                                <tr>\n\
                                                    <th>Order Status </th>\n\
                                                    <td><span class='badge badge-success'>" + dataArray[x].status + "</span></td>\n\
                                                </tr>\n\
                                            </table>\n\
                                        </div>\n\
                                    </div>";
                            divHeadr = " <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'>\n\
                                    <span aria-hidden='true'>&times;</span>\n\
                                     </button>\n\
                                      <div class='col-4 '>\n\
                                         From \n\
                                        <address>\n\
                                         <strong>7ring </strong><br>\n\
                                            41/1 Mawathgama<br>\n\
                                            Homagama,Sri Lanka<br>\n\
                                            Phone: 011234564789<br>\n\
                                            Email:7rings@gmail.com\n\
                                         </address>\n\
                                         </div>\n\
                                            <div class='col-4'>\n\
                                        To\n\
                                        <address>\n\
                                            <strong>" + dataArray[x].first_name + "</strong><br>\n\
                                            " + dataArray[x].address1 + "<br>\n\
                                           " + dataArray[x].address2 + "<br>\n\
                                            Email:" + dataArray[x].email + "\n\
                                        </address>\n\
                                    </div>\n\
                                    <div class='col-4'>\n\
                                        <b>Invoice #007612</b><br>\n\
                                        <br>\n\
                                        <b>Order ID:</b>" + dataArray[x].order_num + "<br>\n\
                                        <b>Payment Due:</b> 2/22/2014<br>\n\
                                        <b>Account:</b> 968-34567\n\
                                    </div>";

                        }
                        document.getElementById("model_header").innerHTML = divHeadr;
                        document.getElementById("model_body").innerHTML = divComnt;
                    }
                };
                xmlShop.open("GET", "oderetail?id=" + getId, true);

                xmlShop.send();
            }




            function editChange(Name, id) {

                divComnt = " <div class='form-group'>\n\
                                <label>Status</label>\n\
                                     <select class='form-control' id='st'>\n\
                                        <option>Success</option>\n\
                                        <option>Pending</option>\n\
                                    </select>\n\
                            </div>";
                divButton = " <button type='button' class='btn btn-primary' onclick='channgeStatus(" + id + ")'>Save changes</button>";

                document.getElementById("statusOption").innerHTML = divComnt;
                document.getElementById("statusbtn").innerHTML = divButton;
                document.getElementById("headName").innerHTML = Name;

            }

            function channgeStatus(num) {
                var e = document.getElementById("st");
                var strUser = e.value;
                console.log(strUser)
                xmlShop = new XMLHttpRequest();
                xmlShop.onreadystatechange = function ()
                {
                    if ((xmlShop.readyState == 4) && (xmlShop.status == 200))
                    {
                        var resptext = this.responseText;
                        console.log("Map Data >> " + resptext);
                        if (xmlShop.responseText == "success")
                        {
                            //document.getElementById("goodsNum").innerHTML=(parseInt(document.getElementById("goodsNum").innerHTML)+1).toString(); 		
//	    	document.getElementById("AddToCart--product-template").innerHTML="Already added to shopping cart";
                            console.log("Sucess Data >> " + resptext);
                        } else {
                            //document.getElementById("AddToCart--product-template").innerHTML="Wrong, you may have added it again!";
                            console.log("error Data >> " + resptext);
                        }

                    }
                };
                xmlShop.open("GET", "changeStatus?prid=" + num + "&stone=" + strUser, true);

                xmlShop.send();

            }

            function shopCart_remove(goodsId) {

                xmlremove = new XMLHttpRequest();
                xmlremove.onreadystatechange = function ()
                {
                    if ((xmlremove.readyState == 4) && (xmlremove.status == 200)) {
                        if (xmlremove.responseText == "success") {
                            cnode = document.getElementById("list-goods-" + goodsId);
                            cnode.parentNode.removeChild(cnode);
                            if (!(document.getElementById("list-goods")).hasChildNodes()) {

                            }
                            document.getElementById("goodsNum").innerHTML = (parseInt(document.getElementById("goodsNum").innerHTML) - 1).toString();
                        }

                    }
                };
                xmlremove.open("GET", "RemoveCartList?goodsId=" + goodsId + "&t=" + Math.random(), true);
                xmlremove.send();
            }
        </script>

    </body>
</html>
