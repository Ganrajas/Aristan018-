package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Employee_005fdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  <style type=\"text/css\">\n");
      out.write("    body{\n");
      out.write("      background-image: url(\"back2.jpg\");\n");
      out.write("      background-repeat: no-repeat;\n");
      out.write("      background-size: cover;\n");
      out.write("      margin: 0px;\n");
      out.write("    }\n");
      out.write("    #brandname{\n");
      out.write("      background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);\n");
      out.write("      padding:20px;\n");
      out.write("      color: white;\n");
      out.write("      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);\n");
      out.write("    }\n");
      out.write("    #tagline{\n");
      out.write("      margin-top: -40px;\n");
      out.write("    }\n");
      out.write("    .main{\n");
      out.write("      background-color: rgba(0,0,0,0.3);\n");
      out.write("      margin-top: -20px;\n");
      out.write("      text-align: center;\n");
      out.write("      color: white;\n");
      out.write("      width: 100%;\n");
      out.write("      padding-bottom: 20px;     \n");
      out.write("    }\n");
      out.write("    h2{\n");
      out.write("      padding-top: 20px;\n");
      out.write("      text-shadow: 1px 2px black;\n");
      out.write("    }\n");
      out.write("    h1{\n");
      out.write("      padding-top: 10px;\n");
      out.write("      margin-top: -10px;\n");
      out.write("      text-shadow: 2px 3px black;\n");
      out.write("    }\n");
      out.write("    .abc{\n");
      out.write("      width: 20%;\n");
      out.write("      border-radius: 3px;\n");
      out.write("      font-size: 18px;\n");
      out.write("      background-color:deeppink;\n");
      out.write("      color: white;\n");
      out.write("      display: inline-block;\n");
      out.write("      padding: 15px 3px;\n");
      out.write("    }\n");
      out.write("    .abc:hover{\n");
      out.write("      background-color: #000123;\n");
      out.write("      cursor: pointer;\n");
      out.write("    }\n");
      out.write("    a{\n");
      out.write("      text-decoration: none;\n");
      out.write("      color: white;\n");
      out.write("    }\n");
      out.write("    a:hover{\n");
      out.write("      color:white;\n");
      out.write("      text-decoration: none;\n");
      out.write("    }\n");
      out.write("    .row{\n");
      out.write("        margin-top: 30px;\n");
      out.write("        position: relative;\n");
      out.write("        left: 20px;\n");
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
      out.write("    \n");
      out.write("    \n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div id=\"brandname\">\n");
      out.write("        <h1> Aristan CRM </h1>\n");
      out.write("        <a href=\"logoutprocess.jsp\" class=\"logout\"> \n");
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
      out.write("    <div class=\"main\">\n");
      out.write("      <h2> Welcome to Employee Dashboard </h2>\n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"abc\"><a href=\"Enquiry_management.jsp\"> Enquiry Management</a></div>\n");
      out.write("          <div class=\"abc\"><a href=\"Candidate_Registration_process.jsp\">New Candidate Register </a> </div>\n");
      out.write("          <div class=\"abc\"><a href=\"Registered_Candidate.jsp\"> Registered Candidate</a></div>\n");
      out.write("          <div class=\"abc\"><a href=\"DisplayBirthday.jsp\">Today's Birth-Day</a></div>\n");
      out.write("           \n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"abc\"><a href=\"Ask_To_Approval_process.jsp\"> Ask to Approval</a></div>\n");
      out.write("          <div class=\"abc\"><a href=\"DisplayApproval.jsp\"> Display Approval</a></div>\n");
      out.write("           <div class=\"abc\"><a href=\"Certificate_Request_process.jsp\"> Certificate Request</a></div>\n");
      out.write("          <div class=\"abc\"><a href=\"Display_Certificate_Request.jsp\"> Display Certificate Request</a></div>\n");
      out.write("         \n");
      out.write("       </div>\n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("           <div class=\"abc\"><a href=\"Placement_management.jsp\"> Placement Management</a></div>\n");
      out.write("            <div class=\"abc\"><a href=\"Account_management.jsp\">Account  Management</a></div>\n");
      out.write("            <div class=\"abc\"><a href=\"Exam_Management.html\">Exam  Management</a></div>\n");
      out.write("            <div class=\"abc\"><a href=\"Fees_management.html\"> Fees Management</a></div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("    </html>");
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
