package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EmployeePaymentEntry_005fprocess_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <title> www.aristan.com</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <style type=\"text/css\">\n");
      out.write("          body{     \n");
      out.write("              margin: 0px;\n");
      out.write("            }\n");
      out.write("            #brandname{\n");
      out.write("            background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);\n");
      out.write("            padding: 15px;\n");
      out.write("            color: white;\n");
      out.write("            width: 100%;\n");
      out.write("            position: Sticky;\n");
      out.write("            top: 0;\n");
      out.write("            left: 0;\n");
      out.write("            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);\n");
      out.write("          }\n");
      out.write("          #tagline{\n");
      out.write("            margin-top: -30px;\n");
      out.write("          }\n");
      out.write("          .main{\n");
      out.write("            background-color: rgba(0,0,0,0.3);\n");
      out.write("            margin-top: -20px;\n");
      out.write("            text-align: center;\n");
      out.write("            color: white;\n");
      out.write("            width: 100%;\n");
      out.write("            padding-bottom: 20px;     \n");
      out.write("          }\n");
      out.write("          h2{\n");
      out.write("            padding-top: -25px;\n");
      out.write("            text-shadow: 1px 1px black;\n");
      out.write("            color: red;\n");
      out.write("            font-size: 33px;\n");
      out.write("          }\n");
      out.write("          h1{\n");
      out.write("            padding-top: 10px;\n");
      out.write("            margin-top: -10px;\n");
      out.write("            text-shadow: 1px 2px black;\n");
      out.write("          }\n");
      out.write("          \n");
      out.write("            form{\n");
      out.write("              margin-left: 25%;\n");
      out.write("              background-color: #91F5F5;\n");
      out.write("              width: 50%;\n");
      out.write("              text-align: center;\n");
      out.write("              margin-top: 40px; \n");
      out.write("            }\n");
      out.write("            .inputclass{\n");
      out.write("              width: 100%;\n");
      out.write("              border-radius: 2px;\n");
      out.write("              padding:5px;\n");
      out.write("              border: none;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .btnclass{\n");
      out.write("              width: 40%;\n");
      out.write("              border-radius: 4px;\n");
      out.write("              padding:5px;\n");
      out.write("              border: none;\n");
      out.write("              background-color: #000123;\n");
      out.write("              color: white;\n");
      out.write("              padding: 5px;\n");
      out.write("            }\n");
      out.write("            .btnclass:hover{\n");
      out.write("                background-color: orangered;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            #gotobutton{\n");
      out.write("                margin-top: 30px;\n");
      out.write("            }\n");
      out.write("            .logout{\n");
      out.write("                margin-left: 90%;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                padding: 5px 22px;\n");
      out.write("            }\n");
      out.write("            p{\n");
      out.write("                margin-top: -10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("<body>  \n");
      out.write("    <div id=\"brandname\">\n");
      out.write("    <h1> Aristan CRM - Employee Payment Entry </h1>\n");
      out.write("     <a href=\"logoutprocess.jsp\" class=\"logout\"> \n");
      out.write("         <button class=\"btn btn-primary\" type=\"button\"><i class=\"fa fa-sign-out\"> LogOut</i></button>                                \n");
      out.write("        </a>\n");
      out.write("        <p id=\"tagline\"> Education Empowerment </p>\n");
      out.write("        <p>\n");
      out.write("        ");
 String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        
      out.write("\n");
      out.write("        </p>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  <form name=\"f1\" method=\"post\" action=\"EmployeePaymentEntry.jsp\" autocomplete=\"off\">\n");
      out.write("   <table cellpadding=\"5\" align=\"center\">\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> Paymant Date</td>\n");
      out.write("      <td> <input type=\"date\" name=\"pdate\" class=\"inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> First Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"fname\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> Last Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"lname\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> Job</td>\n");
      out.write("      <td> <input type=\"text\" name=\"job\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> Amount</td>\n");
      out.write("      <td> <input type=\"text\" name=\"amt\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> PayBy</td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"radio\" name=\"pay\"  value=\"UPI\">UPI\n");
      out.write("          <input type=\"radio\" name=\"pay\"  value=\"NBANK\">NetBanking\n");
      out.write("          <input type=\"radio\" name=\"pay\"  value=\"CASH\">Cash\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td colspan=\"2\" align=\"center\"> \n");
      out.write("          <input type=\"submit\" value=\"Submit Entry\" class=\"btnclass\">\n");
      out.write("          <input type=\"reset\" value=\"Reset\" class=\"btnclass\">\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("   </table>\n");
      out.write("  </form>\n");
      out.write("            \n");
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
