<%-- 
    Document   : addproduct
    Created on : Apr 25, 2021, 2:22:37 PM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AdminLTE 3 | Gallery</title>

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
                    <span class="brand-text font-weight-light">AdminLTE 3</span>
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
                                <a href="Allitems.jsp" class="nav-link ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        All Items
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link active">
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
                                <h1>Add Items</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Add Items</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h4 class="card-title">Add Product</h4>
                                    </div>
                                    <form action="AddpRODUCTS" method="GET">
                                        <div class="card-body">

                                            <div>
                                                <div class="filter-container p-0 row">

                                                    <div class="filtr-item col-sm-2" data-category="2, 4" data-sort="black sample" >
                                                        <a href="images/img_avatar.png" data-toggle="lightbox" data-title="sample 2 - black" >
                                                            <img src="images/img_avatar.png" class="img-fluid mb-2" alt="black sample" id="profileImage"/>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Item Title</label>
                                                            <input type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="Item Title">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Description</label>
                                                            <input type="text" name="des" class="form-control" id="exampleInputPassword1" placeholder="Description">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Price</label>
                                                            <input type="number" name="price" class="form-control" id="exampleInputPassword2" placeholder="Price">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Discount</label>
                                                            <input type="number" name="dis" class="form-control" id="exampleInputPassword3" placeholder="Discount">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Quentity</label>
                                                            <input type="number" name="qty" class="form-control" id="exampleInputPassword4" placeholder="Quentity">
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="col-6">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label>Main Category</label>
                                                            <select class="form-control" name="mainCate">
                                                                <option>Jewellery</option>
                                                                <option>Watch</option>
                                                                <option>Piercing</option>
                                                                <option>Accessories</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Sub Category</label>
                                                            <select class="form-control" name="subCate">
                                                                <option>Earings</option>
                                                                <option>Neckles</option>
                                                                <option>Bracelets</option>
                                                                <option>Rings</option>
                                                                <option>Hoops</option>
                                                                <option>Hair Cilps</option>
                                                                <option>Hair Bands</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Featured</label>
                                                            <input type="text" name="featured" class="form-control" id="exampleInputPassword1" placeholder="Featured">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Material Color</label>
                                                            <select class="form-control" name="color">
                                                                <option></option>
                                                                <option>Pink</option>
                                                                <option>Black</option>
                                                                <option>Blue</option>
                                                                <option>Gray</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Stones</label>
                                                            <select class="form-control" name="stone">
                                                                <option></option>
                                                                <option>Diamond</option>
                                                                <option>Topz</option>
                                                              
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="container-fluid">
                                                <label >Images</label>
                                                <div class="input-group">
                                                    <div class="row">
                                                        <div class="col-3">
                                                            <div class="custom-file">
                                                                <input type="file" name="file" required="required" class="form-control" id="imageupload">
                                                                <label for="formFile" class="form-label">Main Image</label>

                                                                <!--<label for="formFile" class="form-label">Default file input example</label>-->
                                                                <!--<input class="form-control" type="file"  name="file" id="imageupload">-->
                                                            </div>
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="custom-file">
                                                                <input type="file" name="subImg1" required="required" class="form-control" id="exampleInputFile1">
                                                                <label for="formFile" class="form-label">Sub Image 1</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="custom-file">
                                                                <input type="file" name="subImg2" required="required" class="form-control" id="exampleInputFile2">
                                                                <label for="formFile" class="form-label" >Sub Image 2</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="custom-file">
                                                                <input type="file" name="subImg3" required="required" class="form-control" id="exampleInputFile3">
                                                                <label for="formFile" class="form-label">Sub Image 3</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <!-- /.card-body -->


                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col-3">
                                                    <button type="submit" class="btn btn-block btn-success">Save</button>
                                                </div>
                                                <div class="col-3">
                                                    <button type="" class="btn btn-block btn-primary">Preview</button>
                                                </div>

                                            </div>

                                        </div>

                                    </form>
                                </div>
                            </div>

                        </div>
                    </div><!-- /.container-fluid -->
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
            $(function () {
                $(document).on('click', '[data-toggle="lightbox"]', function (event) {
                    event.preventDefault();
                    $(this).ekkoLightbox({
                        alwaysShowClose: true
                    });
                });

                $('.filter-container').filterizr({gutterPixels: 3});
                $('.btn[data-filter]').on('click', function () {
                    $('.btn[data-filter]').removeClass('active');
                    $(this).addClass('active');
                });
            });
        </script>

        <script>
            $('#profileImage').click(function (e) {
                $('#imageupload').click();

            });

            function fastPreview(uploader) {

                if (uploader.files && uploader.files[0]) {
                    $('#profileImage').attr('src',
                            window.URL.createObjectURL(uploader.files[0]));
                }

            }

            $("#imageupload").change(function () {
                fastPreview(this);
            });
        </script>
<script>
  $(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  })
</script>
    </body>
</html>

