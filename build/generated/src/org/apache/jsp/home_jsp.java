package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Clientes e Fornecedores</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom fonts for this template -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Do+Hyeon\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Do+Hyeon\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"css/business-casual.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <h1 class=\"site-heading text-center text-white d-none d-lg-block\">\n");
      out.write("      <span class=\"site-heading-upper text-primary mb-3\">Clientes e Fornecedores</span>\n");
      out.write("      <span class=\"site-heading-lower\"></span>\n");
      out.write("    </h1>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark py-lg-4\" id=\"mainNav\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none\" href=\"#\">Start Bootstrap</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav mx-auto\">\n");
      out.write("            <li class=\"nav-item active px-lg-4\">\n");
      out.write("              <a class=\"nav-link text-uppercase text-expanded\" href=\"home.jsp\">Home\n");
      out.write("                <span class=\"sr-only\"></span>\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item px-lg-4\">\n");
      out.write("              <a class=\"nav-link text-uppercase text-expanded\" href=\"clientes.jsp\">Clientes</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item px-lg-4\">\n");
      out.write("              <a class=\"nav-link text-uppercase text-expanded\" href=\"fornecedores.jsp\">Fornecedores</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <section class=\"page-section cta\">\n");
      out.write("        <center>\n");
      out.write("      \n");
      out.write("        </center>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <footer class=\"footer text-faded text-center py-5\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <p class=\"m-0 small\">FATECPG - 4º Ciclo ADS - Noturno</p>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
