<%-- 
    Document   : usercartshow
    Created on : Apr 30, 2021, 11:45:05 PM
    Author     : wasat
--%>



<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page errorPage="error.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@page import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*" %>
<!doctype html>
<%    DataBase shopCartHandle = new DataBase();
Customer me =(Customer)session.getAttribute("loginUser");
//UserHandle userHandle=new UserHandle();
    List<Products> list = null;
    list = shopCartHandle.findGoodsByUser(me);
System.out.println("first if"+" "+me.getEmail()+" pwd :L"+me.getId()+"");
%>

<%!int total = 0;%>
<html class="no-js" lang="en">

    <head>
        <jsp:include page="user/head.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function shopCart_remove(goodsId) {

                xmlremove = new XMLHttpRequest();
                xmlremove.onreadystatechange = function ()
                {
                    if ((xmlremove.readyState == 4) && (xmlremove.status == 200)) {
                        if (xmlremove.responseText == "success") {
                            cnode = document.getElementById("list-goods-"+goodsId);
                            cnode.parentNode.removeChild(cnode);
                            if (!(document.getElementById("list-goods")).hasChildNodes()) {
                              
                            }
                            document.getElementById("goodsNum").innerHTML=(parseInt(document.getElementById("goodsNum").innerHTML)-1).toString();
                        }

                    }
                };
                xmlremove.open("GET","RemoveCartList?goodsId="+goodsId+"&t="+Math.random(),true);
	xmlremove.send();
            }
            

        </script>
    </head>
    <body id="earrings-hoops-huggies-studs-amp-ear-stacking" class="template-product template-collection">
        <jsp:include page="user/header.jsp"/>

        <section>

            <div class="container">

                <div class="intro-header m-b-50">
                    <div class="d-flex align-items-center justify-content-center">
                        <h1 class="title-after-rectangle">Your cart</h1>
                    </div>
                </div>

                <form action="/cart" method="post" novalidate class="cart cart-page limoniapps-discountninja-cart-root">

                    <div class="cart__row medium-down--hide cart__header-labels">
                        <div class="grid--full">
                            <div class="grid__item large--two-fifths push--large--three-fifths">
                                <div class="grid--full">
                                    <div class="grid__item one-third medium-down--half text-center">
                                        Quantity
                                    </div>
                                    <div class="grid__item two-thirds medium-down--half text-right">
                                        Total
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <%    if (list.size() != 0) {
                            String goodsIdList = "";%>

                    <%
                            int t1 = 0;
                        for (int i = 0; i < list.size(); i++) {
                           Products get = list.get(i);
                          t1 = t1 + + get.getPrice();
                           total = t1;

                    %>
                    <div class="cart__row" id="list-goods-<%=get.getProduct_id()%>">
                        <div class="grid--full cart__row--table-large">

                            <div class="grid__item large--three-fifths">
                                <div class="grid">

                                    <div class="grid__item one-third">
                                        <a href="/collections/all/products/lm85er01271?variant=39312762732647" class="cart__image">


                                            <img src="./images/<%=get.getDefault_image()%>" alt="">
                                        </a>
                                    </div>

                                    <div class="grid__item two-thirds">
                                        <a href="/products/lm85er01271?variant=39312762732647" class="h4 cart__product-name">
                                            <%=get.getTitle()%>
                                            <!-- **BEGIN** Hextom USB Integration // Cart Include - DO NOT MODIFY -->
                                            <!-- **BEGIN** Hextom USB Integration // Cart - DO NOT MODIFY -->
                                            <span class="htusb-ui-boost htusb-ui-cart-boost"
                                                  data-v1="6550684893287"
                                                  data-v2="lm85er01271"
                                                  data-v3=""
                                                  data-v4="SPORD,SGNIRRAE"
                                                  >
                                            </span>
                                            <!-- **END** Hextom USB Integration // Cart - DO NOT MODIFY -->
                                            <!-- **END** Hextom USB Integration // Cart Include - DO NOT MODIFY -->

                                        </a>

                                        <p class="cart__product-meta">

                                            <%=get.getProduct_id()%>
                                        </p>
                                        <p class="cart__product-meta">
                                            <a onclick="shopCart_remove(<%=get.getProduct_id()%>)">
                                                Remove
                                            </a>
                                        </p>
                                    </div>

                                </div>
                            </div>

                            <div class="grid__item large--two-fifths cart__pricing">
                                <div class="grid--full cart__row--table">


                                    <div class="grid__item one-third text-center limoniapps-discountninja-cart-item-quantity" data-limoniapps-discountninja-cart-key="39312762732647:660a4b2a2885a2d9b7518137fd58f2f3">

                                        <label for="updates_39312762732647:660a4b2a2885a2d9b7518137fd58f2f3" class="visually-hidden">Quantity</label>
                                        <input type="number" name="updates[]" id="updates_39312762732647:660a4b2a2885a2d9b7518137fd58f2f3" class="cart__product-qty" value="1" min="0" data-id="39312762732647:660a4b2a2885a2d9b7518137fd58f2f3">

                                    </div>

                                    <div class="grid__item two-thirds text-right limoniapps-discountninja-cart-item-line-price" data-limoniapps-discountninja-cart-key="39312762732647:660a4b2a2885a2d9b7518137fd58f2f3"><span class="cart__price">RS <%=get.getPrice()%></span></div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <%}%>

                    <%} else {
                    %>
                    The shopping cart is empty!;
                    <%}%>

                    <div class="cart__row cart__row--last">
                        <div class="grid--full cart__row--table-large">
                            <div class="grid__item large--five-twelfths large--text-right push--large--seven-twelfths">
                                <div class="grid--full cart__row--table">
                                    <div class="grid__item one-half large--two-thirds large--text-center">
                                        <p class="cart__subtotal">Subtotal</p>
                                    </div>
                                    <div class="grid__item one-half large--one-third">

                                        <p style="font-size: 20px; color:red" class="cart__subtotal limoniapps-discountninja-cart-subtotal-price">Rs <%=total%></p>
                                    </div>
                                </div>

                                <div class="limoniapps-discountninja-cart-promotionsummary"></div>
                                <p class="rte">Tax included. <a href="/policies/shipping-policy">Shipping</a> calculated at checkout.
                                </p>

                                <button type="submit" name="update" class="btn btn__secondary update-cart">Update Cart_</button>

                                <button  type="submit" name="checkout" class="btn cart__checkout"><a href="usercheckout.jsp">Check Out_</a></button>





                            </div>
                        </div>

                </form>


            </div>
        </section>

    <limespot></limespot>





    <jsp:include page="user/footer.jsp"/>


    <script>
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
    <!-- JS Theme ================================================== -->



    <!-- Include Resources -->
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-lib.js?enable_js_minification=1&v=16548757521262582443"></script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-search.js?enable_js_minification=1&v=9408320754591767130"></script>
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter.js?enable_js_minification=1&v=6809953658323563279"></script>
    <!-- Initialize App -->
    <script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-init.js?enable_js_minification=1&v=1928539781059772811"></script>
    <!--end-bc-sf-filter-js-->

    <!--start-bc-al-init-->

    <!--end-bc-al-init-->

    <!-- start-bc-recently-viewed-product-init -->
    <!--start-bc-recently-viewed-init-->


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
