<%-- 
    Document   : head
    Created on : Apr 30, 2021, 7:29:44 PM
    Author     : wasat
--%>

    <!-- Designed and developed by Theekshana Harischandra -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <style>
        .async-hide {
            opacity: 0 !important
        }
    </style>
    <!-- Basic page needs ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">



    <!-- Title and description Section ================================================== -->
    <title>
        Liars &amp; Lovers® Official Store | Fashion Jewellery &amp; Accessories | ?
    </title>


    <meta name="description" content="Shop the latest jewellery trends from Liars &amp; Lovers. Statement fashion pieces, delicate gold plated luxury &amp; piercing jewellery ?? Free UK Tracked Delivery">


    <!-- Helpers Files For meta tags ================================================== -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="canonical" href="https://liarsandlovers.com/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <meta name="theme-color" content="#1c1d1d">

    <!-- CSS  Default Style ================================================== -->
    <link href="assets/custom_style.scss.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/theme.scss.css" rel="stylesheet" type="text/css" media="all" />
    <!-- CSS  Default Style ================================================== -->
    <!-- CSS Theme ================================================== -->

    <link href="assets/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/plugins.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/style3.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/responsive.min.css" rel="stylesheet" type="text/css" media="all" />
    
    <link href="assets/custom.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/slick-theme.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/slick.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/swiper.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="assets/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets/jquery-ui.min.css" type="text/css">
    <!--<link rel="stylesheet" href="assets/font-awesome.min.css" type="text/css">-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link href="assets/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/breaking-news-ticker.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="assets/style1.css" type="text/css">
    <!-- CSS Theme ================================================== -->
    <!-- Sections ================================================== -->
    <script>
        window.theme = window.theme || {};
        theme.strings = {
            zoomClose: "Close (Esc)",
            zoomPrev: "Previous (Left arrow key)",
            zoomNext: "Next (Right arrow key)",
            moneyFormat: "£{{amount}}",
            addressError: "Error looking up that address",
            addressNoResults: "No results for that address",
            addressQueryLimit: "You have exceeded the Google API usage limit. Consider upgrading to a \u003ca href=\"https:\/\/developers.google.com\/maps\/premium\/usage-limits\"\u003ePremium Plan\u003c\/a\u003e.",
            authError: "There was a problem authenticating your Google Maps account.",
            cartEmpty: "Your cart is currently empty.",
            cartCookie: "Enable cookies to use the shopping cart",
            cartSavings: "You're saving [savings]"
        };
        theme.settings = {
            cartType: "drawer",
            gridType: "collage"
        };
    </script>





    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/jquery-2.2.3.min.js?enable_js_minification=1&amp;v=5821186314690718683" type="text/javascript"></script>

    <script id="timelyScript" src="//book.gettimely.com/widget/book-button-v1.4.js"></script>

    <script src="assets/lazysizes.min.js" async="async"></script>

    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/theme.js?enable_js_minification=1&v=4227956520333002161" defer="defer"></script>

 

    <script src="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/modernizr.min.js?enable_js_minification=1&amp;v=2139105474820643245" type="text/javascript"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" integrity="sha384-haqrlim99xjfMxRP6EWtafs0sB1WKcMdynwZleuUSwJR0mDeRYbhtY+KPMr+JL6f" crossorigin="anonymous"></script>



    <link href="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter.scss.css?v=9268506025193494593" rel="stylesheet" type="text/css" media="all" />
    <!--start-bc-al-css-->
    <!--end-bc-al-css-->

    <!-- Start Widgets Slider CSS -->
    <link href="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-widget-slider.scss.css?v=254343886494377597" rel="stylesheet" type="text/css" media="all" />
    <!-- End Widgets Slider CSS -->

    <!--end-bc-sf-filter-css-->

    <script type="text/javascript" src="https://www.webyze.com/ProductColors/productcolors-7c445257d447e6ed9c3d6ecc19804fb1e3c14c81.js?shop=l-l-dev-skin.myshopify.com" async></script>





    <noscript id="limoniapps-discountninja-deferred-css">
            <link
                href="//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/limoniapps-discountninja.css?v=3265481527058855180"
                rel="stylesheet" type="text/css" media="all" />
        </noscript>

    <script src='https://unpkg.com/@webcomponents/webcomponentsjs@2.4.3/webcomponents-loader.js'></script>


    <style>
        #openpayinfobelt {
            top: 25px;
            width: 100%;  
            z-index: 999;
            position: relative;
        }
        
        .openpaycartpagewidget {
            float: right;
        }
        
        .openpaytrust {
            width: 42px;
        }
    </style>
    <!--openpaywidgetsend-->
    <meta property="og:image" content="https://cdn.shopify.com/s/files/1/0248/3290/1223/files/LOGO_3.png?height=628&pad_color=fff&v=1601451890&width=1200" />
    <meta property="og:image:secure_url" content="https://cdn.shopify.com/s/files/1/0248/3290/1223/files/LOGO_3.png?height=628&pad_color=fff&v=1601451890&width=1200" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
