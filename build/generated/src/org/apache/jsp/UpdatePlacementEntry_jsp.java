package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class UpdatePlacementEntry_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <style type=\"text/css\">\n");
      out.write("        body{\n");
      out.write("            margin: 0px;\n");
      out.write("            font-family: bold;\n");
      out.write("          }\n");
      out.write("          #brandname{\n");
      out.write("            background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);\n");
      out.write("            padding:20px;\n");
      out.write("            color: white;\n");
      out.write("            width: 100%;\n");
      out.write("            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);\n");
      out.write("            position: Sticky;\n");
      out.write("            top: 0;\n");
      out.write("            left: 0;\n");
      out.write("          }\n");
      out.write("          #tagline{\n");
      out.write("            margin-top: -10px;\n");
      out.write("          }\n");
      out.write("          .main{\n");
      out.write("            background-color: rgba(0,0,0,0.3);\n");
      out.write("            margin-top: -20px;\n");
      out.write("            text-align: center;\n");
      out.write("            color: white;\n");
      out.write("            width: 100%;\n");
      out.write("            padding-bottom: 20px;\n");
      out.write("          }\n");
      out.write("          h2{\n");
      out.write("            padding-top: -20px;\n");
      out.write("            text-shadow: 1px 2px whitesmoke;\n");
      out.write("            color: black;\n");
      out.write("          }\n");
      out.write("          h1{\n");
      out.write("            padding-top: 10px;\n");
      out.write("            margin-top: -10px;\n");
      out.write("            text-shadow: 2px 3px black;\n");
      out.write("          }    \n");
      out.write("        form{\n");
      out.write("          margin-left: 15%;  \n");
      out.write("          background-color: #91F5F5;\n");
      out.write("          width: 70%;\n");
      out.write("          text-align: center;\n");
      out.write("          margin-top: 40px; \n");
      out.write("        }\n");
      out.write("        .inputclass{\n");
      out.write("          width: 100%;\n");
      out.write("          border-radius: 2px;\n");
      out.write("          padding:5px;\n");
      out.write("          border: none;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .btnclass{\n");
      out.write("          width: 40%;\n");
      out.write("          border-radius: 8px;\n");
      out.write("          padding:7px;\n");
      out.write("          border: none;\n");
      out.write("          background-color: #000123;\n");
      out.write("          color: white;\n");
      out.write("          padding: 5px;\n");
      out.write("        }\n");
      out.write("        .btnclass:hover{\n");
      out.write("            background-color: orangered;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("    \n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body> \n");
      out.write("    \n");
      out.write("    <div id=\"brandname\">\n");
      out.write("    <h1> Aristan CRM </h1>\n");
      out.write("    <p id=\"tagline\"> Education Empowerment </p>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");

    int id=Integer.parseInt(request.getParameter("id"));
     
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="select * from placement where CLIENT_ID="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        
      out.write("      \n");
      out.write("\n");
      out.write("\n");
      out.write("        <form name=\"f1\" method=\"post\" action=\"Update_Process_PlacementEntry.jsp\" autocomplete=\"off\">\n");
      out.write("   <table cellpadding=\"5\" align=\"center\">\n");
      out.write("       \n");
      out.write("        <input type=\"hidden\" name=\"CLIENT_ID\" value=\"");
      out.print(rs.getString("CLIENT_ID"));
      out.write("\" class=\"inputclass\"><br>\n");
      out.write("        \n");
      out.write("    <tr>\n");
      out.write("      <th colspan=\"4\">\n");
      out.write("        <h2> Update Client Entry</h2>\n");
      out.write("      </th>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("     <tr>\n");
      out.write("      <td>Company Name </td>\n");
      out.write("      <td> <input type=\"text\" name=\"comp_name\" class=\"inputclass\" value=\"");
      out.print(rs.getString("COMPANY_NAME"));
      out.write("\"></td>\n");
      out.write("    \n");
      out.write("      <td> Company URL </td>\n");
      out.write("      <td> <input type=\"text\" name=\"comp_URL\" class=\" inputclass\" value=\"");
      out.print(rs.getString("COMPANY_URL"));
      out.write("\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> First Name</td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"text\" name=\"fname\" class=\" inputclass\" value=\"");
      out.print(rs.getString("FIRST_NAME"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("    \n");
      out.write("      <td>Last Name</td>\n");
      out.write("      <td> <input type=\"text\" name=\"lname\" class=\"inputclass\" value=\"");
      out.print(rs.getString("LAST_NAME"));
      out.write("\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td> Contact No </td>\n");
      out.write("      <td> <input type=\"text\" name=\"contactno\" class=\" inputclass\" value=\"");
      out.print(rs.getString("CONTACT_NO"));
      out.write("\"></td>\n");
      out.write("    \n");
      out.write("      <td> Email Id </td>\n");
      out.write("      <td> <input type=\"text\" name=\"email\" class=\" inputclass\" value=\"");
      out.print(rs.getString("EMAIL_ID"));
      out.write("\"></td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("      <td> Tech Requirement </td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"text\" name=\"tech_require\" class=\" inputclass\" value=\"");
      out.print(rs.getString("TECH_REQUIREMENT"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("    \n");
      out.write("      <td> Require Status </td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"text\" name=\"require_time\" class=\" inputclass\" value=\"");
      out.print(rs.getString("REQUIRE_STATUS"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("   \n");
      out.write("     <tr>\n");
      out.write("      <td> Show Date </td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"date\" name=\"select_date\" class=\" inputclass\" value=\"");
      out.print(rs.getString("SHOW_DATE"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("   \n");
      out.write("      <td> Remark  </td>\n");
      out.write("      <td> \n");
      out.write("          <input type=\"text\" name=\"remark\" class=\" inputclass\" value=\"");
      out.print(rs.getString("REMARK"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("   \n");
      out.write("     <tr>\n");
      out.write("      <td> Address  </td>\n");
      out.write("      <td colspan=\"3\"> \n");
      out.write("          <input type=\"text\" name=\"address\" class=\" inputclass\" value=\"");
      out.print(rs.getString("ADDRESS"));
      out.write("\">\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("   \n");
      out.write("    <tr>\n");
      out.write("      <td colspan=\"4\" align=\"center\"> \n");
      out.write("          <input type=\"submit\" value=\"Update\" class=\"btnclass\">\n");
      out.write("          <input type=\"reset\" value=\" Reset\" class=\"btnclass\">\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    </table>\n");
      out.write("  </form>  \n");
      out.write("    ");

        }//end of while loop
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
      out.write("\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        </body>\n");
      out.write("        </html>");
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
