<%-- 
    Document   : shippingdetails
    Created on : May 5, 2021, 10:03:41 AM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*" %>
<!DOCTYPE html>
<%    DataBase shopCartHandle = new DataBase();
    Customer me = (Customer) session.getAttribute("loginUser");
//UserHandle userHandle=new UserHandle();
    List<Products> list = null;
    list = shopCartHandle.findGoodsByUser(me);
    System.out.println("first if" + " " + me.getEmail() + " pwd :L" + me.getId() + "");
%>

<%!int total = 0;%>
<html lang="en" dir="ltr" class="no-js windows chrome desktop page--no-banner page--logo-main page--show page--show card-fields">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, height=device-height, minimum-scale=1.0, user-scalable=0">
        <meta name="referrer" content="origin">

        <title> Shipping - 7rings - Checkout</title>

        <meta data-browser="chrome" data-browser-major="90">
        <meta data-body-font-family="-apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Roboto, Helvetica, Arial, sans-serif, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;" data-body-font-type="system">

        <meta id="shopify-digital-wallet" name="shopify-digital-wallet" content="/24832901223/digital_wallets/dialog">

        <meta name="shopify-checkout-api-token" content="c229805dd8a3e1f48aa40112e8dfee2e">

        <meta name="shopify-checkout-authorization-token" content="45a7823536d9762588cc6d9b3e4eb8ca" />

        <meta id="shopify-regional-checkout-config" name="shopify-regional-checkout-config" content="{&quot;bugsnag&quot;:{&quot;checkoutJSApiKey&quot;:&quot;717bcb19cf4dd1ab6465afcec8a8de02&quot;,&quot;endpoint&quot;:&quot;https:\/\/notify.bugsnag.com&quot;}}"
              />
        <meta id="autocomplete-service-sandbox-url" name="autocomplete-service-sandbox-url" content="https://checkout.shopify.com/24832901223/sandbox/autocomplete_service?locale=en" />
        <meta property="og:title" content="Purchase PEARL AND BEATEN COIN MULTIROW NECKLACE and 1 other item" />
        <meta property="og:image" content="https://cdn.shopify.com/s/files/1/0248/3290/1223/products/LM85NW00320CR1GO_1024x1024.jpg?v=1579619129" />

        <link rel="stylesheet" href="//cdn.shopify.com/app/services/24832901223/assets/120201347175/checkout_stylesheet/v2-ltr-edge-1dd58b0ad54342536b141709174f812a-12945" media="all" />

        <script src="js/checkout_countries.js" crossorigin="anonymous"></script>

        <script src="js/checkout.js" crossorigin="anonymous"></script>

    </head>

    <body>
        <a href="#main-header" class="skip-to-content">
            Skip to content
        </a>



 <form class="edit_checkout" method="post" action="https://sandbox.payhere.lk/pay/checkout">
        <header class="banner" data-header role="banner">
            <div class="wrap">

                <a class="logo logo--left" href="#"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="" /></a>

                <h1 class="visually-hidden">
                    Shipping
                </h1>


            </div>
        </header>

        <aside role="complementary">
            <button class="order-summary-toggle order-summary-toggle--show shown-if-js" aria-expanded="false" aria-controls="order-summary" data-drawer-toggle="[data-order-summary]">
                <span class="wrap">
                    <span class="order-summary-toggle__inner">
                        <span class="order-summary-toggle__icon-wrapper">
                            <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__icon">
                            <path d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z" />
                            </svg>
                        </span>
                        <span class="order-summary-toggle__text order-summary-toggle__text--show">
                            <span>Show order summary</span>
                            <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z" /></svg>
                        </span>
                        <span class="order-summary-toggle__text order-summary-toggle__text--hide">
                            <span>Hide order summary</span>
                            <svg width="11" height="7" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M6.138.876L5.642.438l-.496.438L.504 4.972l.992 1.124L6.138 2l-.496.436 3.862 3.408.992-1.122L6.138.876z" /></svg>
                        </span>
                        <dl class="order-summary-toggle__total-recap total-recap" data-order-summary-section="toggle-total-recap">
                            <dt class="visually-hidden"><span>Sale price</span></dt>
                            <dd>
                                <span class="order-summary__emphasis total-recap__final-price skeleton-while-loading" data-checkout-payment-due-target="2700">£27.00</span>
                            </dd>
                        </dl>
                        </button>
                        </aside>



                        <div class="content" data-content>
                            <div class="wrap">
                                <div class="main">
                                    <header class="main__header" role="banner">

                                        <a class="logo logo--left" href="#"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="images/logo-transparent.png" /></a>

                                        <h1 class="visually-hidden">
                                            Shipping
                                        </h1>


                                        <nav aria-label="Breadcrumb">
                                            <ol class="breadcrumb " role="list">
                                                <li class="breadcrumb__item breadcrumb__item--completed">
                                                    <a class="breadcrumb__link" href="#">Cart</a>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false"> <use xlink:href="#chevron-right" /> </svg>
                                                </li>

                                                <li class="breadcrumb__item breadcrumb__item--completed">
                                                    <a class="breadcrumb__link" href="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8?step=contact_information">Information</a>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false"> <use xlink:href="#chevron-right" /> </svg>
                                                </li>
                                                <li class="breadcrumb__item breadcrumb__item--current" aria-current="step">
                                                    <span class="breadcrumb__text">Shipping</span>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false"> <use xlink:href="#chevron-right" /> </svg>
                                                </li>
                                                <li class="breadcrumb__item breadcrumb__item--blank">
                                                    <span class="breadcrumb__text">Payment</span>
                                                </li>
                                            </ol>
                                        </nav>



                                        <div class="shown-if-js" data-alternative-payments>
                                        </div>



                                    </header>
                                    <main class="main__content" role="main">
                                        <div class="step" data-step="shipping_method" data-last-step="false">
                                           
                                                <input type="hidden" name="merchant_id" value="1217216">
                                                <!-- Replace your Merchant ID -->
                                                <input type="hidden" name="return_url" value="userinvoice.jsp">
                                                <input type="hidden" name="cancel_url" value="userinvoice.jsp">
                                                <input type="hidden" name="notify_url" value="userinvoice.jsp">
                                                <br><br>Item Details<br>
                                                <input type="text" name="order_id" value="ItemNo12345">
                                                <input type="text" name="items" value="Door bell wireless"><br>
                                                <input type="text" name="currency" value="LKR">
                                                <input type="text"  value="1000">
                                                <br><br>Customer Details<br>
                                                <input type="text" name="first_name" value="Saman">
                                                <input type="text" name="last_name" value="Perera"><br>
                                                <input type="text" name="email" value="wasathkaltheekshana@gmail.com">
                                                <input type="text" name="phone" value="0771234567"><br>
                                                <input type="text" name="address" value="No.1, Galle Road">
                                                <input type="text" name="city" value="Colombo">
                                                <input type="hidden" name="country" value="Sri Lanka"><br><br>
                                                <!--                                                <input type="submit" value="Buy Now">-->
                                                <div class="step__sections">
                                                    <div class="section">
                                                        <div class="content-box">
                                                            <div role="table" class="content-box__row content-box__row--tight-spacing-vertical">
                                                                <div role="row" class="review-block">
                                                                    <div class="review-block__inner">
                                                                        <div role="rowheader" class="review-block__label">
                                                                            Contact
                                                                        </div>
                                                                        <div role="cell" class="review-block__content">
                                                                            <bdo dir="ltr"><%=me.getEmail()%></bdo>
                                                                        </div>
                                                                    </div>
                                                                    <div role="cell" class="review-block__link">
                                                                        <a class="link--small" href="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8?step=contact_information">
                                                                            <span aria-hidden="true">Change</span>
                                                                            <span class="visually-hidden">Change contact information</span>
                                                                        </a>
                                                                    </div>
                                                                </div>



                                                                <div role="row" class="review-block">
                                                                    <div class="review-block__inner">
                                                                        <div role="rowheader" class="review-block__label">
                                                                            Ship to
                                                                        </div>
                                                                        <div role="cell" class="review-block__content">
                                                                            <address class="address address--tight">
                                                                               <%=me.getAddress1()%>,<%=me.getAddress2()%>
                                                                                <address>
                                                                                    </div>
                                                                                    </div>
                                                                                    <div role="cell" class="review-block__link">
                                                                                        <a class="link--small" href="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8?step=contact_information">
                                                                                            <span aria-hidden="true">Change</span>
                                                                                            <span class="visually-hidden">Change shipping address</span>
                                                                                        </a>      </div>
                                                                                    </div>


                                                                                    </div>
                                                                                    </div>
                                                                                    </div>


                                                                                    <div class="section section--shipping-method">
                                                                                        <div class="section__header">
                                                                                            <h2 class="section__title" id="main-header" tabindex="-1">
                                                                                                Shipping method
                                                                                            </h2>

                                                                                        </div>

                                                                                        <div class="section__content">


                                                                                            <div class="content-box" data-shipping-methods>


                                                                                                <div class="content-box__row">
                                                                                                    <div class="radio-wrapper" data-shipping-method="shopify-Free%20Shipping-0.00">
                                                                                                        <div class="radio__input">
                                                                                                            <input class="input-radio" data-checkout-total-shipping="Free" data-checkout-total-shipping-cents="0" data-checkout-shipping-rate="Free" data-checkout-original-shipping-rate="Free" data-checkout-total-price="£27.00" data-checkout-total-price-cents="2700" data-checkout-payment-due="£27.00" data-checkout-payment-due-cents="2700" data-checkout-payment-subform="required" data-checkout-subtotal-price="£27.00" data-checkout-subtotal-price-cents="2700" data-checkout-total-taxes="£4.50" data-checkout-total-taxes-cents="450" data-checkout-multiple-shipping-rates-group="false" data-backup="shopify-Free%20Shipping-0.00" type="radio" value="shopify-Free%20Shipping-0.00" name="checkout[shipping_rate][id]" id="checkout_shipping_rate_id_shopify-free20shipping-0_00" />
                                                                                                        </div>
                                                                                                        <label class="radio__label" for="checkout_shipping_rate_id_shopify-free20shipping-0_00">
                                                                                                            <span class="radio__label__primary" data-shipping-method-label-title="Free Shipping">
                                                                                                                Free Shipping


                                                                                                            </span>
                                                                                                            <span class="radio__label__accessory">
                                                                                                                <span class="content-box__emphasis">
                                                                                                                    Free
                                                                                                                </span>
                                                                                                            </span>
                                                                                                        </label>      </div> <!-- /radio-wrapper-->
                                                                                                </div>

                                                                                            </div>


                                                                                        </div> 
                                                                                    </div> 

                                                                                    </div>

                                                                                    <div class="step__footer" data-step-footer>

                                                                                        <button type="submit" value="Buy Now" name="button"  id="continue_button" class="step__footer__continue-btn btn" aria-busy="false">


                                                                                        </button>
                                                                                        <a class="step__footer__previous-link" href="userinvoice.jsp"><svg focusable="false" aria-hidden="true" class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4"/></svg><span class="step__footer__previous-link-content">Return to information</span></a>
                                                                                    </div>



                                                                                 
                                                                                    </div>


                                                                                    <div class="hidden">
                                                                                        <span class="visually-hidden" id="forwarding-external-new-window-message">
                                                                                            Opens external website in a new window.
                                                                                        </span>

                                                                                        <span class="visually-hidden" id="forwarding-new-window-message">
                                                                                            Opens in a new window.
                                                                                        </span>

                                                                                        <span class="visually-hidden" id="forwarding-external-message">
                                                                                            Opens external website.
                                                                                        </span>

                                                                                        <span class="visually-hidden" id="checkout-context-step-one">
                                                                                            Customer information - Liars &amp; Lovers - Checkout
                                                                                        </span>
                                                                                    </div>




                                                                                    </main>
                                                                                    <footer class="main__footer" role="contentinfo">
                                                                                        <ul class="policy-list" role="list">
                                                                                            <li class="policy-list__item ">
                                                                                                <a aria-haspopup="dialog" data-modal="policy-refund-policy" data-title-text="Refund policy" data-close-text="Close" data-iframe="true" href="/24832901223/policies/refund-policy.html?locale=en">Refund policy</a>
                                                                                            </li>
                                                                                            <li class="policy-list__item ">
                                                                                                <a aria-haspopup="dialog" data-modal="policy-shipping-policy" data-title-text="Shipping policy" data-close-text="Close" data-iframe="true" href="/24832901223/policies/shipping-policy.html?locale=en">Shipping policy</a>
                                                                                            </li>
                                                                                            <li class="policy-list__item ">
                                                                                                <a aria-haspopup="dialog" data-modal="policy-privacy-policy" data-title-text="Privacy policy" data-close-text="Close" data-iframe="true" href="/24832901223/policies/privacy-policy.html?locale=en">Privacy policy</a>
                                                                                            </li>
                                                                                            <li class="policy-list__item ">
                                                                                                <a aria-haspopup="dialog" data-modal="policy-terms-of-service" data-title-text="Terms of service" data-close-text="Close" data-iframe="true" href="/24832901223/policies/terms-of-service.html?locale=en">Terms of service</a>
                                                                                            </li>
                                                                                        </ul>




                                                                                    </footer>
                                                                                    </div>
                                                                                    <aside class="sidebar" role="complementary">
                                                                                        <div class="sidebar__header">

                                                                                            <a class="logo logo--left" href="#"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LOGO_3.png?12945" /></a>

                                                                                            <h1 class="visually-hidden">
                                                                                                Shipping
                                                                                            </h1>


                                                                                        </div>
                                                                                        <div class="sidebar__content">
                                                                                            <div id="order-summary" class="order-summary order-summary--is-collapsed" data-order-summary>
                                                                                                <h2 class="visually-hidden-if-js">Order summary</h2>

                                                                                                <div class="order-summary__sections">
                                                                                                    <div class="order-summary__section order-summary__section--product-list">
                                                                                                        <div class="order-summary__section__content">
                                                                                                            <table class="product-table">
                                                                                                                <caption class="visually-hidden">Shopping cart</caption>
                                                                                                                <thead class="product-table__header">
                                                                                                                    <tr>
                                                                                                                        <th scope="col"><span class="visually-hidden">Product image</span></th>
                                                                                                                        <th scope="col"><span class="visually-hidden">Description</span></th>
                                                                                                                        <th scope="col"><span class="visually-hidden">Quantity</span></th>
                                                                                                                        <th scope="col"><span class="visually-hidden">Price</span></th>
                                                                                                                    </tr>
                                                                                                                </thead>
                                                                                                                <tbody data-order-summary-section="line-items">
                                                                                                                    <%    if (list.size() != 0) {
                                                                                                                            String goodsIdList = "";%>

                                                                                                                    <%
                                                                                                                        for (int i = 0; i < list.size(); i++) {
                                                                                                                            Products get = list.get(i);
                                                                                                                             total = total + get.getPrice();
                                                                                                                    %>
                                                                                                                    <tr class="product" data-product-id="4474904477799" data-variant-id="33070018822247" data-product-type="Multirow Necklaces" data-customer-ready-visible>
                                                                                                                        <td class="product__image">
                                                                                                                            <div class="product-thumbnail ">
                                                                                                                                <div class="product-thumbnail__wrapper">
                                                                                                                                    <img alt="PEARL AND BEATEN COIN MULTIROW NECKLACE - GOLD" class="product-thumbnail__image" src="./images/<%=get.getDefault_image()%>" />
                                                                                                                                </div>
                                                                                                                                <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
                                                                                                                            </div>

                                                                                                                        </td>
                                                                                                                        <th class="product__description" scope="row">
                                                                                                                            <span class="product__description__name order-summary__emphasis"><%=get.getTitle()%></span>
                                                                                                                            <span class="product__description__variant order-summary__small-text"><%=get.getMaterial_color()%></span>

                                                                                                                        </th>
                                                                                                                        <td class="product__quantity">
                                                                                                                            <span class="visually-hidden">
                                                                                                                                1
                                                                                                                            </span>
                                                                                                                        </td>
                                                                                                                        <td class="product__price">
                                                                                                                            <span class="order-summary__emphasis skeleton-while-loading">Rs <%=get.getPrice()%></span>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <%}%>

                                                                                                                    <%} else {
                                                                                                                    %>
                                                                                                                    The shopping cart is empty!;
                                                                                                                    <%}%>
                                                                                                                </tbody>
                                                                                                            </table>

                                                                                                            <div class="order-summary__scroll-indicator" aria-hidden="true" tabindex="-1">
                                                                                                                Scroll for more items
                                                                                                                <svg aria-hidden="true" focusable="false" class="icon-svg icon-svg--size-12"> <use xlink:href="#down-arrow" /> </svg>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>


                                                                                                    <div class="order-summary__section order-summary__section--total-lines" data-order-summary-section="payment-lines">
                                                                                                        <table class="total-line-table">
                                                                                                            <caption class="visually-hidden">Cost summary</caption>
                                                                                                            <thead>
                                                                                                                <tr>
                                                                                                                    <th scope="col"><span class="visually-hidden">Description</span></th>
                                                                                                                    <th scope="col"><span class="visually-hidden">Price</span></th>
                                                                                                                </tr>
                                                                                                            </thead>
                                                                                                            <tbody class="total-line-table__tbody">
                                                                                                                <tr class="total-line total-line--subtotal">
                                                                                                                    <th class="total-line__name" scope="row">Subtotal</th>
                                                                                                                    <td class="total-line__price">
                                                                                                                        <span class="order-summary__emphasis skeleton-while-loading" data-checkout-subtotal-price-target="2700">
                                                                                                                            Rs <%=total%>
                                                                                                                        </span>
                                                                                                                    </td>
                                                                                                                </tr>


                                                                                                                <tr class="total-line total-line--shipping">
                                                                                                                    <th class="total-line__name" scope="row">
                                                                                                                        <span>
                                                                                                                            Shipping
                                                                                                                        </span>

                                                                                                                    </th>
                                                                                                                    <td class="total-line__price">
                                                                                                                        <span class="skeleton-while-loading order-summary__small-text" data-checkout-total-shipping-target="0">
                                                                                                                            Calculated at next step
                                                                                                                        </span>
                                                                                                                    </td>
                                                                                                                </tr>






                                                                                                            </tbody>
                                                                                                            <tfoot class="total-line-table__footer">
                                                                                                                <tr class="total-line">
                                                                                                                    <th class="total-line__name payment-due-label" scope="row">
                                                                                                                        <span class="payment-due-label__total">Total</span>
                                                                                                                        <span class="payment-due-label__taxes order-summary__small-text " data-checkout-taxes>
                                                                                                                            Including <span data-checkout-total-taxes-target="450">£4.50</span> in taxes
                                                                                                                        </span>
                                                                                                                    </th>
                                                                                                                    <td class="total-line__price payment-due" data-presentment-currency="GBP">
                                                                                                                        <input name="amount"  class="payment-due__price skeleton-while-loading--lg" data-checkout-payment-due-target="2700"  value=<%=total%>
                                                                                                                           />
                                                                                                                    </td>
                                                                                                                </tr>

                                                                                                            </tfoot>
                                                                                                        </table>

                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="visually-hidden" data-order-summary-section="accessibility-live-region">
                                                                                                <div aria-live="polite" aria-atomic="true" role="status">
                                                                                                    Updated total price:
                                                                                                    <span data-checkout-payment-due-target="2700">
                                                                                                        £27.00
                                                                                                    </span>
                                                                                                </div>
                                                                                            </div>


                                                                                            <div id="partial-icon-symbols" class="icon-symbols" data-tg-refresh="partial-icon-symbols" data-tg-refresh-always="true"><svg xmlns="http://www.w3.org/2000/svg"><symbol id="spinner-button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M20 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0v2c-4.418 0-8 3.582-8 8s3.582 8 8 8 8-3.582 8-8h2z"/></svg></symbol>
                                                                                                <symbol id="chevron-right"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4"/></svg></symbol>
                                                                                                <symbol id="down-arrow"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 12"><path d="M10.817 7.624l-4.375 4.2c-.245.235-.64.235-.884 0l-4.375-4.2c-.244-.234-.244-.614 0-.848.245-.235.64-.235.884 0L5.375 9.95V.6c0-.332.28-.6.625-.6s.625.268.625.6v9.35l3.308-3.174c.122-.117.282-.176.442-.176.16 0 .32.06.442.176.244.234.244.614 0 .848"/></svg></symbol>
                                                                                                <symbol id="arrow"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><path d="M16 8.1l-8.1 8.1-1.1-1.1L13 8.9H0V7.3h13L6.8 1.1 7.9 0 16 8.1z"/></svg></symbol>
                                                                                                <symbol id="mobile-phone"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 2.99C5 1.34 6.342 0 8.003 0h7.994C17.655 0 19 1.342 19 2.99v18.02c0 1.65-1.342 2.99-3.003 2.99H8.003C6.345 24 5 22.658 5 21.01V2.99zM7 5c0-.552.456-1 .995-1h8.01c.55 0 .995.445.995 1v14c0 .552-.456 1-.995 1h-8.01C7.445 20 7 19.555 7 19V5zm5 18c.552 0 1-.448 1-1s-.448-1-1-1-1 .448-1 1 .448 1 1 1z" fill-rule="evenodd"/></svg></symbol>
                                                                                                <symbol id="close"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><path d="M15.1 2.3L13.7.9 8 6.6 2.3.9.9 2.3 6.6 8 .9 13.7l1.4 1.4L8 9.4l5.7 5.7 1.4-1.4L9.4 8"/></svg></symbol>
                                                                                                <symbol id="spinner-small"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><path d="M32 16c0 8.837-7.163 16-16 16S0 24.837 0 16 7.163 0 16 0v2C8.268 2 2 8.268 2 16s6.268 14 14 14 14-6.268 14-14h2z"/></svg></symbol></svg></div>


                                                                                        </div>
                                                                                    </aside>
                                                                                    </div>
                                                                                    </div>
                                                                                                                           </form>
                                                                                    </body>
                                                                                    </html>