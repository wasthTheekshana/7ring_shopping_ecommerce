<%-- 
    Document   : userlogin
    Created on : Apr 30, 2021, 12:11:29 AM
    Author     : wasat
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*"%>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<base href="<%=basePath%>">
<jsp:include page="user/head.jsp"/>
</head>


<body id="earrings-hoops-huggies-studs-amp-ear-stacking" class="template-product template-collection">
    <jsp:include page="user/header.jsp"/>




    <div id="shopify-section-collection-template-bc-sf-filter" class="shopify-section">

        <div id="CollectionSection" data-section-id="collection-template-bc-sf-filter" data-section-type="collection-template">
<section class="p-b-120">

  <div class="container text-center">
	
    
    <div class="intro-header">
        <div class="d-flex align-items-center justify-content-center"><h1 class="title-after-rectangle">Login</h1></div>
    </div>
	
    <div class="row account-info justify-content-center">
    	<div class="col-md-6 col-lg-4">
          
          
          <div class="note form-success" id="ResetSuccess" style="display:none;">
            We&#39;ve sent you an email with a link to update your password.
          </div>

          <div id="CustomerLoginForm" class="form-vertical">
            <form method="post" action="LogServelt" id="customer_login" accept-charset="UTF-8"><input type="hidden" name="form_type" value="customer_login" /><input type="hidden" name="utf8" value="✓" />

              

              <label for="CustomerEmail" class="hidden-label">Email</label>
              <input type="email" name="customer_email" id="CustomerEmail" class="input-full" placeholder="Email" autocorrect="off" autocapitalize="off" autofocus>

              
                <label for="CustomerPassword" class="hidden-label">Password</label>
                <input type="password" value="" name="customer_password" id="CustomerPassword" class="input-full" placeholder="Password">
              <div class="checkbox">
				<label> <input type="checkbox" name="auto_login">
					Remember login </label>
			</div>

              <p>
                <input type="submit" class="btn btn--full" value="Sign In">
              </p>
              <p><a href="userregister.jsp" id="customer_register_link">Create Account</a></p>
              <p><a href="index.jsp">Return to Store</a></p>
              
                <p><a href="#recover" id="RecoverPassword">Forgot your password?</a></p>
              

            <input type="hidden" name="return_url" value="/account" />
            </form>
          </div>

          
          <div id="RecoverPasswordForm" style="display: none;">

            <h2>Reset your password</h2>
            <p>We will send you an email to reset your password.</p>
            <div class="form-vertical">
              <form method="post" action="/account/recover" accept-charset="UTF-8"><input type="hidden" name="form_type" value="recover_customer_password" /><input type="hidden" name="utf8" value="✓" />

                

                
                

                <label for="RecoverEmail" class="hidden-label">Email</label>
                <input type="email" value="" name="email" id="RecoverEmail" class="input-full" placeholder="Email" autocorrect="off" autocapitalize="off">

                <p>
                  <input type="submit" class="btn btn--full" value="Submit">
                </p>
                <button type="button" id="HideRecoverPasswordLink">Cancel</button>
              </form>
            </div>

          </div>

          
          

        </div>
    </div>
  </div>

</section>
  
        </div>

    </div>

    
    
    
    
    <jsp:include page="user/footer.jsp"/>
    <limespot></limespot>








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
        $(".js-drawer-open-button-right").click(function() {

            if ($('body').hasClass('js-drawer-open')) {

                $('.overlay-sidebar').removeClass("show-overlay-sidebar");
            } else {

                $('.overlay-sidebar').addClass("show-overlay-sidebar");

            }
        });

        $("#AddToCart--product-template").click(function() {
            setTimeout(function() {
                if ($('body').hasClass('js-drawer-open')) {
                    $('.overlay-sidebar').addClass("show-overlay-sidebar");
                } else {
                    $('.overlay-sidebar').removeClass("show-overlay-sidebar");
                }
            }, 1000);

        });

        $("#ProductSelect-option-0 input[type='radio']").click(function() {
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
        jQuery(document).ready(function() {
            jQuery("a[href='/apps/iwish']").click(function(e) {
                if (typeof(Storage) !== "undefined") {
                    e.preventDefault();
                    iWishPost('/apps/iwish', {
                        iwishlist: JSON.stringify(iWishlistmain),
                        cId: iwish_cid
                    });
                }
            });
            jQuery(".iWishAdd").click(function() {
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
                jQuery(".iwishcheck").each(function() {
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
