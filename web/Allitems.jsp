
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@include file="database.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin| All Item</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="admin/assests/plugins/fontawesome-free/css/all.min.css">
        <!-- Ekko Lightbox -->
        <link rel="stylesheet" href="admin/assests/plugins/ekko-lightbox/ekko-lightbox.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="admin/assests/dist/css/adminlte.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css"/>
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
                        <a href="../index3.html" class="nav-link">Home</a>
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
                <a href="../index3.html" class="brand-link">
                    <img src="admin/assests/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">Admin</span>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="admin/assests/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                        </div>
                        <div class="info">
                            <a href="#" class="d-block">Theekshana Harischandra</a>
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
                                <a href="#" class="nav-link active">
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
                                <a href="AllOrders.jsp" class="nav-link">
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

                                <h1>Product List</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">All Items</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-10 offset-md-1">
                                <div class="row">
                                    <div class="col-6">
                                         <div class="form-group">
                                        <div class="input-group">
                                            <input id="myInput" type="search" class="form-control form-control" placeholder="Type your keywords here">
                                            <div class="input-group-append">
                                                <button type="submit" class="btn btn-default">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="col-2">

                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Select</label>
                                            <select onchange="channgeStatus()" class="form-control " id="st">
                                                <option>Jewellery</option>
                                                <option>Piercing</option>
                                                <option>Accessories</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                               
                            </div>
                        </div>

                    </div>
                </section>
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
                                        String query = "SELECT * FROM products";
                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery(query);

                                            if (rs.next()) {
                                        %>
                                        <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" role="grid" aria-describedby="example1_info">
                                            <thead>
                                                <tr>
                                                    <th>Title</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>discount</th>
                                                    <th>Main category</th>
                                                    <th>Sub category</th>
                                                    <th>Default Image</th>
                                                    <th style="width: 20%"></th>

                                                </tr>
                                            </thead>

                                            <%
                                                do {

                                                    String name = rs.getString("title");
                                                    String disc = rs.getString("description");
                                                    String price = rs.getString("price");
                                                    String discount = rs.getString("discount");
                                                    String main = rs.getString("mainCate");
                                                    String sub = rs.getString("subCate");
                                                    String image = rs.getString("default_image");
                                            %>
                                            <tbody id="myTable">

                                                <tr>
                                                    <td><%=name%></td>
                                                    <td><%=disc%></td>
                                                    <td><%=price%></td>
                                                    <td><%=discount%></td>
                                                    <td><%=main%></td>
                                                    <td><%=sub%></td>
                                                    <td><img src="./images/<%=image%>" height="50px" width="50px"></td>

                                                    <td>

                                                        <a class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#modal-xl" >
                                                            <i class="fas fa-folder">
                                                            </i> View
                                                        </a>
                                                        <a class="btn btn-info btn-sm" data-toggle="modal" data-target="#modal-sm" >
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
                </section>
                <!-- Main content -->

            </div>  

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
        <script src="admin/assests/dist/js/pages/dashboard.js"></script>

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
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });


        //var datatable =  $.HSCore.components.HSDatatables.init($('#example1'));
        //$('#myTable').DataTable( {
        //            $('#myInput').on('keyup', function() {
        //                 $.HSCore.components.HSDatatables.init($('#example1'))
        //                    .columns(1)
        //                    .search(this.value)
        //                    .draw();
        //            });
            });
        </script>
        <script>
               function channgeStatus() {
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
                          var dataArray = JSON.parse(resptext);
                        console.log(dataArray);
                        var tablehaed ="<thead><tr><th>Title</th><th>Description</th><th>Price</th><th>discount</th><th>Main category</th><th>Sub category</th><th>Default Image</th><th style='width:20%'></th></tr></thead>";
            
                         for (var x = 0; x < dataArray.length; x++) {
                           tablehaed = tablehaed +"<tbody id='myTable'>\n\
                                        <tr>\n\
                                        <td>" + dataArray[x].title + "</td>\n\
                                        <td>" + dataArray[x].description + "</td>\n\
                                        <td>" + dataArray[x].price + "</td>\n\
                                        <td>" + dataArray[x].discount + "</td>\n\
                                        <td>" + dataArray[x].mainCate + "</td>\n\
                                        <td>" + dataArray[x].subCate + "</td>\n\
                                        <td><img src='./images/" + dataArray[x].default_image + "' height='50px' width='50px'></td>\n\
                                        <td><a class='btn btn-primary btn-sm'  data-toggle='modal' data-target='#modal-xl'>\n\
                                        <i class='fas fa-folder'></i> View</a><a class='btn btn-info btn-sm' data-toggle='modal' data-target='#modal-sm'><i class='fas fa-pencil-alt'></i> Edit </a><a class='btn btn-danger btn-sm' href='#'> <i class='fas fa-trash'> </i> Delete</a></td>\n\
                                        </tr>\n\
</tbody>";

                         }
                          document.getElementById("example1").innerHTML = tablehaed;

                    }
                };
                xmlShop.open("GET", "serachTableProdcut?mainCate=" + strUser , true);

                xmlShop.send();

            }
        </script>

    </body>
</html>

