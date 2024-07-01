package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Add_005fPlacement_005fClient_005fProcess_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("  <style type=\"text/css\">\n");
      out.write("    body{\n");
      out.write("      \n");
      out.write("      margin: 0px;\n");
      out.write("    }\n");
      out.write("    #brandname{\n");
      out.write("      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);\n");
      out.write("      padding: 10px;\n");
      out.write("      color: white;\n");
      out.write("      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);\n");
      out.write("      position: sticky;\n");
      out.write("      top: 0;\n");
      out.write("      left: 0;\n");
      out.write("    }\n");
      out.write("    #tagline{\n");
      out.write("      margin-top: -30px;\n");
      out.write("    }\n");
      out.write("    form{\n");
      out.write("      margin-left: 15%;\n");
      out.write("      background-color: #91F5F5;\n");
      out.write("      width: 70%;\n");
      out.write("      text-align: center;\n");
      out.write("      margin-top: 10px; \n");
      out.write("    }\n");
      out.write("    .inputclass{\n");
      out.write("      width: 100%;\n");
      out.write("      border-radius: 2px;\n");
      out.write("      padding:5px;\n");
      out.write("      border: none;\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("    .btnclass{\n");
      out.write("      width: 20%;\n");
      out.write("      border-radius: 10px;\n");
      out.write("      padding: 7px;\n");
      out.write("      border: none;\n");
      out.write("      background-color: #000123;\n");
      out.write("      color: white;\n");
      out.write("    }\n");
      out.write("    .btnclass:hover{\n");
      out.write("        background-color: orangered;\n");
      out.write("        cursor: pointer;\n");
      out.write("    }\n");
      out.write("    .logout{\n");
      out.write("        margin-left: 90%;\n");
      out.write("        border: none;\n");
      out.write("        border-radius: 4px;\n");
      out.write("        padding: 5px 22px;\n");
      out.write("    }\n");
      out.write("    p{\n");
      out.write("        margin-top: -10px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("  </style>\n");
      out.write("        \n");
      out.write("  <script>\n");
      out.write("      function hideDate()\n");
      out.write("      {\n");
      out.write("           document.getElementById(\"showDate_id\").style.display=\"none\";\n");
      out.write("      }\n");
      out.write("      function showDate()\n");
      out.write("      {\n");
      out.write("           document.getElementById(\"showDate_id\").style.display=\"\";\n");
      out.write("      }\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("<body onload=\"hideDate()\">  \n");
      out.write("    <div id=\"brandname\">\n");
      out.write("    <h2> Aristan CRM </h2>\n");
      out.write("    <a href=\"logoutprocess.jsp\" class=\"logout\"> \n");
      out.write("        <button class=\"btn btn-primary\" type=\"button\"><i class=\"fa fa-sign-out\"> LogOut</i></button>                                \n");
      out.write("    </a>\n");
      out.write("    <p id=\"tagline\"> Education Empowerment </p>\n");
      out.write("    <p>\n");
      out.write("        ");
 String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        
      out.write("\n");
      out.write("    </p>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <form name=\"f1\" method=\"post\" action=\"Add_Placement_Client.jsp\" autocomplete=\"off\">\n");
      out.write("   <table cellpadding=\"5\" align=\"center\">\n");
      out.write("    <tr>\n");
      out.write("      <th colspan=\"4\">\n");
      out.write("        <h2> Add Placement Client</h2>\n");
      out.write("      </th>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> Company Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"comp_name\" class=\" inputclass\"></td>\n");
      out.write("\n");
      out.write("      <td> Company URL</td>\n");
      out.write("      <td> <input type=\"text\" name=\"comp_url\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> First Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"fname\" class=\" inputclass\"></td>\n");
      out.write("  \n");
      out.write("      <td> Last Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"lname\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> Contact No</td>\n");
      out.write("      <td> <input type=\"text\" name=\"contactno\" class=\" inputclass\"></td>\n");
      out.write("   \n");
      out.write("      <td>Email Id</td>\n");
      out.write("      <td> <input type=\"text\" name=\"email\" class=\" inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> Technology Requirement</td>\n");
      out.write("      <td colspan=\"3\">\n");
      out.write("          <input type=\"checkbox\" name=\"tech_require\"  value=\"Java\">JAVA\n");
      out.write("          <input type=\"checkbox\" name=\"tech_require\"  value=\"PHP\">PHP\n");
      out.write("          <input type=\"checkbox\" name=\"tech_require\"  value=\"Web Developer\">WEB DEVELOPER\n");
      out.write("          <input type=\"checkbox\" name=\"tech_require\"  value=\"Python\">PYTHON\n");
      out.write("          <input type=\"checkbox\" name=\"tech_require\"  value=\"Database\">DATABASE\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> Requirement Status</td>\n");
      out.write("      <td colspan=\"3\">\n");
      out.write("          <input type=\"radio\" name=\"require_time\"  value=\"Urgent\" onclick=\"hideDate()\">Urgent\n");
      out.write("          <input type=\"radio\" name=\"require_time\"  value=\"Close\" onclick=\"hideDate()\">Position Close\n");
      out.write("          <input type=\"radio\" name=\"require_time\"  value=\"Next Week\" onclick=\"showDate()\">Next Week\n");
      out.write("          <input type=\"radio\" name=\"require_time\"  value=\"Next Month\" onclick=\"showDate()\">Next Month\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr id=\"showDate_id\">\n");
      out.write("        <td>Select Date</td>\n");
      out.write("        <td><input type=\"date\" name=\"select_date\" class=\"inputclass\"></td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("        <td>Remark</td>\n");
      out.write("        <td colspan=\"3\">\n");
      out.write("            <textarea rows=\"3\" cols=\"4\" name=\"remark\" class=\"inputclass\"></textarea>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("     <tr>\n");
      out.write("        <td>Address</td>\n");
      out.write("        <td colspan=\"3\">\n");
      out.write("            <textarea rows=\"3\" cols=\"4\" name=\"address\" class=\"inputclass\"></textarea>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("        <td colspan=\"4\"> \n");
      out.write("            <input type=\"submit\" value=\"Submit\" class=\"btnclass\">\n");
      out.write("            <input type=\"reset\" value=\" Reset\" class=\"btnclass\">\n");
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
