<%-- 
    Document   : index
    Created on : Apr 30, 2021, 10:24:27 AM
    Author     : wasat
--%>
<%@page import="org.w3c.dom.UserDataHandler"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="javax.servlet.http.HttpSession,DataBase.*,util.*,model.*" %>

<!doctype html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html class="no-js" lang="en">

    <head>
        <jsp:include page="user/head.jsp"/>

    </head>


    <body onload="myFunction()" id="liars-amp-lovers®-official-store-fashion-jewellery-amp-accessories" class="template-product template-index">
        <jsp:include page="user/header.jsp"/>
        
            <div id="homeanimationloadingscreen">
        <div class="homeanimationlogo">
            <div id="homeanimationfirstload">
                <img src="images/logo-transparent.png" style="max-width: 250px; width: 80%; height: auto;">
            </div>
            <div id="homeanimationsecondload" style="padding-top: 50px; padding-left: 20px; padding-right: 20px;">
                <h2 style="color: #000;">Breaking the rules of style, one accessory at a time</h2>
            </div>
        </div>
    </div>
    <script>
        var myVar;

        function myFunction() {
            myVar = setTimeout(showPage, 5000);
        }

        function showPage() {
            document.getElementById("homeanimationloadingscreen").style.display = "none";
        }
    </script>
    
        <!-- /templates/index.liquid -->
        <!-- BEGIN content_for_index -->
        <div id="shopify-section-1603554543d8958409" class="shopify-section">
            <section data-section-id="1603554543d8958409" id="home-hero" class="home-hero">
                <div class="col-12 hpbackgroundsecone" style="padding:0px;">
                    <div class="hpbackgroundimg scrollme" style="background: #eff0f2;">
                        <div class="hpbackgroundimganimate" data-when="enter" data-from="0" data-to="4" data-easing="easeout" data-opacity="0" style="background: #eff0f2;">
                            <picture>
                                <source data-srcset="//cdn.shopify.com/s/files/1/0248/3290/1223/files/liars-MSS-mobile_copy-min.jpg?v=1617005381" media="(max-width: 840px)" srcset="//cdn.shopify.com/s/files/1/0248/3290/1223/files/liars-MSS-mobile_copy-min.jpg?v=1617005381">
                                <img class="hpbackgroundimgsize" src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/DESK-min.jpg?v=1617004447" alt="Liars &amp; Lovers" />
                            </picture>
                        </div>

                    </div>
                    <div class="hpseciononetext scrollme">
                        <div class="hpbackgroundimganimate" data-when="enter" data-from="0.5" data-to="0" data-opacity="0" data-easing="easein">
                            <h1 class="hptitlestyle"><span style="font-size: 50px; color: #000;"><strong>END</strong> OF
                                    SEASON <strong>SALE!</strong></span><br><span style="font-size: 30px; color: #000;">Treat yourself<br><strong>with up to 50%
                                        off</strong></span><br><br></h1>
                            <a href="sale.html" class="hpherocta">SHOP NOW</a>
                        </div>
                    </div>
                </div>

            </section>





        </div>
        <div id="" class="shopify-section">
            <section data-section-id="160355503550ad7992" id="home-hero" class="home-hero">
                <div class="row" style="margin: 0px; padding: 0px;">
                    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 sectionthreeblock">
                        <a href="usershowitem.jsp">
                            <div class="sectionthreeblockpicture img-zoom-div img-hover-zoom">
                                <picture>

                                    <img class="sectionthreeblockimage" src="https://i.pinimg.com/564x/96/fd/76/96fd769ffb71c98dd1257882f8f78b10.jpg" alt="Liars &amp; Lovers">
                                </picture>
                            </div>
                            <div class="sectionthreeblocktext">
                                <h1 class="sectionthreeblocktexttitle">Earrings
                                </h1>
                                <a href="usershowitem.jsp" class="sectionthreeblocktextcta">SHOP NOW
                                </a>
                            </div>
                        </a>
                    </div>

                    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 sectionthreeblock">
                        <a href="usershowitem.jsp">
                            <div class="sectionthreeblockpicture img-zoom-div img-hover-zoom">
                                <picture>

                                    <img class="sectionthreeblockimage" src="https://i.pinimg.com/564x/e1/a4/5f/e1a45f8f3533dab4b56075443b96854d.jpg" alt="Liars &amp; Lovers">
                                </picture>
                            </div>
                            <div class="sectionthreeblocktext">
                                <h1 class="sectionthreeblocktexttitle">Bracelets
                                </h1>
                                <a href="usershowitem.jsp" class="sectionthreeblocktextcta">SHOP NOW
                                </a>
                            </div>
                        </a>
                    </div>

                    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 sectionthreeblock">
                        <a href="usershowitem.jsp">
                            <div class="sectionthreeblockpicture img-zoom-div img-hover-zoom">
                                <picture>

                                    <img class="sectionthreeblockimage" src="https://www.rajajewellers.com/wp-content/uploads/2018/08/Raja-Jewlry-Day-28268-1.jpg" alt="Liars &amp; Lovers">
                                </picture>
                            </div>
                            <div class="sectionthreeblocktext">
                                <h1 class="sectionthreeblocktexttitle">Necklaces
                                </h1>
                                <a href="usershowitem.jsp" class="sectionthreeblocktextcta">SHOP NOW
                                </a>
                            </div>
                        </a>
                    </div>

                </div>
            </section>





        </div>
        <div id="" class="shopify-section">
            <section data-section-id="160355505057d90987" id="home-hero" class="home-hero">
                <div style="position: relative;">
                    <div id="carouselExampleControls" class="carousel slide sectionfiveblockdesktop" data-interval="false" style="padding-bottom: 50px;">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="d-block w-100" style="height: 800px;">
                                    <div class="dkcurateearblock">
                                        <div class="dkcuratedearbg">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/curated-ear-background-blur-2.png?v=1605182732">
                                        </div>
                                        <div class="dkcuratedeartext">
                                            <h1 class="dkcuratedeartitle">The<br>Curated<br>Ear</h1>
                                        </div>
                                        <div class="curatedearone curatedearanimation">
                                            <a href="/products/lm85pc00047"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE6.png?v=1605182784"></a>
                                        </div>
                                        <div class="curatedeartwo curatedearanimation">
                                            <a href=""><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE3-3.png?v=1605182805"></a>
                                        </div>
                                        <div class="curatedearthree curatedearanimation">
                                            <a href="/products/lm85pc00026"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE5-2.png?v=1605182819"></a>
                                        </div>
                                        <div class="curatedearfour curatedearanimation">
                                            <a href="/products/lm85pc00030"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/image-earring-2.png?v=1605182979"></a>
                                        </div>
                                        <div class="curatedearfive curatedearanimation">
                                            <a href="/products/lm85pc00127"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/curated-ear-piercing.png?v=1607100770"></a>
                                        </div>
                                        <div class="curatedearsix curatedearanimation">
                                            <a href="/products/lm85pc00104"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE8-2.png?v=1605182870"></a>
                                        </div>
                                    </div>
                                    <div class="curatedeartext">
                                        <p style="padding-bottom: 20px;">7 Rings is a mentality, a way of living. It represents authenticity, transformation and duality for the ever-evolving people who have the confidence to just be themselves.</p>
                                        <a href="usershowitem.jsp" class="curatedearcta">SHOP NOW</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="d-block w-100" style="text-align: center; height: 800px; ">

                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00030">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00030CY1RG_1024x1024_c5948800-6c85-4fc2-84c6-1716539619e6.jpg?v=1607100920" alt="">
                                            <p style="padding-top: 100px;">Cluster Star Rose Gold Threaded Piercing Stud</p>
                                            <p>£30.00</p>
                                        </a>
                                    </div>


                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00120">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00120GO1GO_1024x1024_f0422577-354e-4d15-9060-04ee35f77509.jpg?v=1607100944" alt="">
                                            <p style="padding-top: 100px;">14K Gold Ball Threaded Piercing Stud</p>
                                            <p>£55.00</p>
                                        </a>
                                    </div>


                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00047">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00047GO1GP_1024x1024_0d6275cb-c2bd-4a01-9e10-b64b6c065eaf.jpg?v=1607100967" alt="">
                                            <p style="padding-top: 100px;">Moon Gold Threaded Piercing Stud</p>
                                            <p>£25.00</p>
                                        </a>
                                    </div>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="d-block w-100" style="text-align: center; height: 800px; ">

                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00026">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00026CY1SL_1024x1024_dc490472-736a-4001-8e68-74b433c28d16.jpg?v=1607100989" alt="">
                                            <p style="padding-top: 100px;">Stone Heart Silver Threaded Stud</p>
                                            <p>£25.00</p>
                                        </a>
                                    </div>


                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00104">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00104CY1GP_1024x1024_b4e19a1b-e325-4c8b-8c6b-b8347786dd8a.jpg?v=1607101012" alt="">
                                            <p style="padding-top: 100px;">Gold Plated Square Stone Piercing Hoop</p>
                                            <p>£50.00</p>
                                        </a>
                                    </div>


                                    <div class="sectionfiveproductblock">
                                        <a href="/products/lm85pc00086">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00086CY1GO_1024x1024_09541097-04d0-4b08-accd-dd45e4aebeab.jpg?v=1607101032" alt="">
                                            <p style="padding-top: 100px;">14K Gold Teardrop 1mm Threaded Piercing Stud</p>
                                            <p>£70.00</p>
                                        </a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <svg style="color: #000;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-arrow-left-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5.5a.5.5 0 0 0 0-1H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5z" />
                            </svg>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <svg style="color: #000;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-arrow-right-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-11.5.5a.5.5 0 0 1 0-1h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5z" />
                            </svg>

                        </a>
                    </div>

                    <div id="carouselExampleControls" class="carousel slide sectionfiveblockmobile" data-interval="false">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="" style="height: 750px;">
                                    <div class="dkcurateearblock">
                                        <div class="dkcuratedearbg">
                                            <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/curated-ear-background-blur-2.png?v=1605182732">
                                        </div>
                                        <div class="dkcuratedeartext">
                                            <h1 class="dkcuratedeartitle">The<br>Curated<br>Ear</h1>
                                        </div>
                                        <div class="curatedearone curatedearanimation">
                                            <a href="/products/lm85pc00047"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE6.png?v=1605182784"></a>
                                        </div>
                                        <div class="curatedeartwo curatedearanimation">
                                            <a href=""><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE3-3.png?v=1605182805"></a>
                                        </div>
                                        <div class="curatedearfive curatedearanimation">
                                            <a href="/products/lm85pc00127"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/curated-ear-piercing.png?v=1607100770"></a>
                                        </div>
                                        <div class="curatedearsix curatedearanimation">
                                            <a href="/products/lm85pc00104"><img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/TCE8-2.png?v=1605182870"></a>
                                        </div>
                                    </div>
                                    <div class="curatedeartext">
                                        <p style="padding-bottom: 20px;">Liars & Lovers is a mentality, a way of living. It represents authenticity, transformation and duality for the ever-evolving people who have the confidence to just be themselves.</p>
                                        <a href="/collections/ear-piercing-jewellery" class="curatedearcta">SHOP NOW</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00030">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00030CY1RG_1024x1024_c5948800-6c85-4fc2-84c6-1716539619e6.jpg?v=1607100920" alt="">
                                        <p style="padding-top: 20px;">Cluster Star Rose Gold Threaded Piercing Stud</p>
                                        <p>£30.00</p>
                                    </a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00120">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00120GO1GO_1024x1024_f0422577-354e-4d15-9060-04ee35f77509.jpg?v=1607100944" alt="">
                                        <p style="padding-top: 20px;">14K Gold Ball Threaded Piercing Stud</p>
                                        <p>£55.00</p>
                                    </a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00047">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00047GO1GP_1024x1024_0d6275cb-c2bd-4a01-9e10-b64b6c065eaf.jpg?v=1607100967" alt="">
                                        <p style="padding-top: 20px;">Moon Gold Threaded Piercing Stud</p>
                                        <p>£25.00</p>
                                    </a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00026">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00026CY1SL_1024x1024_dc490472-736a-4001-8e68-74b433c28d16.jpg?v=1607100989" alt="">
                                        <p style="padding-top: 20px;">Stone Heart Silver Threaded Stud</p>
                                        <p>£25.00</p>
                                    </a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00104">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00104CY1GP_1024x1024_b4e19a1b-e325-4c8b-8c6b-b8347786dd8a.jpg?v=1607101012" alt="">
                                        <p style="padding-top: 20px;">Gold Plated Square Stone Piercing Hoop</p>
                                        <p>£50.00</p>
                                    </a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="sectionfiveproductblock">
                                    <a href="/products/lm85pc00086">
                                        <img src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LM85PC00086CY1GO_1024x1024_09541097-04d0-4b08-accd-dd45e4aebeab.jpg?v=1607101032" alt="">
                                        <p style="padding-top: 20px;">14K Gold Teardrop 1mm Threaded Piercing Stud</p>
                                        <p>£70.00</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">

                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">

                        </a>
                    </div>
                </div>
            </section>





        </div>
        <div id="" class="shopify-section">
            <section data-section-id="1603555060a4a00d0d" id="home-hero" class="home-hero">
                <!-- desktop -->
                <div class="setionsevenmainblockdk row" style="position: relative; margin: 0px; padding: 0px;">
                    <div class="sectionseventextarea">
                        <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);height: 550px;">
                            <h1 class="sectionseventitle">Rock our Styles</h1>
                            <p class="sectionsevencontent">Once it's gone, it's gone</p>
                            <a href="/collections/new-in" class="sectionthreeblocktextcta">SHOP NOW</a>
                        </div>
                    </div>
                    <div class="sectionsevenimagearea">
                        <div class="sectionsevenimageone">
                            <picture>
                                <source data-srcset="https://i.pinimg.com/564x/24/44/0a/24440a9772b239728ce3b54696f63e51.jpg" media="(max-width: 840px)" srcset="https://i.pinimg.com/564x/24/44/0a/24440a9772b239728ce3b54696f63e51.jpg">
                                <img class="sectionsevenimages" src="https://i.pinimg.com/564x/24/44/0a/24440a9772b239728ce3b54696f63e51.jpg" alt="Liars &amp; Lovers">
                            </picture>
                        </div>
                        <div class="sectionsevenanimation sectionsevenimagetwo">
                            <picture>
                                <source data-srcset="//cdn.shopify.com/s/files/1/0248/3290/1223/files/homepage-image-2.png?v=1614683153" media="(max-width: 840px)" srcset="//cdn.shopify.com/s/files/1/0248/3290/1223/files/homepage-image-2.png?v=1614683153">
                                <img class="sectionsevenimages" src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/homepage-image-2.png?v=1614683153" alt="Liars &amp; Lovers">
                            </picture>
                        </div>
                    </div>
                </div>

                <!-- Mobile no styling other than slide function when entering -->
                <div class="sectionsevenmainblockmb">
                    <div style="text-align: center; width: 100%; padding: 50px 20px 50px 20px;">
                        <h1 class="sectionseventitle">Rock our Styles</h1>
                        <p class="sectionsevencontent">Once it's gone, it's gone</p>
                        <a href="/collections/new-in" class="sectionthreeblocktextcta">SHOP NOW</a>
                    </div>
                </div>

                <script>
                    $(window).on("load", function () {
                        $(window).scroll(function () {
                            var windowBottom = $(this).scrollTop();
                            $(".sectionsevenanimation").each(function () {
                                /* Check the location of each desired element */
                                var objectBottom = $(this).offset().top;

                                /* If the element is completely within bounds of the window, fade it in */
                                if (objectBottom < windowBottom) { //object comes into view (scrolling down)
                                    if ($(this).css("opacity") == 0) {
                                        $(this).fadeTo(500, 1);
                                    }
                                } else { //object goes out of view (scrolling up)
                                    if ($(this).css("opacity") == 1) {
                                        $(this).fadeTo(500, 0);
                                    }
                                }
                            });
                        }).scroll(); //invoke scroll-handler on page-load
                    });
                </script>
            </section>





        </div>
        <div id="" class="shopify-section">
            <section data-section-id="160355457843e8f53b" id="home-hero" class="home-hero" style="background: #fff;">
                <div class="col-12" style="text-align: center; padding-top: 50px;">
                    <h1 class="sectiontwotitle">What's New</h1>
                </div>
                <div class="scrollcontainter">
                    <div class="scrollmenu">


                        <a href="/products/lm85er00980">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER00980MU3GO_1024x1024.jpg?v=1612880902" alt="MIXED CHARM LARGE HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">MIXED CHARM LARGE HOOP EARRING
                                </p>
                                <p><strong>£15.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00432">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00432MU1GO_V2_1024x1024.jpg?v=1611244156" alt="COIN AND MIXED BEAD MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">COIN AND MIXED BEAD MULTIROW NECKLACE
                                </p>
                                <p><strong>£16.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01247">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01247MU1OS_1024x1024.jpg?v=1614270772" alt="PEARL AND ORANGE BEAD DROP HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">PEARL AND ORANGE BEAD DROP HOOP EARRING</p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00549">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00549BU3OS_1024x1024.jpg?v=1617286446" alt="BLUE BEAD AND PEARL MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">BLUE BEAD AND PEARL MULTIROW NECKLACE
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01253">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01253GO1OS_V2_1024x1024.jpg?v=1615461779" alt="CHUNKY DOUBLE HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">CHUNKY DOUBLE HOOP EARRING</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00535">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00535CR1OS_1024x1024.jpg?v=1614271668" alt="PEARL PENDANT AND BOX CHAIN NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">PEARL PENDANT AND BOX CHAIN NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ri00182">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85RI00182MU417-18_1024x1024.jpg?v=1614597433" alt="MIXED METAL TWISTED RING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">MIXED METAL TWISTED RING MULTIPACK
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ri00181">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85RI00181BK117-18_1024x1024.jpg?v=1614597301" alt="JET STONE RING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">JET STONE RING MULTIPACK</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00538">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00538GO1OS_1024x1024.jpg?v=1614271954" alt="TWIST CHAIN AND COIN MULTIROW CHOKER">

                                <p style="padding-top: 15px; white-space: normal !important;">TWIST CHAIN AND COIN MULTIROW CHOKER
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er00851">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER00851MU1GO_1024x1024.jpg?v=1611242188" alt="DISC AND CHIPPING EARRING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">DISC AND CHIPPING EARRING MULTIPACK
                                </p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ww00111">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85WW00111CR1OS_1024x1024.jpg?v=1614854778" alt="PEARL AND T BAR BRACELET MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">PEARL AND T BAR BRACELET MULTIPACK
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01249">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01249CR1OS_1024x1024.jpg?v=1614271071" alt="ORGANIC PEARL DROP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">ORGANIC PEARL DROP EARRING</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00531">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00531CR1OS_1024x1024.jpg?v=1613561042" alt="PEARL AND COIN COLLAR NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">PEARL AND COIN COLLAR NECKLACE
                                </p>
                                <p><strong>£15.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00428">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00428MU3GO_1024x1024.jpg?v=1612881159" alt="MIXED CHIPPING CHOKER PACK">

                                <p style="padding-top: 15px; white-space: normal !important;">MIXED CHIPPING CHOKER PACK</p>
                                <p><strong>£18.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01270">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01270GO1OS_1024x1024.jpg?v=1617286236" alt="PEACE AND LOVE DROP HUGGIE HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">PEACE AND LOVE DROP HUGGIE HOOP EARRING</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00536">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00536GO1OS_1024x1024.jpg?v=1614271751" alt="TWIST CHAIN AND CHARM MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">TWIST CHAIN AND CHARM MULTIROW NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er00992">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER00992MU3GO_1024x1024.jpg?v=1612267105" alt="MULTI BEAD HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">MULTI BEAD HOOP EARRING</p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er00981">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER00981CR1GO_1024x1024.jpg?v=1612266691" alt="SHELL FLOWER PENDANT HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">SHELL FLOWER PENDANT HOOP EARRING
                                </p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00431">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00431CR1GO_1024x1024.jpg?v=1611244067" alt="COIN AND SHELL PENDANT MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">COIN AND SHELL PENDANT MULTIROW NECKLACE</p>
                                <p><strong>£15.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00552">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00552MU3OS_1024x1024.jpg?v=1617286828" alt="BAGUETTE STONE MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">BAGUETTE STONE MULTIROW NECKLACE
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00545">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00545GO1OS_V2_1024x1024.jpg?v=1617286322" alt="AMOUR AND MIXED PEARL NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">AMOUR AND MIXED PEARL NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01260">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01260CY1OS_V2_1024x1024.jpg?v=1617285987" alt="PAVE EDGE CHUNKY HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">PAVE EDGE CHUNKY HOOP EARRING
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ri00177">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85RI00177CY118_1024x1024.jpg?v=1617276373" alt="PAVE SNAKE WRAP RING">

                                <p style="padding-top: 15px; white-space: normal !important;">PAVE SNAKE WRAP RING</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00543">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00543GO1OS_1024x1024.jpg?v=1616690431" alt="PAVE HEXAGON PENDANT NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">PAVE HEXAGON PENDANT NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01264">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01264CY1OS_1024x1024.jpg?v=1616689280" alt="PEARL ENCRUSTED SNAKE STUD EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">PEARL ENCRUSTED SNAKE STUD EARRING
                                </p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ri00101">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85RI00101SV117_1024x1024.jpg?v=1615196707" alt="CHAIN RING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">CHAIN RING MULTIPACK</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00539">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00539GO1OS_1024x1024.jpg?v=1614272037" alt="TWIST  CHAIN AND COIN PENDANT NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">TWIST CHAIN AND COIN PENDANT NECKLACE
                                </p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00533">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00533CR1OS_1024x1024.jpg?v=1614271486" alt="CREAM CHIPPING CHOKER">

                                <p style="padding-top: 15px; white-space: normal !important;">CREAM CHIPPING CHOKER</p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ww00072">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85WW00072MU3GO_1024x1024.jpg?v=1612881276" alt="MIXED CHIPPING BRACELET MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">MIXED CHIPPING BRACELET MULTIPACK
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00433">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00433MU3GO_1024x1024.jpg?v=1611244272" alt="BEATEN COIN AND CORAL CHOKER MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">BEATEN COIN AND CORAL CHOKER MULTIPACK
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01266">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01266GO1OS_1024x1024.jpg?v=1618482109" alt="GOLD TEXTURED EARRING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">GOLD TEXTURED EARRING MULTIPACK
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01265">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01265CR1OS_1024x1024.jpg?v=1617286091" alt="BLUE BEAD AND PEARL EARRING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">BLUE BEAD AND PEARL EARRING MULTIPACK
                                </p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01241">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01241GO1OS_1024x1024.jpg?v=1617275352" alt="Pearl Drop Hoop Multipack">

                                <p style="padding-top: 15px; white-space: normal !important;">Pearl Drop Hoop Multipack</p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01269">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01269GO1OS_1024x1024.jpg?v=1616689393" alt="RIDGED HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">RIDGED HOOP EARRING</p>
                                <p><strong>£8.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er00772">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/5.LM85ER00772GO1GO_1024x1024.jpg?v=1614855418" alt="HAMMERED LINK DROP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">HAMMERED LINK DROP EARRING</p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ri00183">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85RI00183SV117-118_1024x1024.jpg?v=1614675855" alt="SILVER TWIST RING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">SILVER TWIST RING MULTIPACK
                                </p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85ww00110">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85WW00110CR1OS_1024x1024.jpg?v=1614272095" alt="COIN AND PEARL BRACELET MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">COIN AND PEARL BRACELET MULTIPACK
                                </p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01251">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01251BK2OS_1024x1024.jpg?v=1614271160" alt="JET STONE AND PEARL EARRING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">JET STONE AND PEARL EARRING MULTIPACK
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85bw00070">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85BW00070GO1OS_1024x1024.jpg?v=1614265533" alt="GOLD CHAIN ANKLET MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">GOLD CHAIN ANKLET MULTIPACK
                                </p>
                                <p><strong>£10.00</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01250">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01250CR1OS_1024x1024.jpg?v=1613561165" alt="ORGANIC PEARL HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">ORGANIC PEARL HOOP EARRING</p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00550">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00550GO1OS_1024x1024.jpg?v=1618484082" alt="CHUNKY TWIST CHAIN AND STARBUST NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">CHUNKY TWIST CHAIN AND STARBUST NECKLACE</p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00548">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00548GO1OS_1024x1024.jpg?v=1618483998" alt="SNAKE AND PADLOCK MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">SNAKE AND PADLOCK MULTIROW NECKLACE
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00547">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00547GO1OS_1024x1024.jpg?v=1618483829" alt="MIXED PAVE CHAIN NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">MIXED PAVE CHAIN NECKLACE</p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00546">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00546GO1OS_1024x1024.jpg?v=1618483700" alt="PEACE AND LOVE MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">PEACE AND LOVE MULTIROW NECKLACE
                                </p>
                                <p><strong>£14.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00544">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00544GO1OS_1024x1024.jpg?v=1618483571" alt="AMOUR AND CHIPPING MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">AMOUR AND CHIPPING MULTIROW NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00541">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00541MU4OS_1024x1024.jpg?v=1618483469" alt="TWIST CHAIN AND PEARL MULTIROW NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">TWIST CHAIN AND PEARL MULTIROW NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85nw00540">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00540GO1OS_1024x1024.jpg?v=1618483246" alt="CHUNKY TWIST CHAIN NECKLACE">

                                <p style="padding-top: 15px; white-space: normal !important;">CHUNKY TWIST CHAIN NECKLACE
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01272">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01272GO1OS_1024x1024.jpg?v=1618482887" alt="SNAKE AND HEART EARRING MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">SNAKE AND HEART EARRING MULTIPACK
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01271">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01271BU7OS_1024x1024.jpg?v=1618482783" alt="SUNBURST DROP HOOP EARRING">

                                <p style="padding-top: 15px; white-space: normal !important;">SUNBURST DROP HOOP EARRING</p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>

                        <a href="/products/lm85er01268">

                            <div class="productimagesize">

                                <img style="width: 100%; height: auto;" src="//cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85ER01268MU4OS_1024x1024.jpg?v=1618482274" alt="CHAIN AND PEARL DROP HOOP MULTIPACK">

                                <p style="padding-top: 15px; white-space: normal !important;">CHAIN AND PEARL DROP HOOP MULTIPACK
                                </p>
                                <p><strong>£12.50</strong></p>


                            </div>
                        </a>


                    </div>
                </div>
            </section>





        </div>
        <div id="shopify-section-16035550665eddd9e2" class="shopify-section">
            <section data-section-id="16035550665eddd9e2" id="home-hero" class="home-hero">
                <div class="sectioneightblock">
                    <div class="sectioneightanimationarea">
                        <h1 class="sectioneighttitle">Accessories that thrive on individuality.</h1>
                    </div>
                    <div class="sectioneighttitlearea">
                        <h3 class="sectioneightribbonone">Authentic</h3>
                        <h3 class="sectioneightribbontwo">and creative</h3>
                        <p class="sectioneightcontent">Liars and Lovers is a mentality, a way of living. it represents authenticity, transformation and duality for the ever-evolving people who have the confidence to just be themselves.</p>
                    </div>
                </div>

                <script>
                    $(window).on("load", function () {
                        $(window).scroll(function () {
                            var windowBottom = $(this).scrollTop();
                            $(".sectioneighttitlearea").each(function () {
                                /* Check the location of each desired element */
                                var objectBottom = $(this).offset().top;

                                /* If the element is completely within bounds of the window, fade it in */
                                if (objectBottom < windowBottom) { //object comes into view (scrolling down)
                                    if ($(this).css("opacity") == 0) {
                                        $(this).fadeTo(500, 1);
                                    }
                                } else { //object goes out of view (scrolling up)
                                    if ($(this).css("opacity") == 1) {
                                        $(this).fadeTo(500, 0);
                                    }
                                }
                            });
                        }).scroll(); //invoke scroll-handler on page-load
                    });
                </script>
            </section>





        </div>
        <!-- END content_for_index -->

    <limespot></limespot>
        <jsp:include page="user/footer.jsp"/>

    <!-- social footer pop out starts -->
    <script>
        // image one
        var modal = document.getElementById("myModalone");
        var img = document.getElementById("socialfooterimageone");
        var span = document.getElementsByClassName("close")[0];

        // image two
        var modaltwo = document.getElementById("myModaltwo");
        var imgtwo = document.getElementById("socialfooterimagetwo");
        var spantwo = document.getElementsByClassName("close")[1];

        // image three
        var modalthree = document.getElementById("myModalthree");
        var imgthree = document.getElementById("socialfooterimagethree");
        var spanthree = document.getElementsByClassName("close")[2];

        // image four
        var modalfour = document.getElementById("myModalfour");
        var imgfour = document.getElementById("socialfooterimagefour");
        var spanfour = document.getElementsByClassName("close")[3];

        // image five
        var modalfive = document.getElementById("myModalfive");
        var imgfive = document.getElementById("socialfooterimagefive");
        var spanfive = document.getElementsByClassName("close")[4];


        // image one 
        img.onclick = function () {
            modal.style.display = "block";
        }
        span.onclick = function () {
            modal.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // image two
        imgtwo.onclick = function () {
            modaltwo.style.display = "block";
        }
        spantwo.onclick = function () {
            modaltwo.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modaltwo) {
                modaltwo.style.display = "none";
            }
        }

        // image three
        imgthree.onclick = function () {
            modalthree.style.display = "block";
        }
        spanthree.onclick = function () {
            modalthree.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modalthree) {
                modalthree.style.display = "none";
            }
        }

        // image four
        imgfour.onclick = function () {
            modalfour.style.display = "block";
        }
        spanfour.onclick = function () {
            modalfour.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modalfour) {
                modalfour.style.display = "none";
            }
        }

        // image five
        imgfive.onclick = function () {
            modalfive.style.display = "block";
        }
        spanfive.onclick = function () {
            modalfive.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modalfive) {
                modalfive.style.display = "none";
            }
        }
    </script>
    <!-- social footer pop out ends -->
</div>




<script>
</script>
<script>
    theme.productStrings = {
        addToCart: "Add to Cart",
        soldOut: "Sold Out",
        unavailable: "Unavailable"
    }
</script>





<div id="SearchModal" class="mfp-hide">
    Liquid error: Could not find asset snippets/search-bar.liquid
</div>
<ul hidden>
    <li id="a11y-refresh-page-message">choosing a selection results in a full page refresh</li>
</ul>

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
<!-- Initialize App -->
<script defer src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-init.js?enable_js_minification=1&v=1928539781059772811"></script>
<!--end-bc-sf-filter-js-->


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


<script>
    mlvedaFlagCalled = true;
</script>




<noscript>
<style>
    .limoniapps-discountninja-block {
        animation: unset !important;
    }

    .limoniapps-discountninja-block:after {
        animation: unset !important;
    }

    .limoniapps-discountninja-block .limoniapps-discountninja-button-spinner:before {
        animation: unset !important;
    }
</style>
<div class="limoniapps-discountninja-warning-nojs">This website uses JavaScript to apply discounts. To be
    eligible for discounts, please enable JavaScript for your browser.</div>
</noscript>


<style type="text/css">

</style>

</body>

</html>
