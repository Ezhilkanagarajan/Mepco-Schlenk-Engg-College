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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write(" body{\n");
      out.write(" background-color:#ffce2b;\n");
      out.write(" color:#42413d;\n");
      out.write(" }\n");
      out.write("  button {\n");
      out.write("  border:3px solid #b2afac;\n");
      out.write("  border-radius:40px;\n");
      out.write("  padding:20px 20px;\n");
      out.write("  color:#ffce2b;\n");
      out.write("   background-color:#42413d;\n");
      out.write("\n");
      out.write("  }\n");
      out.write("  div{\n");
      out.write("  text-shadow: -4px 4px 6px #b2afac;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body align=\"center\">\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<div><center><p><h1>MEPCO SCHLENK ENGINEERING COLLEGE</h1></p> </center></div>\n");
      out.write("<div><marquee><h3>PERFORMANCE APPRAISAL</h3></marquee><div><br/><br/>\n");
      out.write("        <center><button id=\"myButton\" class=\"float-left submit-button\" >STUDENT LOGIN</button></center>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    document.getElementById(\"myButton\").onclick = function () {\n");
      out.write("        location.href = \"slogin.jsp\";\n");
      out.write("    };\n");
      out.write("</script>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("\n");
      out.write("<center><button id=\"myButton2\" class=\"float-left submit-button\" >STAFF LOGIN</button></center>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    document.getElementById(\"myButton2\").onclick = function () {\n");
      out.write("        location.href = \"stlogin.jsp\";\n");
      out.write("    };\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
