package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import tools.SendMail;
import model.Cart;
import java.util.Map;
import model.Item;
import model.Payment;
import model.Bill;
import model.Users;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class bill_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Bill</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/product.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/form.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Pacifico\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.4.1/css/all.css\" integrity=\"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat|Rokkitt\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\">\n");
      out.write("        </script>\n");
      out.write("       \n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                font-size: 16px !important;\n");
      out.write("            }\n");
      out.write("            .invoice-title h2, .invoice-title h3 {\n");
      out.write("    display: inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table > tbody > tr > .no-line {\n");
      out.write("    border-top: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table > thead > tr > .no-line {\n");
      out.write("    border-bottom: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table > tbody > tr > .thick-line {\n");
      out.write("    border-top: 2px solid;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Cart cart = (Cart)session.getAttribute("cart");
            Date today = new Date();
            SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");
            String ddMMyyyToday = DATE_FORMAT.format(today);
            Users users = (Users)session.getAttribute("user");
            Bill bill = (Bill)request.getAttribute("bill");
            Payment payment = (Payment)request.getAttribute("payment");
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write(" <div class=\"container\" style=\"margin-top:20px;\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-12\">\n");
      out.write("    \t\t<div class=\"invoice-title\">\n");
      out.write("    \t\t\t<h2>Invoice</h2><h3 class=\"pull-right\"></h3>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t\t<hr>\n");
      out.write("    \t\t<div class=\"row\">\n");
      out.write("    \t\t\t<div class=\"col-xs-6\">\n");
      out.write("    \t\t\t\t<address>\n");
      out.write("    \t\t\t\t<strong>Billed To:</strong><br>\n");
      out.write("    \t\t\t\t\t");
      out.print(bill.getFullName());
      out.write("<br>\n");
      out.write("    \t\t\t\t\t");
      out.print(bill.getAddress());
      out.write("<br>\n");
      out.write("    \t\t\t\t\t");
      out.print(bill.getCity());
      out.write("<br>\n");
      out.write("    \t\t\t\t</address>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t\t\n");
      out.write("    \t\t</div>\n");
      out.write("    \t\t<div class=\"row\">\n");
      out.write("    \t\t\t<div class=\"col-xs-6\">\n");
      out.write("    \t\t\t\t<address>\n");
      out.write("    \t\t\t\t\t<strong>Payment Method:</strong><br>\n");
      out.write("    \t\t\t\t\tCredit Card Number: ");
      out.print(bill.getNumberCard());
      out.write("<br>\n");
      out.write("    \t\t\t\t\t");
      out.print(users.getUserEmail());
      out.write("\n");
      out.write("    \t\t\t\t</address>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t\t<div class=\"col-xs-6 text-right\">\n");
      out.write("    \t\t\t\t<address>\n");
      out.write("    \t\t\t\t\t<strong>Order Date:</strong><br>\n");
      out.write("    \t\t\t\t\t");
      out.print(ddMMyyyToday);
      out.write("<br><br>\n");
      out.write("    \t\t\t\t</address>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t</div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"row\">\n");
      out.write("    \t<div class=\"col-md-12\">\n");
      out.write("    \t\t<div class=\"panel panel-default\">\n");
      out.write("    \t\t\t<div class=\"panel-heading\">\n");
      out.write("    \t\t\t\t<h3 class=\"panel-title\"><strong>Order summary</strong></h3>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t\t<div class=\"panel-body\">\n");
      out.write("    \t\t\t\t<div class=\"table-responsive\">\n");
      out.write("    \t\t\t\t\t<table class=\"table table-condensed\">\n");
      out.write("    \t\t\t\t\t\t<thead>\n");
      out.write("                                                    <tr>\n");
      out.write("        \t\t\t\t\t\t\t<td><strong>Item</strong></td>\n");
      out.write("        \t\t\t\t\t\t\t<td class=\"text-center\"><strong>Price</strong></td>\n");
      out.write("        \t\t\t\t\t\t\t<td class=\"text-center\"><strong>Quantity</strong></td>\n");
      out.write("        \t\t\t\t\t\t\t<td class=\"text-right\"><strong>Totals</strong></td>\n");
      out.write("                                                    </tr>\n");
      out.write("    \t\t\t\t\t\t</thead>\n");
      out.write("    \t\t\t\t\t\t<tbody>\n");
      out.write("    \t\t\t\t\t\t\t");

                                                            for(Map.Entry<Long,Item> list : cart.getCartItems().entrySet()){
                                                        
      out.write("\n");
      out.write("    \t\t\t\t\t\t\t<tr>\n");
      out.write("    \t\t\t\t\t\t\t\t<td>");
      out.print(list.getValue().getProduct().getName());
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"text-center\">$");
      out.print(list.getValue().getProduct().getPrice());
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"text-center\">");
      out.print(list.getValue().getQuantity());
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"text-right\">$");
      out.print(list.getValue().getProduct().getPrice()*list.getValue().getQuantity());
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t</tr>   \n");
      out.write("                                                        ");
}
      out.write("\n");
      out.write("    \t\t\t\t\t\t\t<tr>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"thick-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"thick-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"thick-line text-center\"><strong>Subtotal</strong></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"thick-line text-right\">$");
      out.print(cart.totalCart());
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t</tr>\n");
      out.write("    \t\t\t\t\t\t\t<tr>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line text-center\"><strong>Shipping</strong></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line text-right\">$15</td>\n");
      out.write("    \t\t\t\t\t\t\t</tr>\n");
      out.write("                                                        <tr>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line\"></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line text-center\"><strong>Total</strong></td>\n");
      out.write("    \t\t\t\t\t\t\t\t<td class=\"no-line text-right\">$");
      out.print(cart.totalCart()+15);
      out.write("</td>\n");
      out.write("    \t\t\t\t\t\t\t</tr>\n");
      out.write("    \t\t\t\n");
      out.write("    \t\t\t\t\t\t</tbody>\n");
      out.write("    \t\t\t\t\t</table>\n");
      out.write("                                        \n");
      out.write("    \t\t\t\t</div>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t</div>\n");
      out.write("    </div>\n");
      out.write("    <form action=\"SendEmail\">\n");
      out.write("        <input type=\"hidden\" id=\"total\" name=\"total\" value=");
      out.print(cart.totalCart()+15);
      out.write(">       \n");
      out.write("        <input type=\"submit\" class=\"btn btn-default\" value=\"Submit\" style=\"font-size: 20px;\">\n");
      out.write("    </form>\n");
      out.write("</div>                                                 \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <script src=\"js/process.js\" language=\"JavaScript\"></script>        \n");
      out.write("        <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
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
