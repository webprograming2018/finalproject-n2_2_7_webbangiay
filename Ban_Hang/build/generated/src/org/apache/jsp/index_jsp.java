package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Item;
import model.Cart;
import model.Product;
import dao.ProductDAO;
import java.util.ArrayList;
import model.ProductUser;
import dao.ProductUserDAO;
import model.Users;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Trang chủ</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/product.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/form.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Pacifico\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.4.1/css/all.css\" integrity=\"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat|Rokkitt\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\">\n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<!--        header-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("<!--        slider-->\n");
      out.write("        <div class=\"slider\">\n");
      out.write("            <img class=\"mySlides\" src=\"images/slider-1.jpg\" style=\"width:100%;height: 700px;\">\n");
      out.write("            <img class=\"mySlides\" src=\"images/slider-2.jpg\" style=\"width:100%;height: 700px;\">\n");
      out.write("            <img class=\"mySlides\" src=\"images/slider-3.jpg\" style=\"width:100%;height: 700px;\">\n");
      out.write("            <img class=\"mySlides\" src=\"images/slider-4.jpg\" style=\"width:100%;height: 700px;\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"quote\" style=\"font-family: 'Montserrat', sans-serif;text-align: center;\">\n");
      out.write("            <p class=\"intro\">It started with a simple idea: Create quality, well-designed products that I wanted myself.</p>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--        bestseller-->\n");
      out.write("        <div class=\"container\" style=\"margin-top: 30px;\">\n");
      out.write("\t\t\t<h3 class=\"h3\" style=\"text-align: center;\" >Top Sellers</h3>\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/AIRJORDAN11RETROCONCORD2018RELEASE-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">Air Jordan 11 Retro \"Concord 2018 Release\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$320+\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=19\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=19\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/YEEZYBOOST350V2SESAME-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">YEEZY BOOST 350 V2 \"SESAME\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$300\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=20\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=20\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/YEEZY-BOOST-350-V2-ZEBRA-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">YEEZY BOOST 350 V2 \"ZEBRA\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$465\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=21\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=21\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/ADIDAS-YEEZY-BOOST-350-V2-FROZEN-YELLOW-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">ADIDAS YEEZY BOOST 350 V2 \"FROZEN YELLOW\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$320\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=22\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=22\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\t                \n");
      out.write("    <!--        New Arrivals-->\n");
      out.write("    <div class=\"new-arrivals\" style=\"margin-top: 20px; margin-bottom: 120px;\">\n");
      out.write("        <h1>\n");
      out.write("            <u style=\"margin-bottom: 10px;\">New Arrivals</u>\n");
      out.write("            <p>For over a decade, Flight Club has changed the landscape of sneaker retail. Carrying every brand name on the market, Flight Club has evolved from a one-stop sneaker destination to a cultural hub for sneaker enthusiasts and novices alike. With two brick-and-mortar locations housed in New York and Los Angeles, Flight Club remains the premier source for everything sneakers. From Air Jordan to Nike to Adidas and more, we have it all.\n");
      out.write("\n");
      out.write("DEC 13\n");
      out.write("</p>\n");
      out.write("        </h1>\n");
      out.write("         <div class=\"container\" style=\"margin-top: 30px;\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/AIR-JORDAN-12-RETRO-WNTR-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">AIR JORDAN 12 RETRO WNTR</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$300\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=23\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=23\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/AIR-JORDAN-3-MOCHA-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">AIR JORDAN 3 \"MOCHA\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$250\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=24\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=24\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/AIR-JORDAN-12-RETRO-WNTR-TRIPLE-BLACK-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">AIR JORDAN 12 RETRO WNTR \"TRIPLE BLACK\"</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$275\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=25\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=25\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-3 col-3 col-lg-3\">\n");
      out.write("\t\t\t\t\t<div class=\"product-grid6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"product-image6\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t\t<img class=\"pic-1\" src=\"images/AIR-JORDAN-1-MID-1.jpg\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"product-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\"><a href=\"#\">AIR JORDAN 1 MID</a></h3>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"price\">$245\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"product_detail.jsp?maProduct=26\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"CartServlet?command=plus&productID=26\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <form action=\"Thongke\" method=\"POST\">\n");
      out.write("        <input type=\"submit\" value=\"Submit\">\n");
      out.write("    </form>\n");
      out.write("<!--footer-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <script src=\"js/process.js\" language=\"JavaScript\"></script>\n");
      out.write("    </body>\n");
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
}
