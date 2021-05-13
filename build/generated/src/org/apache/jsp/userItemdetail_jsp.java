package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.mysql.jdbc.StringUtils;
import com.mysql.jdbc.Util;

public final class userItemdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/database.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_when_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/7ringshop","root","123");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "user/head.jsp", out, false);
      out.write("\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("      \n");
      out.write("      function shoppingCart(goodsId){\n");
      out.write("          \n");
      out.write("         xmlShop=new XMLHttpRequest();\n");
      out.write("\txmlShop.onreadystatechange=function()\n");
      out.write("\t  {\n");
      out.write("\t  if ((xmlShop.readyState==4)&&(xmlShop.status==200))\n");
      out.write("\t    {\n");
      out.write("\t    if(xmlShop.responseText==\"success\")\n");
      out.write("\t    \t{\n");
      out.write("\t    \t//document.getElementById(\"goodsNum\").innerHTML=(parseInt(document.getElementById(\"goodsNum\").innerHTML)+1).toString(); \t\t\n");
      out.write("\t    \tdocument.getElementById(\"AddToCart--product-template\").innerHTML=\"Already added to shopping cart\";\n");
      out.write("\t    \t}else{\n");
      out.write("\t    \t\tdocument.getElementById(\"AddToCart--product-template\").innerHTML=\"Wrong, you may have added it again!\";\n");
      out.write("\t    \t}\n");
      out.write("\t    }\n");
      out.write("\t  };\n");
      out.write("\txmlShop.open(\"GET\",\"ShoppingCart?goodsId=\"+goodsId+\"&t=\"+Math.random(),true);\n");
      out.write("\txmlShop.send();\n");
      out.write("      }\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"earrings-hoops-huggies-studs-amp-ear-stacking\" class=\"template-product template-collection\">\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "user/header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"shopify-section-collection-template-bc-sf-filter\" class=\"shopify-section\">\n");
      out.write("\n");
      out.write("        <div id=\"CollectionSection\" data-section-id=\"collection-template-bc-sf-filter\" data-section-type=\"collection-template\">\n");
      out.write("\n");
      out.write("            <!-- Product Details Section Begin -->\n");
      out.write("            <section class=\"product-details spad\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        ");

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
                            
                        
      out.write("\n");
      out.write("                        <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                            <div class=\"product__details__pic\">\n");
      out.write("                                <div class=\"product__details__pic__item\">\n");
      out.write("                                    <img class=\"product__details__pic__item--large\" src=\"images/");
      out.print(image2);
      out.write("\" alt=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product__details__pic__slider owl-carousel\">\n");
      out.write("                                    <img data-imgbigurl=\"images/0307edd1732f28a698cb0e6d473411df.jpg\" src=\"images/0edc0734b07860916e4c8608902b4242.jpg\" alt=\"\">\n");
      out.write("                                    <img data-imgbigurl=\"\" src=\"images/317d7b00a4ca7324853c2a9ed29f12c1.jpg\" alt=\"\">\n");
      out.write("                                    <img data-imgbigurl=\"\" src=\"images/15137550_630812990413311_7842698393474238570_o.jpg\" alt=\"\">\n");
      out.write("                                    <img data-imgbigurl=\"\" src=\"images/13f0f747cdedde21c0acc1d78074b345.jpg\" alt=\"\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                            <div class=\"product__details__text\">\n");
      out.write("                                <h3>");
      out.print(name2);
      out.write("</h3>\n");
      out.write("                                <div class=\"product__details__rating\">\n");
      out.write("                                    <i class=\"fas fa-star\"></i>\n");
      out.write("                                    <i class=\"fas fa-star\"></i>\n");
      out.write("                                    <i class=\"fas fa-star\"></i>\n");
      out.write("                                    <i class=\"fas fa-star\"></i>\n");
      out.write("                                    <span>(18 reviews)</span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product__details__price\">Rs ");
      out.print(price2);
      out.write("</div>\n");
      out.write("                                <p>");
      out.print(disc1);
      out.write("</p>\n");
      out.write("                               <div class=\"add-to-cart-btn d-flex product-single__add-to-cart\">\n");
      out.write("                                   ");
      //  c:choose
      org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
      _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
      _jspx_th_c_choose_0.setParent(null);
      int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
      if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                       ");
          if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
            return;
          out.write("\n");
          out.write("                                            ");
          //  c:when
          org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_1 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
          _jspx_th_c_when_1.setPageContext(_jspx_page_context);
          _jspx_th_c_when_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
          _jspx_th_c_when_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${session != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
          int _jspx_eval_c_when_1 = _jspx_th_c_when_1.doStartTag();
          if (_jspx_eval_c_when_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
            do {
              out.write("\n");
              out.write("                               <button onclick=\"shoppingCart(");
              out.print(ids);
              out.write(")\" style=\"margin-bottom: 10px;\" type=\"submit\" name=\"add\" id=\"AddToCart--product-template\" class=\"AddToCart btn--add-to-cart\">\n");
              out.write("                                  <span class=\"btn__text\">\n");
              out.write("                                    \n");
              out.write("                                      Add to cart\n");
              out.write("                                    \n");
              out.write("                                  </span>\n");
              out.write("                                </button>\n");
              out.write("                                   ");
              int evalDoAfterBody = _jspx_th_c_when_1.doAfterBody();
              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                break;
            } while (true);
          }
          if (_jspx_th_c_when_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
            return;
          }
          _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
          out.write("\n");
          out.write("                                   ");
          int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
        return;
      }
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      out.write("\n");
      out.write("                              <a href=\"#\" class=\"w-list iWishAdd\"  data-product=\"6550684893287\" data-pTitle=\"SUNBURST DROP HOOP EARRING\">\n");
      out.write("                              <i class=\"far fa-heart\"></i>\n");
      out.write("                              </a>\n");
      out.write("                              </div>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><b>Availability</b> <span>In Stock</span></li>\n");
      out.write("                                    <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>\n");
      out.write("                                    <li><b>Weight</b> <span>0.5 kg</span></li>\n");
      out.write("                                    <li><b>Share on</b>\n");
      out.write("                                        <div class=\"share\">\n");
      out.write("                                            <a href=\"#\"<i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-instagram\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-pinterest\"></i></a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                                ");

                        }
                                else
							{
							out.println("Record NotFound");
							}
                                
                                
      out.write("\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <div class=\"product__details__tab\">\n");
      out.write("                                <ul class=\"nav nav-tabs\" role=\"tablist\">\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link active\" data-toggle=\"tab\" href=\"#tabs-1\" role=\"tab\" aria-selected=\"true\">Description</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" data-toggle=\"tab\" href=\"#tabs-2\" role=\"tab\" aria-selected=\"false\">Information</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" data-toggle=\"tab\" href=\"#tabs-3\" role=\"tab\" aria-selected=\"false\">Reviews <span>(1)</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                                <div class=\"tab-content\">\n");
      out.write("                                    <div class=\"tab-pane active\" id=\"tabs-1\" role=\"tabpanel\">\n");
      out.write("                                        <div class=\"product__details__tab__desc\">\n");
      out.write("                                            <h6>Products Infomation</h6>\n");
      out.write("                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac\n");
      out.write("                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor\n");
      out.write("                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et\n");
      out.write("                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>\n");
      out.write("                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula\n");
      out.write("                                                sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum\n");
      out.write("                                                sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tab-pane\" id=\"tabs-2\" role=\"tabpanel\">\n");
      out.write("                                        <div class=\"product__details__tab__desc\">\n");
      out.write("                                            <h6>Products Infomation</h6>\n");
      out.write("                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac\n");
      out.write("                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor\n");
      out.write("                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et\n");
      out.write("                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>\n");
      out.write("                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula\n");
      out.write("                                                sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tab-pane\" id=\"tabs-3\" role=\"tabpanel\">\n");
      out.write("                                        <div class=\"product__details__tab__desc\">\n");
      out.write("                                            <h6>Products Infomation</h6>\n");
      out.write("                                            <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac\n");
      out.write("                                                diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor\n");
      out.write("                                                at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et\n");
      out.write("                                                ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                               \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- Product Details Section End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Related Product Section Begin -->\n");
      out.write("            <section class=\"related-product\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <div class=\"section-title related__product__title\">\n");
      out.write("                                <h2>Related Product</h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                          ");

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
						
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-4 col-sm-6\">\n");
      out.write("                            <div class=\"product__item\">\n");
      out.write("                                <div class=\"product__item__pic set-bg\" data-setbg=\"images/");
      out.print(image3);
      out.write("\">\n");
      out.write("                                    <ul class=\"product__item__pic__hover\">\n");
      out.write("                                        <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                        <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                        <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product__item__text\">\n");
      out.write("                                    <h6><a href=\"#\">");
      out.print(name3);
      out.write("</a></h6>\n");
      out.write("                                    <h5>");
      out.print(price3);
      out.write("</h5>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");

								}
								
								while(rs2.next());
							}
							else
							{
							out.println("Record NotFound");
							}
						
      out.write("\n");
      out.write("                     \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- Related Product Section End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <limespot></limespot>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "user/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- JS Theme ================================================== -->\n");
      out.write("    <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/popper.min.js?enable_js_minification=1&amp;v=18011082051163023420\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bootstrap.min.js?enable_js_minification=1&amp;v=3527192983770485065\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/slick.min.js?enable_js_minification=1&amp;v=7177913489436168581\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/swiper.min.js?enable_js_minification=1&amp;v=12550984555132179135\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/headroom.js?enable_js_minification=1&amp;v=9110114062153987833\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/owl.carousel.js?enable_js_minification=1&amp;v=16414960863540295069\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/breaking-news-ticker.min.js?enable_js_minification=1&amp;v=18415497819408566608\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/script.js?enable_js_minification=1&amp;v=18000253952937888586\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.slicknav.js\"></script>\n");
      out.write("    <script src=\"js/mixitup.min.js\"></script>\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/jquery.scrollme.js?enable_js_minification=1&amp;v=18199708983268846645\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/jquery.scrollme.min.js?enable_js_minification=1&amp;v=9192738500849226956\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/scrollme.jquery.json?v=1741636353869597463\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        $(\".js-drawer-open-button-right\").click(function() {\n");
      out.write("\n");
      out.write("            if ($('body').hasClass('js-drawer-open')) {\n");
      out.write("\n");
      out.write("                $('.overlay-sidebar').removeClass(\"show-overlay-sidebar\");\n");
      out.write("            } else {\n");
      out.write("\n");
      out.write("                $('.overlay-sidebar').addClass(\"show-overlay-sidebar\");\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        $(\"#AddToCart--product-template\").click(function() {\n");
      out.write("            setTimeout(function() {\n");
      out.write("                if ($('body').hasClass('js-drawer-open')) {\n");
      out.write("                    $('.overlay-sidebar').addClass(\"show-overlay-sidebar\");\n");
      out.write("                } else {\n");
      out.write("                    $('.overlay-sidebar').removeClass(\"show-overlay-sidebar\");\n");
      out.write("                }\n");
      out.write("            }, 1000);\n");
      out.write("\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        $(\"#ProductSelect-option-0 input[type='radio']\").click(function() {\n");
      out.write("            var radioValue = $(\"input:checked\").val();\n");
      out.write("            $(\".color-box\").empty();\n");
      out.write("            if (radioValue) {\n");
      out.write("\n");
      out.write("                $(\".color-box\").append(\" : \" + radioValue);\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        function onclickSearch() {\n");
      out.write("            jQuery(\"#search_input_box\").slideToggle();\n");
      out.write("            jQuery(\".bc-sf-search-box\").focus();\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <!-- JS Theme ================================================== -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Include Resources -->\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-lib.js?enable_js_minification=1&v=16548757521262582443\"></script>\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-search.js?enable_js_minification=1&v=9408320754591767130\"></script>\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter.js?enable_js_minification=1&v=6809953658323563279\"></script>\n");
      out.write("    <!-- Initialize App -->\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-sf-filter-init.js?enable_js_minification=1&v=1928539781059772811\"></script>\n");
      out.write("    <!--end-bc-sf-filter-js-->\n");
      out.write("\n");
      out.write("    <!--start-bc-al-init-->\n");
      out.write("\n");
      out.write("    <!--end-bc-al-init-->\n");
      out.write("\n");
      out.write("    <!-- start-bc-recently-viewed-product-init -->\n");
      out.write("    <!--start-bc-recently-viewed-init-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        var bcRvParams = {\n");
      out.write("            settings: {\n");
      out.write("                isCollectionPage: true,\n");
      out.write("                showOnCollectionPage: true\n");
      out.write("            }\n");
      out.write("        };\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-recently-viewed-product-lib.min.js?enable_js_minification=1&v=4584116947721290547\"></script>\n");
      out.write("    <script defer src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/bc-recently-viewed-product-init.js?enable_js_minification=1&v=2256318909928894122\"></script>\n");
      out.write("    <!--end-bc-recently-viewed-init-->\n");
      out.write("    <!-- end-bc-recently-viewed-product-init -->\n");
      out.write("\n");
      out.write("    <!--start-bc-most-popular-product-init-->\n");
      out.write("    <!-- start-bc-popular-product-init -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- end-bc-popular-product-init -->\n");
      out.write("\n");
      out.write("    <!--end-bc-most-popular-product-init-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        var iwish_shop = \"liars-lovers.myshopify.com\";\n");
      out.write("        var iwish_pro_template = false;\n");
      out.write("        var iwish_cid = \"\";\n");
      out.write("        //Add to Wishlist - Product Page Text\n");
      out.write("        var iwish_added_txt = '<img src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart.svg?v=7412119820264960115\" class=\"fal\"/>';\n");
      out.write("        var iwish_add_txt = '<img src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart-hollow.svg?v=11913852992310223610\" class=\"fal\"/>';\n");
      out.write("        //Add to Wishlist - Collection Page Text\n");
      out.write("        var iwish_added_txt_col = '<img src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart.svg?v=7412119820264960115\" class=\"fal\"/>';\n");
      out.write("        var iwish_add_txt_col = '<img src=\"//cdn.shopify.com/s/files/1/0248/3290/1223/t/12/assets/icon-heart-hollow.svg?v=11913852992310223610\" class=\"fal\"/>';\n");
      out.write("        //Quick View - Classes\n");
      out.write("        //var iwish_qvButton = '.quick_view';\n");
      out.write("        //var iwish_qvWrapper = '.reveal-modal';\n");
      out.write("    </script>\n");
      out.write("    <script src=\"https://cdn.myshopapps.com/iwish/iwishlist.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        jQuery(document).ready(function() {\n");
      out.write("            jQuery(\"a[href='/apps/iwish']\").click(function(e) {\n");
      out.write("                if (typeof(Storage) !== \"undefined\") {\n");
      out.write("                    e.preventDefault();\n");
      out.write("                    iWishPost('/apps/iwish', {\n");
      out.write("                        iwishlist: JSON.stringify(iWishlistmain),\n");
      out.write("                        cId: iwish_cid\n");
      out.write("                    });\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("            jQuery(\".iWishAdd\").click(function() {\n");
      out.write("                var iWishvId = jQuery(this).parents(iwishWrapperClass).find(iWishVarSelector).val();\n");
      out.write("                iwish_add(jQuery(this), iWishvId);\n");
      out.write("                return false;\n");
      out.write("            });\n");
      out.write("            /*jQuery(\".iWishAddColl\").click(function() {\n");
      out.write("            \tvar iWishvId = jQuery(this).attr(\"data-variant\");\n");
      out.write("                   \tiwish_addCollection(jQuery(this),iWishvId);\n");
      out.write("                  \treturn false;\n");
      out.write("            });*/\n");
      out.write("            iwishCheckColl();\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        function onclickCollection(elem) {\n");
      out.write("            var iWishvId = jQuery(elem).attr(\"data-variant\");\n");
      out.write("            iwish_addCollection(jQuery(elem), iWishvId);\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function iwishCheckColl() {\n");
      out.write("            if (jQuery(\".iwishcheck\").length > 0) {\n");
      out.write("                jQuery(\".iwishcheck\").each(function() {\n");
      out.write("                    var iWishvId = jQuery(this).attr(\"data-variant\");\n");
      out.write("                    var iWishpId = jQuery(this).attr(\"data-product\");\n");
      out.write("                    if (isInWishlist(iWishpId, iWishvId)) {\n");
      out.write("                        jQuery(this).addClass(\"iwishAdded\").html(iwish_added_txt_col);\n");
      out.write("                    }\n");
      out.write("                    jQuery(this).removeClass(\"iwishcheck\");\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- **BEGIN** Hextom USB Integration // Main Include - DO NOT MODIFY -->\n");
      out.write("    <!-- **BEGIN** Hextom USB Integration // Main - DO NOT MODIFY -->\n");
      out.write("    <script type=\"application/javascript\">\n");
      out.write("        window.hextom_usb = {\n");
      out.write("            p1: [\n");
      out.write("\n");
      out.write("            ],\n");
      out.write("            p2: [\n");
      out.write("\n");
      out.write("            ],\n");
      out.write("            p3: {\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        };\n");
      out.write("    </script>\n");
      out.write("    <!-- **END** Hextom USB Integration // Main - DO NOT MODIFY -->\n");
      out.write("    <!-- **END** Hextom USB Integration // Main Include - DO NOT MODIFY -->\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        mlvedaFlagCalled = true;\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <noscript>\n");
      out.write("    <style>\n");
      out.write("        .limoniapps-discountninja-block { animation: unset !important; }\n");
      out.write("            .limoniapps-discountninja-block:after { animation: unset !important; }\n");
      out.write("            .limoniapps-discountninja-block .limoniapps-discountninja-button-spinner:before { animation: unset !important; }\n");
      out.write("    </style>\n");
      out.write("\t<div class=\"limoniapps-discountninja-warning-nojs\">This website uses JavaScript to apply discounts. To be eligible for discounts, please enable JavaScript for your browser.</div>\n");
      out.write("</noscript>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${session == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                           <a href=\"userlogin.jsp\">\n");
        out.write("                               <button  style=\"margin-bottom: 10px;\" type=\"submit\" name=\"add\" id=\"AddToCart--product-template\" class=\"AddToCart btn--add-to-cart\">\n");
        out.write("                                  <span class=\"btn__text\">\n");
        out.write("                                    \n");
        out.write("                                      Add to cart\n");
        out.write("                                    \n");
        out.write("                                  </span>\n");
        out.write("                                </button>\n");
        out.write("                                           </a>\n");
        out.write("                                   ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }
}
