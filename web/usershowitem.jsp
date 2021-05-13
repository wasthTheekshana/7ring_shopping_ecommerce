<%-- 
    Document   : usershowitem
    Created on : Apr 27, 2021, 12:02:56 AM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@include file="database.jsp" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <jsp:include page="user/head.jsp"/>
    </head>


    <body id="earrings-hoops-huggies-studs-amp-ear-stacking" class="template-product template-collection">
        <jsp:include page="user/header.jsp"/>
<%
String mainCt = request.getParameter("action");
%>
        <div id="shopify-section-collection-template-bc-sf-filter" class="shopify-section">

            <div id="CollectionSection" data-section-id="collection-template-bc-sf-filter" data-section-type="collection-template">
                <section id="collection-hero" class="collection-hero">
                    <div style="position: relative; padding: 0px; margin: 0px;">

                        <img class="collectionbannerimages" src="//cdn.shopify.com/s/files/1/0248/3290/1223/collections/liars-earrings-collection.jpg?v=1601918253" alt="EARRINGS" />

                        <div class="collectionbannertitle">
                            <h1 class="collectionbannertext"><%=mainCt%></h1>
                        </div>
                    </div>
                </section>
                <section id="collection-page-top" class="collection-page-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 offset-xl-3 d-flex align-items-center">

                                <div class="filter-dropdown__wrapper text-center collection-filters  short-by ml-auto d-none d-sm-none d-md-block">
                                    <div class="filter-dropdown">
                                        <div class="bc-sf-filter-toolbar-item text-right bc-sf-filter-custom-sorting" id="bc-sf-filter-top-sorting">



                                            <span class="bc-sf-filter-skeleton-text bc-sf-filter-skeleton-width1"></span>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="product spad">
                    <div class="container">
                        <div class="row">
                            <!--                        <div class="col-lg-3 col-md-5">
                                                        <div class="sidebar">
                                                            <div class="sidebar__item">
                                                                <h4>Department</h4>
                                                                <ul>
                                                                    <li><a href="#">Fresh Meat</a></li>
                                                                    <li><a href="#">Vegetables</a></li>
                                                                    <li><a href="#">Fruit & Nut Gifts</a></li>
                                                                    <li><a href="#">Fresh Berries</a></li>
                                                                    <li><a href="#">Ocean Foods</a></li>
                                                                    <li><a href="#">Butter & Eggs</a></li>
                                                                    <li><a href="#">Fastfood</a></li>
                                                                    <li><a href="#">Fresh Onion</a></li>
                                                                    <li><a href="#">Papayaya & Crisps</a></li>
                                                                    <li><a href="#">Oatmeal</a></li>
                                                                </ul>
                                                            </div>
                                                                <div class="sidebar-widget">
                                                                <h4 class="pro-sidebar-title">Categories</h4>
                                                                <div class="sidebar-widget-list">
                                                                    <ul>
                                                                        <li>
                                                                            <div class="sidebar-widget-list-left">
                                                                                <input type="checkbox" /> <a href="#">Fresh Fruit<span>(17)</span> </a>
                                                                                <span class="checkmark"></span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sidebar-widget-list-left">
                                                                                <input type="checkbox" value="" /> <a href="#">Fresh Vegetables <span>(17)</span></a>
                                                                                <span class="checkmark"></span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sidebar-widget-list-left">
                                                                                <input type="checkbox" value="" /> <a href="#">Fresh Salad & Dips<span>(17)</span> </a>
                                                                                <span class="checkmark"></span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sidebar-widget-list-left">
                                                                                <input type="checkbox" value="" /> <a href="#">Milk,Butter & Eggs<span>(17)</span> </a>
                                                                                <span class="checkmark"></span>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="sidebar__item">
                                                                <h4>Price</h4>
                                                                <div class="price-range-wrap">
                                                                    <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="540">
                                                                        <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                                                    </div>
                                                                    <div class="range-slider">
                                                                        <div class="price-input">
                                                                            <input type="text" id="minamount">
                                                                            <input type="text" id="maxamount">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="sidebar__item sidebar__item__color--option">
                                                                <h4>Colors</h4>
                                                                <div class="sidebar__item__color sidebar__item__color--white">
                                                                    <label for="white">
                                                                        White
                                                                        <input type="radio" id="white">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__color sidebar__item__color--gray">
                                                                    <label for="gray">
                                                                        Gray
                                                                        <input type="radio" id="gray">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__color sidebar__item__color--red">
                                                                    <label for="red">
                                                                        Red
                                                                        <input type="radio" id="red">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__color sidebar__item__color--black">
                                                                    <label for="black">
                                                                        Black
                                                                        <input type="radio" id="black">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__color sidebar__item__color--blue">
                                                                    <label for="blue">
                                                                        Blue
                                                                        <input type="radio" id="blue">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__color sidebar__item__color--green">
                                                                    <label for="green">
                                                                        Green
                                                                        <input type="radio" id="green">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="sidebar__item">
                                                                <h4>Popular Size</h4>
                                                                <div class="sidebar__item__size">
                                                                    <label for="large">
                                                                        Large
                                                                        <input type="radio" id="large">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__size">
                                                                    <label for="medium">
                                                                        Medium
                                                                        <input type="radio" id="medium">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__size">
                                                                    <label for="small">
                                                                        Small
                                                                        <input type="radio" id="small">
                                                                    </label>
                                                                </div>
                                                                <div class="sidebar__item__size">
                                                                    <label for="tiny">
                                                                        Tiny
                                                                        <input type="radio" id="tiny">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="sidebar__item">
                                                                <div class="latest-product__text">
                                                                    <h4>Latest Products</h4>
                                                                    <div class="latest-product__slider owl-carousel">
                                                                        <div class="latest-prdouct__slider__item">
                                                                            
                            <%                                                String qr = "Select * from products";
                                Statement ps = con.createStatement();
                                ResultSet rs = ps.executeQuery(qr);
                                if (rs.next()) {

                                    do {

                                        String name = rs.getString("title");
                                        String disc = rs.getString("description");
                                        String price = rs.getString("price");
                                        String discount = rs.getString("discount");
                                        String main = rs.getString("mainCate");
                                        String sub = rs.getString("subCate");
                                        String image = rs.getString("default_image");
                            %>
                        
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="./images/<%=image%>"  height="50px" width="50px" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=name%></h6>
                                    <span><%=price%></span>
                                </div>
                            </a>
                            <%
                                    } while (rs.next());
                                } else {
                                    out.println("Record NotFound");
                                }
                            %>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="images/0307edd1732f28a698cb0e6d473411df.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="images/0307edd1732f28a698cb0e6d473411df.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="images/0307edd1732f28a698cb0e6d473411df.jpg" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Crab Pool Security</h6>
                                    <span>$30.00</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->

                            <div style="list-style: none" class="col-lg-3 order-lg-first col-md-12 order-md-last mb-res-md-60px mb-res-sm-60px">
                                <div class="left-sidebar">
                                    <div class="sidebar-heading">
                                        <div class="main-heading">
                                            <h2>Filter By</h2>
                                        </div>
                                        <!-- Sidebar single item -->
                                        <div class="sidebar-widget">
                                            <h4 class="pro-sidebar-title">Categories</h4>
                                            <div class="sidebar-widget-list">
                                                <ul style="list-style: none">
                                                    <li style="list-style: none">
                                                        <div class="sidebar-widget-list-left">
                                                            <input type="checkbox" /> <a href="#">Jewellry<span>(17)</span> </a>
                                                            <span class="checkmark"></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="sidebar-widget-list-left">
                                                            <input type="checkbox" value="" /> <a href="#">Pieceising<span>(17)</span></a>
                                                            <span class="checkmark"></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="sidebar-widget-list-left">
                                                            <input type="checkbox" value="" /> <a href="#">Accessories<span>(17)</span> </a>
                                                            <span class="checkmark"></span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- Sidebar single item -->
                                    </div>
                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget mt-20">
                                        <h4 class="pro-sidebar-title">Price</h4>

                                        <div class="price-filter mt-10">
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price" placeholder="Add Your Price" />

                                            </div>
                                            <div id="slider-range"></div>
                                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="540">
                                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                            </div>
                                            <div class="range-slider">
                                                <div class="price-input">
                                                    <input type="text" id="minamount">
                                                    <input type="text" id="maxamount">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="sidebar-widget mt-30">
                                        <h4 class="pro-sidebar-title">Material Colors</h4>
                                        <div class="sidebar-widget-list">
                                            <%
                                                String sql = "SELECT DISTINCT(material_color) FROM products WHERE STATUS=1 ORDER BY product_id DESC;";
                                                Statement st = con.createStatement();
                                                ResultSet rs3 = st.executeQuery(sql);
                                                while (rs3.next()) {
                                            %>
                                            <ul style="list-style: none"    >
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input class="common_selector" type="checkbox" id="material" value="<%=rs3.getString(1)%>" onclick="shoppingCart()"/><a href="#"><%=rs3.getString(1)%></a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>

                                            </ul>
                                            <%}%>
                                        </div>
                                    </div>

                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget mt-30">
                                        <h4 class="pro-sidebar-title">Size</h4>
                                        <div class="sidebar-widget-list">
                                            <ul style="list-style: none">
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" /> <a href="#">X<span>(4)</span> </a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" value="" /> <a href="#">M<span>(4)</span></a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" value="" /> <a href="#">L<span>(4)</span> </a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" value="" /> <a href="#">XL<span>(4)</span> </a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="sidebar-widget mt-30">
                                        <h4 class="pro-sidebar-title">Stone</h4>
                                        <div class="sidebar-widget-list">
                                            <%
                                                String stne = "SELECT DISTINCT(stone) FROM products WHERE STATUS=1 ORDER BY product_id DESC;";
                                                Statement stateStone = con.createStatement();
                                                ResultSet ReStone = stateStone.executeQuery(stne);
                                                while (ReStone.next()) {
                                            %>
                                            <ul style="list-style: none">
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input class="common_selector" type="checkbox" id="stone" value="<%=ReStone.getString(1)%>" onclick="shoppingCart"/> <a href="#"><%=ReStone.getString(1)%></a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>

                                            </ul>
                                            <%}%>
                                        </div>
                                    </div>
                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget mt-30">
                                        <h4 class="pro-sidebar-title">Dimension</h4>
                                        <div class="sidebar-widget-list">
                                            <ul style="list-style: none">
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" /> <a href="#">40x60<span>(5)</span> </a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" value="" /> <a href="#">60x90<span>(5)</span></a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sidebar-widget-list-left">
                                                        <input type="checkbox" value="" /> <a href="#">90x120<span>(5)</span> </a>
                                                        <span class="checkmark"></span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Sidebar single item -->
<!--                                    <div class="sidebar-widget tag mt-30">
                                        <div class="main-heading">
                                            <h2>Tag</h2>
                                        </div>
                                        <div class="sidebar-widget-tag">
                                            <ul>
                                                <li><a href="#">Fresh Fruit</a></li>
                                                <li><a href="#"> Fresh Vegetables</a></li>
                                                <li><a href="#">Fresh Salad</a></li>
                                                <li><a href="#"> Butter & Eggs</a></li>
                                            </ul>
                                        </div>
                                    </div>-->
                                    <!-- Sidebar single item -->
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-7">
                                <div class="product__discount">
                                    <div class="section-title product__discount__title">
                                        <h2>Sale Off</h2>
                                    </div>
                                    <div class="row">
                                        <div class="product__discount__slider owl-carousel">
                                            <%

                                                String qr1 = "Select * from products ";
                                                Statement ps1 = con.createStatement();
                                                ResultSet rs1 = ps1.executeQuery(qr1);
                                                if (rs1.next()) {

                                                    do {

                                                        String name1 = rs1.getString("title");
                                                        String disc1 = rs1.getString("description");
                                                        String price1 = rs1.getString("price");
                                                        String discount1 = rs1.getString("discount");
                                                        String main1 = rs1.getString("mainCate");
                                                        String su1b = rs1.getString("subCate");
                                                        String image1 = rs1.getString("default_image");
                                            %>
                                            <div class="col-lg-4">
                                                <div class="product__discount__item">
                                                    <div class="product__discount__item__pic set-bg" data-setbg="./images/<%=image1%>">
                                                        <div class="product__discount__percent">-20%</div>
                                                        <ul class="product__item__pic__hover">
                                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="product__discount__item__text">
                                                        <span><%=main1%></span>
                                                        <h5><a href="#"><%=name1%></a></h5>
                                                        <div class="product__item__price"><%=price1%><span><%=price1%></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%
                                                    } while (rs1.next());
                                                } else {
                                                    out.println("Record NotFound");
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter__item">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-5">
                                            <div class="filter__sort">
                                                <span>Sort By</span>
                                                <select>
                                                    <option value="0">Default</option>
                                                    <option value="0">Default</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4">
                                            <div class="filter__found">
                                                <h6><span></span> Products found</h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-3">
                                            <div class="filter__option">
                                                <span class="fas fa-th-large"></span>
                                               
<!--                                                <span class="icon_ul"></span>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="Fdata"  class="row filter_data">
                                    <!--jsp code-->
                                    <%
                                        
                                        String qr2 = "Select * from products where mainCate ='" + mainCt + "'";
                                        Statement ps2 = con.createStatement();
                                        ResultSet rs2 = ps2.executeQuery(qr2);
                                        if (rs2.next()) {

                                            do {

                                                String ids = rs2.getString("product_id");
                                                String name2 = rs2.getString("title");
                                                String disc1 = rs2.getString("description");
                                                String price2 = rs2.getString("price");
                                                String discount1 = rs2.getString("discount");
                                                String main1 = rs2.getString("mainCate");
                                                String su1b = rs2.getString("subCate");
                                                String image2 = rs2.getString("default_image");
                                    %>


                                    <div  class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg="images/<%=image2%>">

                                                <ul class="product__item__pic__hover">
                                                    <img src=""/>
                                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="SinglItem?id=<%=ids%>"><i class="fas fa-eye"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product__item__text">
                                                <h6><a href="#"><%=name2%></a></h6>
                                                <h5>Rs <%=price2%></h5>
                                            </div>
                                        </div>
                                    </div>


                                    <%
                                            } while (rs2.next());
                                        } else {
                                            out.println("Record NotFound");
                                        }
                                    %>
                                    <!--jsp code-->
                                </div>
                                    <div class="col-lg-4 col-md-4">
                                <div class="product__pagination">
                                    <a href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <a href="#"><i class="fas fa-chevron-right"></i></i></a>
                                </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>

        </div>

    <limespot></limespot>


    <jsp:include page="user/footer.jsp"/>



    <script type="text/javascript">


//      function shoppingCart(){
//           var materialColor = get_filter_text('material');
//           var stones = get_filter_text('stone');
//         
//           console.log(materialColor);
//         xmlShop=new XMLHttpRequest();
//	xmlShop.onreadystatechange=function()
//	  {
//	  if ((xmlShop.readyState==4)&&(xmlShop.status==200))
//	    {
//	    	document.getElementById("Fdata").innerHTML=this.responseText;
//	   
//	    }
//	  };
//	xmlShop.open("GET","fetch_data?material="+materialColor+"&stone="+stones+"&t="+Math.random(),true);
//	
//	xmlShop.send();
//      }


        function shoppingCart() {
            var materialColor = get_filter_text('material');
            var stones = get_filter_text('stone');

            console.log(materialColor);
            xmlShop = new XMLHttpRequest();
            xmlShop.onreadystatechange = function ()
            {
                if ((xmlShop.readyState == 4) && (xmlShop.status == 200))
                {
                    var resptext = this.responseText;
                    console.log("Map Data >> " + resptext);
                    var dataArray = JSON.parse(resptext);
//                    document.getElementById("Fdata").innerHTML = this.responseText;
                    var divComnt;
                    var path = "images/";
                    for (var x = 0; x < dataArray.length; x++) {
                        console.log(dataArray[x].Product_id + " " + dataArray[x].Default_image);
                        divComnt = "<div  class='col-lg-4 col-md-6 col-sm-6'><div class='product__item'><div class='product__item__pic set-bg' data-setbg='images/" + dataArray[x].Default_image + "'><ul class='product__item__pic__hover'><li><a href='#'><i class='fa fa-heart'></i></a></li><li><a href='SinglItem?id=" + dataArray[x].Product_id + "'><i class='fas fa-eye'></i></a></li><li><a href='#'><i class='fa fa-shopping-cart'></i></a></li></ul></div><div class='product__item__text'><h6><a href='#'>" + dataArray[x].Title + "</a></h6><h6><a href='#'>" + dataArray[x].Description + "</a></h6><h5>Rs " + dataArray[x].Price + "</h5></div></div></div>";
                        //tablecont = tablecont + "<tr><td>" + dataArray[x].username + "</td><td><a class='btn btn-success'> online</a></td><td><a id='onlineStatus' onclick= emailGuest('" + dataArray[x].user_id + "','" + dataArray[x].username + "'); class='btn btn-primary'>Chat</a></td></tr>";
//                               tablecont = tablecont ="<span>" + dataArray[x].username + "</span><a onclick= emailGuest('" + dataArray[x].user_id + "'); class='btn btn-primary'>Chat</a></br><div><p>Online</p></div>";
                    }
                    document.getElementById("Fdata").innerHTML = divComnt;
                }
            };
            xmlShop.open("GET", "test?material=" + materialColor + "&stone=" + stones + "&t=" + Math.random(), true);

            xmlShop.send();
        }

        function get_filter_text(text_id) {
            var filterData = [];
            $('#' + text_id + ':checked').each(function () {
                filterData.push($(this).val().trim());
            });
            console.log(filterData);
            return filterData;
        }

        $(document).ready(function () {

//            $('.common_selector').click(function () {
//                 var action = 'data';
//                var materialColor = get_filter_text('material');
//                console.log("next"+ ""+materialColor);
//                $.ajax({
//                    url: "fetch_data",
//                    method: "GET",
//                    data: {
//                       action: action,
//                        material: materialColor
//                    },
//                    success: function (data) {
//                        $('.filter_data').html(data);
//                    }
//                });
//            });
//
//            function get_filter_text(text_id) {
//                var filterData = [];
//                $('#' + text_id + ':checked').each(function () {
//                    filterData.push($(this).val().trim());
//                });
//                console.log(filterData);
//                return filterData;
//            }

//            filter_data();
//            function filter_data() {
//                var action = 'data';
//                var materialColor = get_filter('material_color');
//                $.ajax({
//                    url: "fetch_data",
//                    method: "POST",
//                    data: {
//                      //  action: action,
//                        materialColor: materialColor
//                    },
//                    success: function (data) {
//                        $('.filter_data').html(data);
//                    }
//                });
//            }

//             function get_filter(class_name) {
//                var filter = [];
//                $('.' + class_name + ':checked').each(function() {
//                    filter.push($(this).val());
//                });
//                console.log(filter);
//                return filter;
//            }

//   $('.common_selector').click(function() {
//                filter_data();
//            });

        });
    </script>


    <!-- JS Theme ================================================== -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/popper.min.js?enable_js_minification=1&amp;v=18011082051163023420" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bootstrap.min.js?enable_js_minification=1&amp;v=3527192983770485065" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/slick.min.js?enable_js_minification=1&amp;v=7177913489436168581" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/swiper.min.js?enable_js_minification=1&amp;v=12550984555132179135" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/headroom.js?enable_js_minification=1&amp;v=9110114062153987833" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/owl.carousel.js?enable_js_minification=1&amp;v=16414960863540295069" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/breaking-news-ticker.min.js?enable_js_minification=1&amp;v=18415497819408566608" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/script.js?enable_js_minification=1&amp;v=18000253952937888586" type="text/javascript"></script>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/plugins.min.js"></script>
    <script src="js/main.js"></script>

    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/jquery.scrollme.js?enable_js_minification=1&amp;v=18199708983268846645" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/jquery.scrollme.min.js?enable_js_minification=1&amp;v=9192738500849226956" type="text/javascript"></script>
    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/scrollme.jquery.json?v=1741636353869597463" type="text/javascript"></script>






    <script>
        $(".js-drawer-open-button-right").click(function () {

            if ($('body').hasClass('js-drawer-open')) {

                $('.overlay-sidebar').removeClass("show-overlay-sidebar");
            } else {

                $('.overlay-sidebar').addClass("show-overlay-sidebar");

            }
        });

        $("#AddToCart--product-template").click(function () {
            setTimeout(function () {
                if ($('body').hasClass('js-drawer-open')) {
                    $('.overlay-sidebar').addClass("show-overlay-sidebar");
                } else {
                    $('.overlay-sidebar').removeClass("show-overlay-sidebar");
                }
            }, 1000);

        });

        $("#ProductSelect-option-0 input[type='radio']").click(function () {
            var radioValue = $("input:checked").val();
            $(".color-box").empty();
            if (radioValue) {

                $(".color-box").append(" : " + radioValue);
            }
        });

        function onclickSearch() {
            jQuery("#search_input_box").slideToggle();
            jQuery(".bc-sf-search-box").focus();
        }
    </script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-lib.js?enable_js_minification=1&v=16548757521262582443"></script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-search.js?enable_js_minification=1&v=9408320754591767130"></script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter.js?enable_js_minification=1&v=6809953658323563279"></script>
    <!-- Initialize App -->
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-init.js?enable_js_minification=1&v=1928539781059772811"></script>


    <script>
        var bcRvParams = {
            settings: {
                isCollectionPage: true,
                showOnCollectionPage: true
            }
        };
    </script>



    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-recently-viewed-product-lib.min.js?enable_js_minification=1&v=4584116947721290547"></script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-recently-viewed-product-init.js?enable_js_minification=1&v=2256318909928894122"></script>
    <!--end-bc-recently-viewed-init-->
    <!-- end-bc-recently-viewed-product-init -->

    <!--start-bc-most-popular-product-init-->
    <!-- start-bc-popular-product-init -->



    <!-- end-bc-popular-product-init -->

    <!--end-bc-most-popular-product-init-->


    <script type="text/javascript">
        var iwish_shop = "liars-lovers.myshopify.com";
        var iwish_pro_template = false;
        var iwish_cid = "";
        //Add to Wishlist - Product Page Text
        var iwish_added_txt = '<img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart.svg?v=7412119820264960115" class="fal"/>';
        var iwish_add_txt = '<img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart-hollow.svg?v=11913852992310223610" class="fal"/>';
        //Add to Wishlist - Collection Page Text
        var iwish_added_txt_col = '<img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart.svg?v=7412119820264960115" class="fal"/>';
        var iwish_add_txt_col = '<img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart-hollow.svg?v=11913852992310223610" class="fal"/>';
        //Quick View - Classes
        //var iwish_qvButton = '.quick_view';
        //var iwish_qvWrapper = '.reveal-modal';
    </script>
    <script src="https://cdn.myshopapps.com/iwish/iwishlist.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery("a[href='/apps/iwish']").click(function (e) {
                if (typeof (Storage) !== "undefined") {
                    e.preventDefault();
                    iWishPost('/apps/iwish', {
                        iwishlist: JSON.stringify(iWishlistmain),
                        cId: iwish_cid
                    });
                }
            });
            jQuery(".iWishAdd").click(function () {
                var iWishvId = jQuery(this).parents(iwishWrapperClass).find(iWishVarSelector).val();
                iwish_add(jQuery(this), iWishvId);
                return false;
            });
            /*jQuery(".iWishAddColl").click(function() {
             var iWishvId = jQuery(this).attr("data-variant");
             iwish_addCollection(jQuery(this),iWishvId);
             return false;
             });*/
            iwishCheckColl();
        });

        function onclickCollection(elem) {
            var iWishvId = jQuery(elem).attr("data-variant");
            iwish_addCollection(jQuery(elem), iWishvId);
            return false;
        }

        function iwishCheckColl() {
            if (jQuery(".iwishcheck").length > 0) {
                jQuery(".iwishcheck").each(function () {
                    var iWishvId = jQuery(this).attr("data-variant");
                    var iWishpId = jQuery(this).attr("data-product");
                    if (isInWishlist(iWishpId, iWishvId)) {
                        jQuery(this).addClass("iwishAdded").html(iwish_added_txt_col);
                    }
                    jQuery(this).removeClass("iwishcheck");
                });
            }
        }
    </script>



    <!-- **BEGIN** Hextom USB Integration // Main Include - DO NOT MODIFY -->
    <!-- **BEGIN** Hextom USB Integration // Main - DO NOT MODIFY -->
    <script type="application/javascript">
        window.hextom_usb = {
        p1: [

        ],
        p2: [

        ],
        p3: {

        }
        };
    </script>
    <!-- **END** Hextom USB Integration // Main - DO NOT MODIFY -->
    <!-- **END** Hextom USB Integration // Main Include - DO NOT MODIFY -->

    <script>
        mlvedaFlagCalled = true;
    </script>




    <noscript>
    <style>
        .limoniapps-discountninja-block { animation: unset !important; }
        .limoniapps-discountninja-block:after { animation: unset !important; }
        .limoniapps-discountninja-block .limoniapps-discountninja-button-spinner:before { animation: unset !important; }
    </style>
    <div class="limoniapps-discountninja-warning-nojs">This website uses JavaScript to apply discounts. To be eligible for discounts, please enable JavaScript for your browser.</div>
    </noscript>

</body>

</html>
