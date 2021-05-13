<%-- 
    Document   : header
    Created on : Apr 30, 2021, 7:29:26 PM
    Author     : wasat
--%>

<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="javax.servlet.http.HttpSession,DataBase.*,model.*,util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<div id="shopify-section-header" class="shopify-section">
    <div data-section-id="header" data-section-type="header-section" data-template="index">



        <header id="header" class="site-header all-pages-header">
            <div class="header-top-bar d-flex align-items-center">
                <div class="header-container d-flex" style="width: 100%; text-align: center !important;">
                    <p style="margin-block-start: 0px; margin-block-end: 0px; margin: 0px !important; padding: 0px !important; left: 50% !important; top: 50% !important; transform: translate(-50%, -50%) !important; position: absolute;">
                        <a href="#" style="text-decoration: none; color: #fff;"><strong>Free</strong> tracked next day
                            delivery on orders </a>
                    </p>
                </div>
            </div>
            <div class="fixed-nav">
                <div class="header-search" id="search_input_box">
                    <div class="header-container relative d-flex align-items-center h-100">

                        <form class="bc-sf-search-form" action="/search" method="get" role="search">
                            <input class="search-box-desktop bc-sf-search-box" type="search" placeholder="[Search our store]" name="q" value="">
                            <button type="submit" class="bc-sf-search-btn" style="display: none"></button>
                        </form>
                        <div class="close-search ab-r-m m-r-30" id="close_search">
                            <i class="nc-icon-outline ui-1_simple-remove"></i>
                        </div>
                    </div>
                </div>
                <div class="header-nav relative navbar-header">
                    <div class="header-container  d-flex align-items-center">
                        <div id="menu-toggle">
                            <div id="hamburger"><span></span><span></span><span></span></div>
                            <div id="cross"><span></span><span></span></div>
                        </div>

                        <div class="ab-c-m mt-0 mb-0 site-title">
                            <a href="index.jsp">

                                <img  style=" width: 96px; height: 100px;"  class="logo__image logo__image--medium"src="images/logo-transparent.png" alt="" /> 

                            </a>
                        </div>

                        <div class="home-nav main-navigation nav-menu">

                            <ul>


                                <li>

                                    <a class="colorchange" href="index.jsp">New</a>

                                </li>


                                <li>

                                    <a class="colorchange" href="usershowitem.jsp?action=Jewellery">Jewellery</a>
                                    <div class="megamenu" style="padding: 0px; margin: 0px;">
                                        <div class="container" style="padding: 0px; margin: 0px;max-width: 2500px;">
                                            <div class="row" style="padding: 0px; margin: 0px;">
                                                <div class="col-sm-6 col-md-7 col-lg-7 col-xl-7">
                                                    <div class="row" style="padding: 60px 20px 0px 20px;">

                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Jewellery</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">All
                                                                        Jewellery</a></li>

                                                                <li><a href="#">Earrings</a>
                                                                </li>

                                                                <li><a href="#">Piercing
                                                                        Jewellery</a></li>

                                                                <li><a href="#">Necklaces</a>
                                                                </li>

                                                                <li><a href="#">Bracelets</a>
                                                                </li>

                                                                <li><a href="#">Rings</a></li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Featured</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">New In</a></li>

                                                                <li><a href="#">Best
                                                                        Sellers</a></li>

                                                                <li><a href="#">Give Me
                                                                        Gold</a></li>

                                                                <li><a href="#">The Curated
                                                                        Ear</a></li>

                                                                <li><a href="#">SALE</a></li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Collections</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">Gold
                                                                        plated</a></li>

                                                                <li><a href="#">Sterling
                                                                        Silver</a></li>

                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="col-sm-6 col-md-5 col-lg-5 col-xl-5" style="padding: 0px !important; margin: 0px !important;">

                                                    <div class="navbarpromoblock">

                                                        <div class="navbarimage">
                                                            <a href="/collections/new-in">
                                                                <img style="height: 450px; width: 100%; object-fit: cover;" src="https://i.pinimg.com/564x/f6/df/5b/f6df5bb019f274b2533bf7f6c408229d.jpg" alt="img" /> 
                                                            </a>
                                                        </div>
                                                        <div class="navbartext">
                                                            <!-- <span class="navbarpromo">New</span> -->
                                                            <h1 class="navbartitle" style="color: #fff; padding-bottom: 10px;">
                                                                New<br>For<br>Winter</h1>
                                                            <a href="#" class="curatedearcta">SHOP
                                                                NOW</a>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </li>


                                <li>

                                    <a class="colorchange" href="usershowitem.jsp?action=Piercing">Piercing</a>
                                    <div class="megamenu" style="padding: 0px; margin: 0px;">
                                        <div class="container" style="padding: 0px; margin: 0px;max-width: 2500px;">
                                            <div class="row" style="padding: 0px; margin: 0px;">
                                                <div class="col-sm-6 col-md-7 col-lg-7 col-xl-7">
                                                    <div class="row" style="padding: 60px 20px 0px 20px;">

                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Piercing</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">All
                                                                        Piercing Jewellery</a></li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Piercing Types</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">Hoops</a>
                                                                </li>

                                                                <li><a href="#">Studs</a>
                                                                </li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Piercing Information
                                                            </h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="#">Types
                                                                        of piercing</a></li>

                                                                <li><a href="#">Aftercare</a>
                                                                </li>

                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="col-sm-6 col-md-5 col-lg-5 col-xl-5" style="padding: 0px !important; margin: 0px !important;">

                                                    <div class="navbarpromoblock">

                                                        <div class="navbarimage">
                                                            <a href="/collections/curated-ear">
                                                                <img style="height: 450px; width: 100%; object-fit: cover;" src="https://i.pinimg.com/564x/71/1d/fa/711dfa98d73fd0ceb71831ef7b4be158.jpg" alt="img" /> 
                                                            </a>
                                                        </div>
                                                        <div class="navbartext">
                                                            <!-- <span class="navbarpromo">New</span> -->
                                                            <h1 class="navbartitle" style="color: #fff; padding-bottom: 10px;">The Curated Ear</h1>
                                                            <a href="usershowitem.jsp" class="curatedearcta">SHOP NOW</a>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </li>


                                <li>

                                    <a class="colorchange" href="usershowitem.jsp?action=Accessories">Accessories</a>
                                    <div class="megamenu" style="padding: 0px; margin: 0px;">
                                        <div class="container" style="padding: 0px; margin: 0px;max-width: 2500px;">
                                            <div class="row" style="padding: 0px; margin: 0px;">
                                                <div class="col-sm-6 col-md-7 col-lg-7 col-xl-7">
                                                    <div class="row" style="padding: 60px 20px 0px 20px;">

                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Accessories</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="usershowitem.jsp">All
                                                                        Accessories</a></li>

                                                                <li><a href="usershowitem.jsp">Sunglasses</a>
                                                                </li>

                                                                <li><a href="usershowitem.jsp">Headbands</a>
                                                                </li>

                                                                <li><a href="/collections/stackers-jewellery-boxes">Stackers
                                                                        Jewellery Boxes</a></li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Featured</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="usershowitem.jsp">New In</a></li>

                                                                <li><a href="/collections/best-sellers">Best
                                                                        Sellers</a></li>

                                                                <li><a href="/collections/as-seen-on-instagram">As
                                                                        Seen On Insta</a></li>

                                                                <li><a href="/collections/gift-ideas">Gift Ideas</a>
                                                                </li>

                                                            </ul>
                                                        </div>



                                                        <div class="col-sm-4">
                                                            <h1 class="navbarsubmenutitles">Shop by price</h1>
                                                            <ul style="padding-top: 20px;">

                                                                <li><a href="/collections/accessories-under-10">Under
                                                                        Rs1000</a></li>

                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="col-sm-6 col-md-5 col-lg-5 col-xl-5" style="padding: 0px !important; margin: 0px !important;">

                                                    <div class="navbarpromoblock">

                                                        <div class="navbarimage">
                                                            <a href="/collections/hairbands">
                                                                <img style="height: 450px; width: 100%; object-fit: cover;" src="https://i.pinimg.com/564x/e3/3b/83/e33b8360e4bdb3cd1dbdbd19f555689f.jpg" alt="img" /> 
                                                            </a>
                                                        </div>
                                                        <div class="navbartext">
                                                            <!-- <span class="navbarpromo">New</span> -->
                                                            <h1 class="navbartitle" style="color: #fff; padding-bottom: 10px;">
                                                                Hairbands<br>For<br>All</h1>
                                                            <a href="usershowitem.jsp" class="curatedearcta">SHOP NOW</a>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </li>


                                <li>

                                    <a class="colorchange" href="/pages/about-us">About Us</a>

                                </li>


                            </ul>

                        </div>
                        <!-- logo was here -->

                        <div class="header-right-icons ml-auto">
                            <ul>




                                <c:choose>
                                    <c:when test="${session == null}">
                                        <li style="display:none">
                                            <a class="" href="usercartshow.jsp"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-wishlist.svg?v=3776098475935286069" alt="icon"><sup class="iWishCount" style="display:none">0</sup></a>
                                        </li>
                                        <li>
                                            <a href="userlogin.jsp"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-account.svg?v=15978821002343973641" alt="icon"></a>
                                        </li>
                                        
                                        <li class="cart-bag">
                                    <a href="javascript:void(0)" onClick="return onclickSearch();" id="search_1 "><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-search.svg?v=14459435742977645801" alt="icon"></a>
                                </li>


                                <li class="cart-bag">
                                    <a href="#" class="show-car js-drawer-open-button-right">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-cart.svg?v=7008036105726367683" alt="icon">
                                     
                                        <sup class="cart-count" >0</sup>
                                    </a>
                                </li>
                                    </c:when>
                                    <c:when test="${session != null}">
                                        <%    DataBase shopCartHandle = new DataBase();
                                            Customer me = (Customer) session.getAttribute("loginUser");
//UserHandle userHandle=new UserHandle();
                                            List<Products> list = null;
                                            list = shopCartHandle.findGoodsByUser(me);
                                            System.out.println("first if" + " " + me.getEmail() + " pwd :L" + me.getId() + "");
                                        %>
                                        <li >
                                            <a class="" href="usercartshow.jsp"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-wishlist.svg?v=3776098475935286069" alt="icon"><sup class="iWishCount" style="display:none">0</sup></a>
                                        </li>
                                        <li>
                                            <a href="usercartshow.jsp"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-account.svg?v=15978821002343973641" alt="icon"></a>
                                        </li>
                                        
                                        <li class="cart-bag">
                                            <a href="javascript:void(0)" onClick="return onclickSearch();" id="search_1 "><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-search.svg?v=14459435742977645801" alt="icon"></a>
                                        </li>


                                        <li class="cart-bag">
                                            <a href="#" class="show-car js-drawer-open-button-right">
                                                <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-cart.svg?v=7008036105726367683" alt="icon">

                                                <sup class="cart-count" ><%=list.size()%></sup>
                                            </a>
                                        </li>
                                    </c:when>
                                </c:choose>
                                


                            </ul>
                        </div>


                    </div>
                </div>
            </div>
        </header>
        <!-- end header -->
    </div>

</div>

<!-- HTML Theme ================================================== -->

<!-- mobile menu -->
<div class="mobile-nav home-mobile-nav sidebar-menu offcanvas-menu sm-menu">
    <div class="site-search" style="height: 1px !important; background: #fff;">
        <div class="d-flex align-items-center h-100" style="background: #fff;">
            <div class="search-form" style="background: #fff;">

                <form class="bc-sf-search-form" action="/search" method="get" role="search" style="background: #fff;">
                    <input style="background: #fff;" class="bc-sf-search-box" type="search" placeholder="Search our store!" name="q" value="">
                    <button type="submit" class="bc-sf-search-btn" style="display: none"></button>
                </form>


            </div>
        </div>
    </div>
    <div class="site-nav">
        <ul>

            <li><a href="/collections/new-in">New</a>

            </li>

            <li><a href="javascript:void(0);">Jewellery</a>

                <ul>

                    <li><a href="/collections/jewellery">All</a></li>

                    <li><a href="/collections/earrings">Earrings</a></li>

                    <li><a href="/collections/ear-piercing-jewellery">Piercing Jewellery</a></li>

                    <li><a href="/collections/necklaces">Necklaces</a></li>

                    <li><a href="/collections/bracelets">Bracelets</a></li>

                    <li><a href="/collections/rings">Rings</a></li>

                    <li><a href="/collections/gold-plated-jewellery">Gold Plated</a></li>

                    <li><a href="/collections/sterling-silver-jewellery">Sterling Silver</a></li>

                </ul>

            </li>

            <li><a href="javascript:void(0);">Piercing</a>

                <ul>

                    <li><a href="/collections/ear-piercing-jewellery">Shop Piercing Jewellery</a></li>

                    <li><a href="/pages/different-types-of-ear-piercing">Types of Piercing</a></li>

                </ul>

            </li>

            <li><a href="javascript:void(0);">Accessories</a>

                <ul>

                    <li><a href="/collections/accessories">All</a></li>

                    <li><a href="/collections/hairbands">Headbands</a></li>

                    <li><a href="/collections/sunglasses">Sunglasses</a></li>

                    <li><a href="/collections/stackers-jewellery-boxes">Stackers Jewellery Boxes</a></li>

                </ul>

            </li>

            <li><a href="javascript:void(0);">Collections</a>

                <ul>

                    <li><a href="/collections/new-in">New In</a></li>

                    <li><a href="/collections/best-sellers">Best Sellers</a></li>

                    <li><a href="/collections/give-me-gold">Give Me Gold</a></li>

                    <li><a href="/collections/hoops-huggies">Hoops & Huggies</a></li>

                    <li><a href="/collections/curated-ear">The Curated Ear</a></li>

                    <li><a href="/collections/as-seen-on-instagram">As Seen On Insta</a></li>

                    <li><a href="/collections/sale">SALE</a></li>

                </ul>

            </li>

            <li><a href="/pages/about-us">About us</a>

            </li>

        </ul>
    </div>
    <div class="menu-bottom">
        <ul>

            <li class="menu-wishlist"><a href="https://www.liarsandlovers.com/apps/iwish">Wishlist</a></li>

            <li class="menu-account"><a href="https://www.liarsandlovers.com/account">Account</a></li>

            <li class="menu-shipping-returns"><a href="/pages/shipping-and-returns">Shipping & Returns</a></li>

            <li class="menu-size-guide"><a href="/pages/find-your-size">Size Guide</a></li>

            <li class="menu-faq"><a href="/pages/faq">FAQ</a></li>

            <li class="menu-contact-us"><a href="/pages/contact-us">Contact Us</a></li>

        </ul>
    </div>
</div>
<!-- end mobile menu -->


<!-- HTML Theme ================================================== -->
<div id="CartDrawer" class="drawer drawer--right drawer--has-fixed-footer">
    <div class="drawer__fixed-header">
        <div class="drawer__header">

            <div class="cart-header text-center">
                <h3>YOUR SHOPPING CART</h3>
                <h4><strong>FREE TRACKED NEXT DAY DELIVERY ON ORDERS OVER £25</strong></h4>
            </div>

            <div class="drawer__close cart-close">
                <button type="button" class="icon-fallback-text drawer__close-button js-drawer-close">
                    <span class="icon icon-x" aria-hidden="true"></span>
                    <span class="fallback-text">Close Cart</span>
                </button>
            </div>
        </div>
    </div>
    <div class="drawer__inner limoniapps-discountninja-drawercart-root">
        <div id="CartContainer" class="drawer__cart">
        </div>
    </div>
</div>

