<%-- 
    Document   : userItemdetail
    Created on : Apr 28, 2021, 12:12:08 PM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
  <jsp:include page="user/head.jsp"/>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script type="text/javascript">
      
      function shoppingCart(goodsId){
          
         xmlShop=new XMLHttpRequest();
	xmlShop.onreadystatechange=function()
	  {
	  if ((xmlShop.readyState==4)&&(xmlShop.status==200))
	    {
	    if(xmlShop.responseText=="success")
	    	{
	    	//document.getElementById("goodsNum").innerHTML=(parseInt(document.getElementById("goodsNum").innerHTML)+1).toString(); 		
	    	document.getElementById("AddToCart--product-template").innerHTML="Already added to shopping cart";
	    	}else{
	    		document.getElementById("AddToCart--product-template").innerHTML="Wrong, you may have added it again!";
	    	}
	    }
	  };
	xmlShop.open("GET","ShoppingCart?goodsId="+goodsId+"&t="+Math.random(),true);
	xmlShop.send();
      }
  </script>
</head>

<body id="earrings-hoops-huggies-studs-amp-ear-stacking" class="template-product template-collection">
<jsp:include page="user/header.jsp"/>

    <div id="shopify-section-collection-template-bc-sf-filter" class="shopify-section">

        <div id="CollectionSection" data-section-id="collection-template-bc-sf-filter" data-section-type="collection-template">

            <!-- Product Details Section Begin -->
            <section class="product-details spad">
                <div class="container">
                    <div class="row">
                        <%
                        String id=(String)request.getAttribute("id");
                        String qry = "Select * from products WHERE product_id='"+id+"' ";
                        Statement ps=con.createStatement();
			ResultSet rs=ps.executeQuery(qry);
                        if (rs.next()) {
                              String   ids=rs.getString("product_id");
                                String   name2=rs.getString("title");
                                String disc1 =rs.getString("description");
                                String price2=rs.getString("price");
                                String  discount1=rs.getString("discount");
                                String main1=rs.getString("mainCate");
                                String su1b=rs.getString("subCate");
                                String image2=rs.getString("default_image");   
                                String image3=rs.getString("sub_image1");   
                                String image4=rs.getString("sub_image2");   
                                String image5=rs.getString("sub_image3");   
                            
                        %>
                        <div class="col-lg-6 col-md-6">
                            <div class="product__details__pic">
                                <div class="product__details__pic__item">
                                    <img class="product__details__pic__item--large" src="images/<%=image2%>" alt="">
                                </div>
                                <div class="product__details__pic__slider owl-carousel">
<!--                                    <img data-imgbigurl="images/0307edd1732f28a698cb0e6d473411df.jpg" src="images/0edc0734b07860916e4c8608902b4242.jpg" alt="">-->
                                    <img data-imgbigurl="images/<%=image3%>" src="images/<%=image3%>" alt="">
                                    <img data-imgbigurl="images/<%=image4%>" src="images/<%=image4%>" alt="">
                                    <img data-imgbigurl="images/<%=image5%>" src="images/<%=image5%>" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="product__details__text">
                                <h3><%=name2%></h3>
                                <div class="product__details__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span>(18 reviews)</span>
                                </div>
                                <div class="product__details__price">Rs <%=price2%></div>
                                <p><%=disc1%></p>
                               <div class="add-to-cart-btn d-flex product-single__add-to-cart">
                                   <c:choose>
                                       <c:when test="${session == null}">
                                           <a href="userlogin.jsp">
                               <button  style="margin-bottom: 10px;" type="submit" name="add" id="AddToCart--product-template" class="AddToCart btn--add-to-cart">
                                  <span class="btn__text">
                                    
                                      Add to cart
                                    
                                  </span>
                                </button>
                                           </a>
                                   </c:when>
                                            <c:when test="${session != null}">
                               <button onclick="shoppingCart(<%=ids%>)" style="margin-bottom: 10px;" type="submit" name="add" id="AddToCart--product-template" class="AddToCart btn--add-to-cart">
                                  <span class="btn__text">
                                    
                                      Add to cart
                                    
                                  </span>
                                </button>
                                   </c:when>
                                   </c:choose>
                              <a href="#" class="w-list iWishAdd"  data-product="6550684893287" data-pTitle="SUNBURST DROP HOOP EARRING">
                              <i class="far fa-heart"></i>
                              </a>
                              </div>
                                <ul>
                                    <li><b>Availability</b> <span>In Stock</span></li>
                                    <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                                    <li><b>Weight</b> <span>0.5 kg</span></li>
                                    <li><b>Share on</b>
                                        <div class="share">
                                            <a href="#"<i class="fab fa-facebook-f"></i></a>
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                            <a href="#"><i class="fab fa-pinterest"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                                <%
                        }
                                else
							{
							out.println("Record NotFound");
							}
                                
                                %>
                        <div class="col-lg-12">
                            <div class="product__details__tab">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab" aria-selected="false">Information</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                        <div class="product__details__tab__desc">
                                            <h6>Products Infomation</h6>
                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac
                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor
                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et
                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula
                                                sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum
                                                sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tabs-2" role="tabpanel">
                                        <div class="product__details__tab__desc">
                                            <h6>Products Infomation</h6>
                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac
                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor
                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et
                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula
                                                sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tabs-3" role="tabpanel">
                                        <div class="product__details__tab__desc">
                                            <h6>Products Infomation</h6>
                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac
                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor
                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et
                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                               
                    </div>
                </div>
            </section>
            <!-- Product Details Section End -->


            <!-- Related Product Section Begin -->
            <section class="related-product">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title related__product__title">
                                <h2>Related Product</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                          <%
						String qr2="Select * from products";
						Statement ps2=con.createStatement();
						ResultSet rs2=ps2.executeQuery(qr2);
						if(rs2.next())
						{	
						
							
								do 
								{

                                                                    String   ids=rs2.getString("product_id");
                                                                    String   name3=rs2.getString("title");
                                                                    String disc1 =rs2.getString("description");
                                                                    String price3=rs2.getString("price");
                                                                    String  discount1=rs2.getString("discount");
                                                                    String main1=rs2.getString("mainCate");
                                                                    String su1b=rs2.getString("subCate");
                                                                    String image3=rs2.getString("default_image");
						%>
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="images/<%=image3%>">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#"><%=name3%></a></h6>
                                    <h5><%=price3%></h5>
                                </div>
                            </div>
                        </div>
                        <%
								}
								
								while(rs2.next());
							}
							else
							{
							out.println("Record NotFound");
							}
						%>
                     
                    </div>
                </div>
            </section>
            <!-- Related Product Section End -->
        </div>

    </div>

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
