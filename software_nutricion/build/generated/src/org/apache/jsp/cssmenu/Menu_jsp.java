package org.apache.jsp.cssmenu;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html lang=''>\n");
      out.write("<head>\n");
      out.write("   <meta charset='utf-8'>\n");
      out.write("   <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("   <script src=\"http://code.jquery.com/jquery-latest.min.js\" type=\"text/javascript\"></script>\n");
      out.write("   <script src=\"script.js\"></script>\n");
      out.write("   <title>CSS MenuMaker</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id='cssmenu'>\n");
      out.write("<ul>\n");
      out.write("   <li><a href='#'><span>Inicio</span></a></li>\n");
      out.write("   <li class='active has-sub'><a href='#'><span>Dietas</span></a>\n");
      out.write("      <ul>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Desayuno</span></a>\n");
      out.write("        </li>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Comida</span></a>\n");
      out.write("        </li>\n");
      out.write("\t\t  </li>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Colacion</span></a>\n");
      out.write("        </li>\n");
      out.write("\t</li>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Cena</span></a>\n");
      out.write("       </li>\n");
      out.write("      </ul>\n");
      out.write("   </li>\n");
      out.write("  <li class='active has-sub'><a href='#'><span>Expedientes</span></a>\n");
      out.write("      <ul>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Añadir</span></a>\n");
      out.write("        </li>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Eliminar</span></a>\n");
      out.write("        </li>\n");
      out.write("\t\t  </li>\n");
      out.write("         <li class='has-sub'><a href='#'><span>Buscar</span></a>\n");
      out.write("        </li>\n");
      out.write("\t</li>\n");
      out.write("      </ul>\n");
      out.write("   </li>\n");
      out.write(" <li><a href='#'><span>Mensajes</span></a></li>\n");
      out.write("  \n");
      out.write("\t\n");
      out.write("\t<li><a href='#'><span>Agenda</span></a></li> \n");
      out.write("\t\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("<html>");
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
