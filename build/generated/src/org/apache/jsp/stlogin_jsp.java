package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title align=\"center\">STAFF LOGIN PAGE</title>\n");
      out.write("<style>\n");
      out.write("body{\n");
      out.write(" background-color:#ffce2b;\n");
      out.write(" color:#42413d;\n");
      out.write(" }\n");
      out.write(" div input{\n");
      out.write(" border:3px solid #b2afac;\n");
      out.write("  border-radius:40px;\n");
      out.write("  padding:20px 20px;\n");
      out.write("  color:#ffce2b;\n");
      out.write("   background-color:#42413d;\n");
      out.write(" }\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<p><center><h2>STAFF LOGIN PAGE</h2><center></p>\n");
      out.write("<br/>\n");
      out.write("<center><form action=\"stprofile.jsp\" align=\"center\">\n");
      out.write("\t<h4>USER-ID : </h4><input type=\"text\" name='user' required autofocus pattern=\"\\d{5}\"/>\n");
      out.write("        <h4><br>PASSWORD  :</h4> <input type=\"password\" name=\"pass\" required/><br/><br/><br/>\n");
      out.write("      <div><input type=\"submit\" value=\"LOGIN\"/><div>\n");
      out.write("\t  </center>\n");
      out.write("</form>\n");
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
