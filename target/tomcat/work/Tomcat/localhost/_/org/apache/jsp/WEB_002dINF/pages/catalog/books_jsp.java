/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-05-08 23:38:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.catalog;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class books_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <title>Онлайн библиотека книг</title>\r\n");
      out.write("    <link rel='stylesheet' href='resources/css/index_page/indexStyle.css'  >\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"resources/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"resources/css/bootstrap-theme.min.css\">\r\n");
      out.write("    <script  src=\"resources/js/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("    <script src=\"resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <header>\r\n");
      out.write("        <div id=\"logo\">\r\n");
      out.write("            <div name=\"logo\" class=\"col-sm-9 col-md-9 left\" id=\"lg\"><a href=\"\\\"><div class=\"lg_home\"></div></a></div>\r\n");
      out.write("            <div class=\"col-sm-3 col-md-3 right\" id=\"search\">\r\n");
      out.write("                <form class=\"navbar-form\" role=\"search\" >\r\n");
      out.write("                    <div class=\"input-group\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Поиск\" name=\"q\">\r\n");
      out.write("                        <div class=\"input-group-btn\">\r\n");
      out.write("                            <button class=\"btn btn-default\" type=\"submit\" id=\"search_btn\"><i class=\"glyphicon glyphicon-search\"></i></button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"clearfix\" style=\"margin-top: 25px;\"></div>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"clearfix\" style=\"margin-top: 25px;\"></div>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"slid\">\r\n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("            <!-- Indicators -->\r\n");
      out.write("            <ol class=\"carousel-indicators\">\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("            </ol>\r\n");
      out.write("\r\n");
      out.write("            <!-- Wrapper for slides -->\r\n");
      out.write("            <div class=\"carousel-inner\">\r\n");
      out.write("                <div class=\"item active\">\r\n");
      out.write("                    <img src=\"../../resources/images/slider/lib1.jpg\" alt=\"About book\">\r\n");
      out.write("                    <div class=\"carousel-caption\">\r\n");
      out.write("                        <h3>Los Angeles</h3>\r\n");
      out.write("                        <p>LA is always so much fun!</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"../../resources/images/slider/bk1.jpg\" alt=\"About book\">\r\n");
      out.write("                    <div class=\"carousel-caption\">\r\n");
      out.write("                        <h3>Chicago</h3>\r\n");
      out.write("                        <p>Thank you, Chicago!</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"../../resources/images/slider/lib2.jpg\" alt=\"About book\">\r\n");
      out.write("                    <div class=\"carousel-caption\">\r\n");
      out.write("                        <h3>New York</h3>\r\n");
      out.write("                        <p>We love the Big Apple!</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Left and right controls -->\r\n");
      out.write("            <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n");
      out.write("                <span class=\"sr-only\">Previous</span>\r\n");
      out.write("            </a>\r\n");
      out.write("            <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n");
      out.write("                <span class=\"sr-only\">Next</span>\r\n");
      out.write("            </a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"clearfix\" style=\"margin-top: 25px;\"></div>\r\n");
      out.write("\r\n");
      out.write("    <footer>\r\n");
      out.write("        <h5>Copyright © 2017 - Онлайн библиотека by Владислав Тоболич</h5>\r\n");
      out.write("    </footer>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
