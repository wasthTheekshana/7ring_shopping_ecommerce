<%-- 
    Document   : usercheckout
    Created on : May 4, 2021, 8:50:09 PM
    Author     : wasat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<%@page import="com.mysql.jdbc.StringUtils" %>
<%@page import="com.mysql.jdbc.Util" %>
<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>
<%@page import="javax.servlet.http.HttpSession,java.sql.*,DataBase.*,model.*,util.*" %>
<!DOCTYPE html>
<%    DataBase shopCartHandle = new DataBase();
Customer me =(Customer)session.getAttribute("loginUser");
//UserHandle userHandle=new UserHandle();
    List<Products> list = null;
    list = shopCartHandle.findGoodsByUser(me);
System.out.println("first if"+" "+me.getEmail()+" pwd :L"+me.getFname()+"");
%>

<%!int total = 0;%>
<html lang="en" dir="ltr" class="no-js windows chrome desktop page--no-banner page--logo-main page--show page--show card-fields">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, height=device-height, minimum-scale=1.0, user-scalable=0">
        <meta name="referrer" content="origin">

        <title> Information - 7rings - Checkout</title>

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

        <link rel="stylesheet" href="//cdn.shopify.com/app/services/24832901223/assets/120201347175/checkout_stylesheet/v2-ltr-edge-1dd58b0ad54342536b141709174f812a-12926" media="all" />

        <script type="text/javascript">
            Shopify = window.Shopify || {};
            ShopifyExperiments = window.ShopifyExperiments || {};
            ShopifyPay = window.ShopifyPay || {};
            ShopifyCheckoutSandbox = window.ShopifyCheckoutSandbox || {};

            if (window.opener) {
                window.opener.postMessage(JSON.stringify({
                    "current_checkout_page": "\/checkout\/contact_information"
                }), "*");
            }

            Shopify.Checkout = Shopify.Checkout || {};
            Shopify.Checkout.Autocomplete = true;
            Shopify.Checkout.apiHost = "liars-lovers.myshopify.com";
            Shopify.Checkout.assetsPath = "\/\/cdn.shopify.com\/shopifycloud\/shopify";
            Shopify.Checkout.DefaultAddressFormat = "{firstName}{lastName}_{company}_{address1}_{address2}_{city}_{country}{province}{zip}_{phone}";
            Shopify.Checkout.geolocatedAddress = {
                "lat": 6.871900000000011,
                "lng": 79.89389999999997
            };
            Shopify.Checkout.i18n = {
                "orders": {
                    "order_updates": {
                        "title": "Order updates"
                    },
                    "complete_order": "Complete order",
                    "pay_now": "Pay now"
                },
                "shipping_line": {
                    "pickup_in_store_label": "Pickup",
                    "no_pickup_location": "Your order isn't available for pickup. Enter a shipping address.",
                    "shipping_label": "Shipping",
                    "shipping_default_value": "Calculated at next step",
                    "shipping_free_value": "Free"
                },
                "continue_button": {
                    "continue_to_shipping_method": "Continue to shipping",
                    "continue_to_payment_method": "Continue to payment"
                },
                "qr_code": {
                    "title": "Download the Shop app",
                    "subtitle": "Scan the code with your phone's camera.",
                    "send_link_to_phone": "Or send a link to your phone"
                }
            };
            Shopify.Checkout.locale = "en";
            Shopify.Checkout.normalizedLocale = "en";
            Shopify.Checkout.moneyFormat = "£{{amount}}";
            Shopify.Checkout.page = "show";
            Shopify.Checkout.releaseStage = "production";
            Shopify.Checkout.deployStage = "production";
            Shopify.Checkout.requiresShipping = true;
            Shopify.Checkout.step = "contact_information";
            Shopify.Checkout.token = "862329a2ecc5a7562a167553d2c569a8";
            Shopify.Checkout.currency = "GBP";
            Shopify.Checkout.estimatedPrice = 27.00;
            Shopify.Checkout.dynamicCheckoutPaymentInstrumentsConfig = {
                "paymentInstruments": {
                    "accessToken": "c229805dd8a3e1f48aa40112e8dfee2e",
                    "amazonPayConfig": null,
                    "applePayConfig": {
                        "shopId": 24832901223,
                        "countryCode": "GB",
                        "currencyCode": "GBP",
                        "merchantCapabilities": ["supports3DS"],
                        "merchantId": "gid:\/\/shopify\/Shop\/24832901223",
                        "merchantName": "Liars \u0026 Lovers",
                        "requiredBillingContactFields": ["postalAddress", "email", "phone"],
                        "requiredShippingContactFields": ["postalAddress", "email", "phone"],
                        "shippingType": "shipping",
                        "supportedNetworks": ["visa", "maestro", "masterCard", "amex"],
                        "total": {
                            "type": "pending",
                            "label": "Liars \u0026 Lovers",
                            "amount": "1.00"
                        }
                    },
                    "checkoutConfig": {
                        "domain": "liarsandlovers.com",
                        "shopId": 24832901223
                    },
                    "shopifyPayConfig": {
                        "domain": "liarsandlovers.com",
                        "shopId": 24832901223,
                        "accelerated": false,
                        "supportsLogin": true
                    },
                    "currency": "GBP",
                    "googlePayConfig": null,
                    "locale": "en",
                    "paypalConfig": {
                        "domain": "liarsandlovers.com",
                        "environment": "production",
                        "merchantId": "KNF8AUR4KEGQW",
                        "buttonVersion": "v3",
                        "venmoSupported": false,
                        "locale": "en_US",
                        "shopId": 24832901223
                    },
                    "offsiteConfigs": null,
                    "supportsDiscounts": true,
                    "supportsGiftCards": true,
                    "checkoutDisabled": false
                }
            };
            Shopify.Checkout.applePayConfig = null;
            Shopify.Checkout.hasSellingPlan = false;
            Shopify.Checkout.customer = {
                "customer_id": null,
                "email": null,
                "first_name": null,
                "last_name": null
            };
            Shopify.Checkout.requiresConfirmationStep = false;
            ShopifyExperiments.AutocompleteServiceApiHost = "https:\/\/autocomplete-service.shopifycloud.com";
            ShopifyExperiments.googleAutocompleteAllCountries = false;

            ShopifyPay.enabled = true;
            ShopifyPay.apiHost = "shop.app\/pay";
            ShopifyPay.apiToken = "TnBqbFdnTitud0dvaG5oNUwrWklxUi9Ka245ZGVPZEpoSllWN25CUGRIeGd3d0tMVkxRMnQ5ZlltNUpnTXk0Ly0tQVdZcWhOVDlJaENnK0V5bDh3czZQZz09--5e0a8837789b4829826185aa975810769629d23a";
            ShopifyPay.transactionParams = "checkout_secret=45a7823536d9762588cc6d9b3e4eb8ca\u0026encrypted_params=Vk9jbVdUdmIvbWsxYWV0UnI5eU9malg5bFBVZ241WS9pUDdoSkJ0cXJHY0Fub2JYYkVNcTJHRGp3a3Qvc21hZXRBbEhUWnUrNW1Zbjk2aXUvd3drNlVjM0JyeVMvWXNGNmQ3VTBmVURhdTJEdVRLbVQyZ1RyV2swS1JKUE43TkthREFMQjZGdDNPWHdzRHNVWittS0lsNDRUSzhqekRyZzdueml5V2VJcnQ2cDhKeFVrZVVUQmVaL1RheHF5bmpOL1lWY0lNTmtBSGNoT1Z0TXhra0VKVS85RFpZYzFHSkE0QmkxZ3ZUTCt0ZzlwR2NUVGRJKzNubWRsZlh0OVE3dkRxZG5URXJmaWFtT1A2RzVrV3ZmZTZGQitGSjJFWUFUS3R0T2xVRFlsT0x1UTkyNGFzY1UwOGdUd0ZaakpCR0s2UWJMVGhkeUhCaEtTTytyeFplUUo2NGV2VGdldkk2ak1SeVRmT0pYc3BNTC9UMyt2TEs5MGpSU2hIU0NlOGdWTitISGpoWTE0M0x0NlJiRDNIRm10RG1SRmMraDFmbnErd1A3dlBPUDErdFkyNi8xTUlPaUppN1ROaUpMWkVscnFWa0tnYVJYbG43WkkwYWg4ZDhrLy9QZHZqelJXS2VKcDdRbDl6WTlMMG9FMXc5UUUwZFdIMjB1cFhmZVlVNVRTOExFQlhVSkhWbjFqRk1ndXFiSkg0TGpaUXFCeGVocXlOaVpZZlErbE13RHg1SG1mYVNUUDlYaXowYjdkclFrd0VxRmVkczVmdXpGL01zNXN1VERjQmhnQ0JnZkhQUnhNVU5laTBPcksyTzNFRVp5cTVmRkNPbXFOdm5JcmMzNkRydFNBYXAvYUYva2UranA3Mkk5cHhRNkFNOElzWVpDci9QZHNub0h1K0V0MVgrRzdnNCtMUkxnYVhrc1p2NTQrcUgxSUp6WmVxWm0xcjIzNG5SbUJidm1KbklQYUpEQVZyOVkrSUNTKzhXUnhWY29Pc1BUWnl6RTIyV29henZaSXJ6UHdoYjJwUHFOUjdkeUlKZXVtNHdxQm8xZWRwUXpkeE84Yk0rRG9NTi9KdUxQSUR1NlcyL3pyWEErejRhSTRYaVBrNE5zUi93RzN1RlFJZVVsYys5ejVWaXJNY1NobGdnTkdsTEJpRnJIQzQ1WUpVaGRsWFh1NVlwbWRVTGlDM3JCMDVZZmN2MnV6ZUxrazlmWGtYL3J1bCs2UlRmbnc5STUrNFhVTlJRPS0tZVVtc2FlcmpoTGFyelllUDFPYi96Zz09--cba24c77754481d4ec1ed8373761a56510c353ef\u0026locale=en";
            ShopifyPay.signUpButtonEnabled = true;

            Shopify.houseNumberNudgeCountries = ["AT", "BR", "DE", "IT", "MX", "NL", "ES", "CH"];
            Shopify.autocompleteEnabledCountries = ["AU", "AT", "BE", "BR", "CA", "DK", "FR", "DE", "HK", "IN", "IT", "JP", "LU", "NL", "NZ", "SG", "ES", "CH", "US"];
        </script>


        <script src="js/checkout_countries.js" crossorigin="anonymous"></script>

        <script src="//cdn.shopify.com/shopifycloud/shopify/assets/checkout-409be2ab64dbf97a19fdc666cabfc9cc58926a6fa270b3e5b66d48cace0d8105.js" crossorigin="anonymous"></script>

        <meta id="in-context-paypal-metadata" data-shop-id="24832901223" data-venmo-supported="false" data-environment="production" data-locale="en_US" data-paypal-v4="true" data-currency="GBP">
    </head>

    <body>
        <a href="#main-header" class="skip-to-content">
            Skip to content
        </a>
        <header class="banner" data-header role="banner">
            <div class="wrap">
                <a class="logo logo--left" href="#"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LOGO_3.png?12926" /></a>
                <h1 class="visually-hidden">
                    Information
                </h1>
            </div>
        </header>

        <aside role="complementary">
            <button class="order-summary-toggle order-summary-toggle--show shown-if-js" aria-expanded="false" aria-controls="order-summary" data-drawer-toggle="[data-order-summary]">
                <span class="wrap">
                    <span class="order-summary-toggle__inner">
                        <span class="order-summary-toggle__icon-wrapper">
                            <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg"
                                 class="order-summary-toggle__icon">
                            <path
                                d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z" />
                            </svg>
                        </span>
                        <span class="order-summary-toggle__text order-summary-toggle__text--show">
                            <span>Show order summary</span>
                            <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg"
                                 class="order-summary-toggle__dropdown" fill="#000">
                            <path
                                d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z" />
                            </svg>
                        </span>
                        <span class="order-summary-toggle__text order-summary-toggle__text--hide">
                            <span>Hide order summary</span>
                            <svg width="11" height="7" xmlns="http://www.w3.org/2000/svg"
                                 class="order-summary-toggle__dropdown" fill="#000">
                            <path
                                d="M6.138.876L5.642.438l-.496.438L.504 4.972l.992 1.124L6.138 2l-.496.436 3.862 3.408.992-1.122L6.138.876z" />
                            </svg>
                        </span>
                        <dl class="order-summary-toggle__total-recap total-recap"
                            data-order-summary-section="toggle-total-recap">
                            <dt class="visually-hidden"><span>Sale price</span></dt>
                            <dd>
                                <span class="order-summary__emphasis total-recap__final-price skeleton-while-loading"
                                      data-checkout-payment-due-target="2700">£27.00</span>
                            </dd>
                        </dl>
                        </button>
                        </aside>



                        <div class="content" data-content>
                            <div class="wrap">
                                <div class="main">
                                    <header class="main__header" role="banner">

                                        <a class="logo logo--left" href="https://liarsandlovers.com/"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="images/logo-transparent.png" /></a>

                                        <h1 class="visually-hidden">
                                            Information
                                        </h1>


                                        <nav aria-label="Breadcrumb">
                                            <ol class="breadcrumb " role="list">
                                                <li class="breadcrumb__item breadcrumb__item--completed">
                                                    <a class="breadcrumb__link" href="#">Cart</a>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                                                    <use xlink:href="#chevron-right" />
                                                    </svg>
                                                </li>

                                                <li class="breadcrumb__item breadcrumb__item--current" aria-current="step">
                                                    <span class="breadcrumb__text">Information</span>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                                                    <use xlink:href="#chevron-right" />
                                                    </svg>
                                                </li>
                                                <li class="breadcrumb__item breadcrumb__item--blank">
                                                    <span class="breadcrumb__text">Shipping</span>
                                                    <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                                                    <use xlink:href="#chevron-right" />
                                                    </svg>
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
                                        <div class="step" data-step="contact_information" data-last-step="false">
                                            <form class="edit_checkout" novalidate="novalidate" data-customer-information-form="true" data-email-or-phone="false" action="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8" accept-charset="UTF-8" method="post"><input type="hidden" name="_method" value="patch" /><input type="hidden" name="authenticity_token" value="qmBvQZU0JEdu+XOtcL+Eac/DrUcu+Ca9R1sZU+24eMW8cIWuHYrxFvv9RK/11YH4F65jei21VYMdgAGA+7MufA==" />

                                                <input type="hidden" name="previous_step" id="previous_step" value="contact_information" />
                                                <input type="hidden" name="step" value="shipping_method" />




                                                <div class="step__sections">
                                                    <div class="section section--contact-information">
                                                        <div class="section__header">
                                                            <div class="layout-flex layout-flex--tight-vertical layout-flex--loose-horizontal layout-flex--wrap">
                                                                <h2 class="section__title layout-flex__item layout-flex__item--stretch" id="main-header" tabindex="-1">
                                                                    Contact information
                                                                </h2>

<!--                                                                <p class="layout-flex__item">
                                                                    <span aria-hidden="true">Already have an account?</span>
                                                                    <a href="#">
                                                                        <span class="visually-hidden">Already have an account?</span> Log in
                                                                    </a>
                                                                </p>-->
                                                            </div>
                                                        </div>
                                                        <div class="section__content" data-section="customer-information" data-shopify-pay-validate-on-load="true">
                                                            <div class="fieldset">
                                                                <div data-shopify-pay-email-flow="true" class="field field--required">
                                                                    <label class="field__label" for="checkout_email">Email</label>
                                                                    <div class="field__input-wrapper">
                                                                        <input placeholder="Email" autocapitalize="off" spellcheck="false" autocomplete="shipping email" value=<%=me.getEmail()%> data-shopify-pay-handle="true" data-autofocus="true" data-backup="customer_email" aria-describedby="checkout-context-step-one" aria-required="true" class="field__input"
                                                                               size="30" type="email" name="checkout[email]" id="checkout_email" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="fieldset-description" data-buyer-accepts-marketing>
                                                                <div class="section__content">
                                                                    <div class="checkbox-wrapper">
                                                                        <div class="checkbox__input">
                                                                            <input name="checkout[buyer_accepts_marketing]" type="hidden" value="0" /><input class="input-checkbox" data-backup="buyer_accepts_marketing" type="checkbox" value="1" name="checkout[buyer_accepts_marketing]"
                                                                                                                                                             id="checkout_buyer_accepts_marketing" />
                                                                        </div>
                                                                        <label class="checkbox__label" for="checkout_buyer_accepts_marketing">
                                                                            Keep me up to date on news and exclusive offers
                                                                        </label>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="section section--shipping-address" data-shipping-address>
                                                        <div class="section__header">
                                                            <h2 class="section__title" id="section-delivery-title">
                                                                Shipping address
                                                            </h2>
                                                        </div>


                                                        <div class="section__content">
                                                            <div class="fieldset">
                                                                <div class="address-fields" data-address-fields>
                                                                    <input value=<%=me.getId()%> class="visually-hidden"  autocomplete="shipping given-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="first_name" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][first_name]"
                                                                           />
                                                                    <input value=<%=me.getLname()%> class="visually-hidden" autocomplete="shipping family-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="last_name" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]"
                                                                           />

                                                                    <input value=<%=me.getAddress1()%> class="visually-hidden" autocomplete="shipping address-line1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address1" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][address1]"
                                                                           />
                                                                    <input value=<%=me.getAddress2()%> class="visually-hidden" autocomplete="shipping address-line2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address2" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][address2]" />
                                                                    <input class="visually-hidden" autocomplete="shipping address-level2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="city" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]"
                                                                           />
                                                                    <input class="visually-hidden" autocomplete="shipping country" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="country" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][country]"
                                                                           />
                                                                    <input class="visually-hidden" autocomplete="shipping address-level1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="province" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][province]"
                                                                           />
                                                                    <input class="visually-hidden" autocomplete="shipping postal-code" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="zip" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][zip]"
                                                                           />
                                                                    <input value=<%=me.getPhone()%> class="visually-hidden" autocomplete="shipping tel" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="phone" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][phone]"
                                                                           />



                                                                    <div class="field--half field field--required" data-address-field="first_name">
                                                                        <label class="field__label" for="checkout_shipping_address_first_name">First name</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input  placeholder="First name" autocomplete="shipping given-name" autocorrect="off" data-backup="first_name" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][first_name]" id="checkout_shipping_address_first_name" value=<%=me.getFname()%> />
                                                                        </div>
                                                                    </div>
                                                                    <div class="field--half field field--required" data-address-field="last_name">
                                                                        <label class="field__label" for="checkout_shipping_address_last_name">Last name</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input placeholder="Last name" autocomplete="shipping family-name" autocorrect="off" data-backup="last_name" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]" id="checkout_shipping_address_last_name" value=<%=me.getLname()%>
                                                                                   />
                                                                        </div>
                                                                    </div>

                                                                    <div data-address-field="address1" data-autocomplete-field-container="true" class="field field--required">
                                                                        <label class="field__label" for="checkout_shipping_address_address1">Address</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input placeholder="Address" autocomplete="shipping address-line1" autocorrect="off" role="combobox" aria-autocomplete="list" aria-expanded="false" aria-required="true" data-backup="address1" data-autocomplete-trigger="true" data-autocomplete-title="Suggestions"
                                                                                   data-autocomplete-single-item="1 item available" data-autocomplete-multi-item="{{number}} items available" data-autocomplete-item-selection="{{number}} of {{total}}" data-autocomplete-close="Close suggestions"
                                                                                   class="field__input" size="30" type="text" name="checkout[shipping_address][address1]" id="checkout_shipping_address_address1" value=<%=me.getAddress1()%> />

                                                                            <p class="field__additional-info visually-hidden" data-address-civic-number-warning>
                                                                                <svg class="icon-svg icon-svg--size-16 field__message__icon" aria-hidden="true" focusable="false">
                                                                                <use xlink:href="#info" />
                                                                                </svg> Add a house number if you have one
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                    <div data-address-field="address2" data-autocomplete-field-container="true" class="field field--optional">
                                                                        <label class="field__label" for="checkout_shipping_address_address2">Apartment, suite, etc.
                                                                            (optional)</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input placeholder="Apartment, suite, etc. (optional)" autocomplete="shipping address-line2" autocorrect="off" data-backup="address2" class="field__input" size="30" type="text" name="checkout[shipping_address][address2]" id="checkout_shipping_address_address2" value=<%=me.getAddress2()%>
                                                                                   />
                                                                        </div>
                                                                    </div>
                                                                    <div data-address-field="city" data-autocomplete-field-container="true" class="field field--required">
                                                                        <label class="field__label" for="checkout_shipping_address_city">City</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input placeholder="City" autocomplete="shipping address-level2" autocorrect="off" data-backup="city" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]" id="checkout_shipping_address_city" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="field--third field field--required" data-address-field="country" data-autocomplete-field-container="true">
                                                                        <label class="field__label" for="checkout_shipping_address_country">Country/Region</label>
                                                                        <div class="field__input-wrapper field__input-wrapper--select">
                                                                            <select size="1" autocomplete="shipping country" data-backup="country" class="field__input field__input--select" aria-required="true" name="checkout[shipping_address][country]" id="checkout_shipping_address_country">
                                                                                <option data-code="GB" value="United Kingdom">Sri lanka
                                                                                </option>
                                                                            </select>
                                                                            <div class="field__caret">
                                                                                <svg class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-10 field__caret-svg" role="presentation" aria-hidden="true" focusable="false">
                                                                                <use xlink:href="#caret-down" />
                                                                                </svg>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="field--third field field--required" data-address-field="province" data-autocomplete-field-container="true">
                                                                        <label class="field__label" for="checkout_shipping_address_province">Region</label>
                                                                        <div class="field__input-wrapper field__input-wrapper--select">
                                                                            <input placeholder="Region" autocomplete="shipping address-level1" autocorrect="off" data-backup="province" class="field__input" aria-required="true" type="text" name="checkout[shipping_address][province]" id="checkout_shipping_address_province" />
                                                                            <div class="field__caret shown-if-js">
                                                                                <svg class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-10 field__caret-svg" role="presentation" aria-hidden="true" focusable="false">
                                                                                <use xlink:href="#caret-down" />
                                                                                </svg>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="field--third field field--required" data-address-field="zip" data-autocomplete-field-container="true">
                                                                        <label class="field__label" for="checkout_shipping_address_zip">Postal code</label>
                                                                        <div class="field__input-wrapper">
                                                                            <input placeholder="Postal code" autocomplete="shipping postal-code" autocorrect="off" data-backup="zip" data-autocomplete-trigger="true" data-autocomplete-title="Suggestions" data-autocomplete-single-item="1 item available" data-autocomplete-multi-item="{{number}} items available"
                                                                                   data-autocomplete-item-selection="{{number}} of {{total}}" data-autocomplete-close="Close suggestions" class="field__input field__input--zip" aria-required="true" size="30" type="text" name="checkout[shipping_address][zip]"
                                                                                   id="checkout_shipping_address_zip" />
                                                                        </div>
                                                                    </div>
                                                                    <div data-address-field="phone" class="field field--required">
                                                                        <label class="field__label" for="checkout_shipping_address_phone">Phone</label>
                                                                        <div class="field__input-wrapper field__input-wrapper--icon-right">
                                                                            <input placeholder="Phone" autocomplete="shipping tel" autocorrect="off" data-backup="phone" data-phone-formatter="true" data-phone-formatter-country-select="[name=&#39;checkout[shipping_address][country]&#39;]" class="field__input field__input--numeric"
                                                                                   aria-required="true" size="30" type="tel" name="checkout[shipping_address][phone]" id="checkout_shipping_address_phone" value=<%=me.getPhone()%> />
                                                                            <div class="field__icon">
                                                                                <div data-tooltip="true" id="phone_tooltip" class="tooltip-container">
                                                                                    <button type="button" class="tooltip-control" data-tooltip-control="true" aria-label="More information" aria-describedby="tooltip-for-phone" aria-controls="tooltip-for-phone" aria-pressed="false"><svg
                                                                                            class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-16 icon-svg--block icon-svg--center"
                                                                                            role="presentation" aria-hidden="true"
                                                                                            focusable="false">
                                                                                        <use xlink:href="#question" />
                                                                                        </svg>
                                                                                    </button>
                                                                                    <span class="tooltip" role="tooltip" id="tooltip-for-phone">In case we need to contact
                                                                                        you about your order</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                </div>


                                                            </div>


                                                        </div>
                                                    </div>







                                                </div>

                                                <div class="step__footer" >
                                                    <button name="buttons" type="submit"  class="step__footer__continue-btn btn" >
                                                        <a href="shippingdetails.jsp">
                                                            Continue to shipping
                                                        </a>
                                                    </button>
                                                    <a class="step__footer__previous-link" href="usercartshow.jsp">
                                                        <svg
                                                            focusable="false" aria-hidden="true"
                                                            class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon"
                                                            role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
                                                        <path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4" />
                                                        </svg>
                                                        <span class="step__footer__previous-link-content">Return to cart</span>
                                                    </a>
                                                </div>

                                            </form>
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

                                        <a class="logo logo--left" href="https://liarsandlovers.com/"><img alt="Liars &amp; Lovers" class="logo__image logo__image--medium" src="//cdn.shopify.com/s/files/1/0248/3290/1223/files/LOGO_3.png?12926" /></a>

                                        <h1 class="visually-hidden">
                                            Information
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
                                                                <%    
                                                                                if (list.size() != 0) {
                                                                        String goodsIdList = "";%>

                                                                <%
                                                                        int t1 =0;
                                                                    for (int i = 0; i < list.size(); i++) {
                                                                        
                                                                        Products get = list.get(i);
                                                                        t1 = t1 + + get.getPrice();
                                                                        total = t1;
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
                                                            <svg aria-hidden="true" focusable="false" class="icon-svg icon-svg--size-12">
                                                            <use xlink:href="#down-arrow" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="order-summary__section order-summary__section--discount" data-reduction-form="update">
                                                    <h3 class="visually-hidden">Gift card or discount code</h3>


                                                    <form class="edit_checkout" action="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8" accept-charset="UTF-8" method="post"><input type="hidden" name="_method" value="patch" /><input type="hidden" name="authenticity_token" value="2L4BEDR3BiztolvNHYDkPQOsflGuRIAxRWn7m6gPmqjOruv/vMnTfXimbM+Y6uGs28GwbK0J8w8fsuNIvgTMEQ==" />
                                                        <input type="hidden" name="step" value="contact_information" />
                                                    </form>
                                                    <form class="edit_checkout" action="/24832901223/checkouts/862329a2ecc5a7562a167553d2c569a8" accept-charset="UTF-8" method="post"><input type="hidden" name="_method" value="patch" /><input type="hidden" name="authenticity_token" value="V8qQgEpM1GCLWtAi59k+rQYj7rtlvp+pXJ0n7douZTNB2npvwvIBMR5e5yBiszs83k4ghmbz7JcGRj8+zCUzig==" />
                                                        <input type="hidden" name="step" value="contact_information" />
                                                        <div class="fieldset">
                                                            <div class="field ">
                                                                <label class="field__label" for="checkout_reduction_code">Gift card or
                                                                    discount code</label>
                                                                <div class="field__input-btn-wrapper">
                                                                    <div class="field__input-wrapper">
                                                                        <input placeholder="Gift card or discount code" class="field__input" id="checkout_reduction_code" data-discount-field="true" autocomplete="off" aria-required="true" size="30" type="text" name="checkout[reduction_code]" />
                                                                    </div>

                                                                    <button name="button" type="submit" class="field__input-btn btn btn--disabled" aria-busy="false">
                                                                        <span class="btn__content visually-hidden-on-mobile"
                                                                              aria-hidden="true">
                                                                            Apply
                                                                        </span>
                                                                        <span class="visually-hidden">
                                                                            Apply Discount Code
                                                                        </span>
                                                                        <svg class="icon-svg icon-svg--size-16 btn__icon shown-on-mobile"
                                                                             aria-hidden="true" focusable="false">
                                                                        <use xlink:href="#arrow" />
                                                                        </svg>
                                                                        <svg class="icon-svg icon-svg--size-18 btn__spinner icon-svg--spinner-button"
                                                                             aria-hidden="true" focusable="false">
                                                                        <use xlink:href="#spinner-button" />
                                                                        </svg>
                                                                    </button>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </form>

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

                                                                    <a aria-haspopup="dialog" data-modal="policy-shipping-policy" data-title-text="Shipping policy" data-close-text="Close" data-iframe="true" href="/24832901223/policies/shipping-policy.html?locale=en">
                                                                        <span class="visually-hidden">Shipping costs</span>
                                                                        <svg class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-14 icon-svg--inline-after icon-svg--clickable" role="presentation" aria-hidden="true" focusable="false">
                                                                        <use xlink:href="#question" />
                                                                        </svg>
                                                                    </a>
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
                                                                    <span class="payment-due-label__taxes order-summary__small-text hidden" data-checkout-taxes>
                                                                        Including <span data-checkout-total-taxes-target="0">£0.00</span> in taxes
                                                                    </span>
                                                                </th>
                                                                <td class="total-line__price payment-due" data-presentment-currency="GBP">
                                                                    <span class="payment-due__price skeleton-while-loading--lg" data-checkout-payment-due-target="2700">
                                                                   Rs <%=total%>
                                                                    </span>
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


                                        <div id="partial-icon-symbols" class="icon-symbols" data-tg-refresh="partial-icon-symbols" data-tg-refresh-always="true"><svg xmlns="http://www.w3.org/2000/svg">
                                            <symbol id="info"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path
                                                    d="M12 11h1v7h-2v-5c-.552 0-1-.448-1-1s.448-1 1-1h1zm0 13C5.373 24 0 18.627 0 12S5.373 0 12 0s12 5.373 12 12-5.373 12-12 12zm0-2c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10zM10.5 7.5c0-.828.666-1.5 1.5-1.5.828 0 1.5.666 1.5 1.5 0 .828-.666 1.5-1.5 1.5-.828 0-1.5-.666-1.5-1.5z" />
                                                </svg></symbol>
                                            <symbol id="caret-down"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
                                                <path d="M0 3h10L5 8" fill-rule="nonzero" />
                                                </svg></symbol>
                                            <symbol id="question"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 0C3.6 0 0 3.6 0 8s3.6 8 8 8 8-3.6 8-8-3.6-8-8-8zm.7 13H6.8v-2h1.9v2zm2.6-7.1c0 1.8-1.3 2.6-2.8 2.8l-.1 1.1H7.3L7 7.5l.1-.1c1.8-.1 2.6-.6 2.6-1.6 0-.8-.6-1.3-1.6-1.3-.9 0-1.6.4-2.3 1.1L4.7 4.5c.8-.9 1.9-1.6 3.4-1.6 1.9.1 3.2 1.2 3.2 3z" />
                                                </svg></symbol>
                                            <symbol id="powered-by-google"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 116 15">
                                                <path fill="#737373"
                                                      d="M4.025 3.572c1.612 0 2.655 1.283 2.655 3.27 0 1.974-1.05 3.27-2.655 3.27-.902 0-1.63-.393-1.974-1.06h-.09v3.057H.95V3.68h.96v1.054h.094c.404-.726 1.16-1.166 2.02-1.166zm-.24 5.63c1.16 0 1.852-.884 1.852-2.36 0-1.477-.692-2.362-1.846-2.362-1.14 0-1.86.91-1.86 2.362 0 1.447.72 2.36 1.857 2.36zm7.072.91c-1.798 0-2.912-1.243-2.912-3.27 0-2.033 1.114-3.27 2.912-3.27 1.8 0 2.913 1.237 2.913 3.27 0 2.027-1.114 3.27-2.913 3.27zm0-.91c1.196 0 1.87-.866 1.87-2.36 0-1.5-.674-2.362-1.87-2.362-1.195 0-1.87.862-1.87 2.362 0 1.494.675 2.36 1.87 2.36zm12.206-5.518H22.05l-1.244 5.05h-.094L19.3 3.684h-.966l-1.412 5.05h-.094l-1.242-5.05h-1.02L16.336 10h1.02l1.406-4.887h.093L20.268 10h1.025l1.77-6.316zm3.632.78c-1.008 0-1.71.737-1.787 1.856h3.48c-.023-1.12-.69-1.857-1.693-1.857zm1.664 3.9h1.005c-.305 1.085-1.277 1.747-2.66 1.747-1.752 0-2.848-1.262-2.848-3.26 0-1.987 1.113-3.276 2.847-3.276 1.705 0 2.742 1.213 2.742 3.176v.386h-4.542v.047c.053 1.248.75 2.04 1.822 2.04.815 0 1.366-.3 1.63-.857zM31.03 10h1.01V6.086c0-.89.696-1.535 1.657-1.535.2 0 .563.038.645.06V3.6c-.13-.018-.34-.03-.504-.03-.838 0-1.565.434-1.752 1.05h-.094v-.938h-.96V10zm6.915-5.537c-1.008 0-1.71.738-1.787 1.857h3.48c-.023-1.12-.69-1.857-1.693-1.857zm1.664 3.902h1.005c-.304 1.084-1.277 1.746-2.66 1.746-1.752 0-2.848-1.262-2.848-3.26 0-1.987 1.113-3.276 2.847-3.276 1.705 0 2.742 1.213 2.742 3.176v.386h-4.542v.047c.053 1.248.75 2.04 1.822 2.04.815 0 1.366-.3 1.63-.857zm5.01 1.746c-1.62 0-2.657-1.28-2.657-3.266 0-1.98 1.05-3.27 2.654-3.27.878 0 1.622.416 1.98 1.108h.087V1.177h1.008V10h-.96V8.992h-.094c-.4.703-1.15 1.12-2.02 1.12zm.232-5.63c-1.15 0-1.846.89-1.846 2.364 0 1.476.69 2.36 1.846 2.36 1.148 0 1.857-.9 1.857-2.36 0-1.447-.715-2.362-1.857-2.362zm7.875-3.115h1.024v3.123c.23-.3.507-.53.827-.688.32-.16.668-.238 1.043-.238.78 0 1.416.27 1.9.806.49.537.73 1.33.73 2.376 0 .992-.24 1.817-.72 2.473-.48.656-1.145.984-1.997.984-.476 0-.88-.114-1.207-.344-.195-.137-.404-.356-.627-.657v.8h-.97V1.363zm4.02 7.225c.284-.454.426-1.05.426-1.794 0-.66-.142-1.207-.425-1.64-.283-.434-.7-.65-1.25-.65-.48 0-.9.177-1.264.532-.36.356-.542.942-.542 1.758 0 .59.075 1.068.223 1.435.277.694.795 1.04 1.553 1.04.57 0 .998-.227 1.28-.68zM63.4 3.726h1.167c-.148.402-.478 1.32-.99 2.754-.383 1.077-.703 1.956-.96 2.635-.61 1.602-1.04 2.578-1.29 2.93-.25.35-.68.527-1.29.527-.147 0-.262-.006-.342-.017-.08-.012-.178-.034-.296-.065v-.96c.183.05.316.08.4.093.08.012.152.018.215.018.195 0 .338-.03.43-.094.092-.065.17-.144.232-.237.02-.033.09-.193.21-.48.122-.29.21-.506.264-.646l-2.32-6.457h1.196l1.68 5.11 1.694-5.11zM73.994 5.282V6.87h3.814c-.117.89-.416 1.54-.87 1.998-.557.555-1.427 1.16-2.944 1.16-2.35 0-4.184-1.882-4.184-4.217 0-2.332 1.835-4.215 4.184-4.215 1.264 0 2.192.497 2.873 1.135l1.122-1.117C77.04.697 75.77 0 73.99 0c-3.218 0-5.923 2.606-5.923 5.805 0 3.2 2.705 5.804 5.923 5.804 1.738 0 3.048-.57 4.073-1.628 1.05-1.045 1.382-2.522 1.382-3.71 0-.366-.028-.708-.087-.992h-5.37zm10.222-1.29c-2.082 0-3.78 1.574-3.78 3.748 0 2.154 1.698 3.747 3.78 3.747S87.998 9.9 87.998 7.74c0-2.174-1.7-3.748-3.782-3.748zm0 6.018c-1.14 0-2.127-.935-2.127-2.27 0-1.348.983-2.27 2.124-2.27 1.142 0 2.128.922 2.128 2.27 0 1.335-.986 2.27-2.128 2.27zm18.54-5.18h-.06c-.37-.438-1.083-.838-1.985-.838-1.88 0-3.52 1.632-3.52 3.748 0 2.102 1.64 3.747 3.52 3.747.905 0 1.618-.4 1.988-.852h.06v.523c0 1.432-.773 2.2-2.012 2.2-1.012 0-1.64-.723-1.9-1.336l-1.44.593c.414.994 1.51 2.213 3.34 2.213 1.94 0 3.58-1.135 3.58-3.902v-6.74h-1.57v.645zm-1.9 5.18c-1.144 0-2.013-.968-2.013-2.27 0-1.323.87-2.27 2.01-2.27 1.13 0 2.012.967 2.012 2.282.006 1.31-.882 2.258-2.01 2.258zM92.65 3.992c-2.084 0-3.783 1.574-3.783 3.748 0 2.154 1.7 3.747 3.782 3.747 2.08 0 3.78-1.587 3.78-3.747 0-2.174-1.7-3.748-3.78-3.748zm0 6.018c-1.143 0-2.13-.935-2.13-2.27 0-1.348.987-2.27 2.13-2.27 1.14 0 2.126.922 2.126 2.27 0 1.335-.986 2.27-2.127 2.27zM105.622.155h1.628v11.332h-1.628m6.655-1.477c-.843 0-1.44-.38-1.83-1.135l5.04-2.07-.168-.426c-.314-.84-1.274-2.39-3.227-2.39-1.94 0-3.554 1.516-3.554 3.75 0 2.1 1.595 3.745 3.736 3.745 1.725 0 2.724-1.05 3.14-1.658l-1.285-.852c-.427.62-1.01 1.032-1.854 1.032zm-.117-4.612c.668 0 1.24.342 1.427.826l-3.405 1.4c0-1.574 1.122-2.226 1.978-2.226z" />
                                                </svg></symbol>
                                            <symbol id="close"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.1 2.3L13.7.9 8 6.6 2.3.9.9 2.3 6.6 8 .9 13.7l1.4 1.4L8 9.4l5.7 5.7 1.4-1.4L9.4 8" />
                                                </svg></symbol>
                                            <symbol id="spinner-button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                                <path
                                                    d="M20 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0v2c-4.418 0-8 3.582-8 8s3.582 8 8 8 8-3.582 8-8h2z" />
                                                </svg></symbol>
                                            <symbol id="chevron-right"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
                                                <path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4" />
                                                </svg></symbol>
                                            <symbol id="down-arrow"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 12">
                                                <path
                                                    d="M10.817 7.624l-4.375 4.2c-.245.235-.64.235-.884 0l-4.375-4.2c-.244-.234-.244-.614 0-.848.245-.235.64-.235.884 0L5.375 9.95V.6c0-.332.28-.6.625-.6s.625.268.625.6v9.35l3.308-3.174c.122-.117.282-.176.442-.176.16 0 .32.06.442.176.244.234.244.614 0 .848" />
                                                </svg></symbol>
                                            <symbol id="arrow"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <path d="M16 8.1l-8.1 8.1-1.1-1.1L13 8.9H0V7.3h13L6.8 1.1 7.9 0 16 8.1z" />
                                                </svg></symbol>
                                            <symbol id="mobile-phone"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path
                                                    d="M5 2.99C5 1.34 6.342 0 8.003 0h7.994C17.655 0 19 1.342 19 2.99v18.02c0 1.65-1.342 2.99-3.003 2.99H8.003C6.345 24 5 22.658 5 21.01V2.99zM7 5c0-.552.456-1 .995-1h8.01c.55 0 .995.445.995 1v14c0 .552-.456 1-.995 1h-8.01C7.445 20 7 19.555 7 19V5zm5 18c.552 0 1-.448 1-1s-.448-1-1-1-1 .448-1 1 .448 1 1 1z"
                                                    fill-rule="evenodd" />
                                                </svg></symbol>
                                            <symbol id="spinner-small"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                                                <path
                                                    d="M32 16c0 8.837-7.163 16-16 16S0 24.837 0 16 7.163 0 16 0v2C8.268 2 2 8.268 2 16s6.268 14 14 14 14-6.268 14-14h2z" />
                                                </svg></symbol>
                                            </svg>
                                        </div>


                                    </div>
                                </aside>
                            </div>
                        </div>

                        <link href="#" rel="dns-prefetch">

                        </body>

                        </html>