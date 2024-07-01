package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class DisplayPettyCashEntry_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("          body{\n");
      out.write("            background-image: url(\"back2.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: cover;\n");
      out.write("            margin: 0px;\n");
      out.write("            font-family: bold;\n");
      out.write("          }\n");
      out.write("          #brandname{\n");
      out.write("            background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);\n");
      out.write("            padding: 10px;\n");
      out.write("            color: white;\n");
      out.write("            width: 100%;\n");
      out.write("            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);\n");
      out.write("            position: sticky;\n");
      out.write("            top: 0;\n");
      out.write("            left: 0;\n");
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
      out.write("            padding-bottom: 20px;\n");
      out.write("          }\n");
      out.write("          h2{\n");
      out.write("            padding-top: 20px;\n");
      out.write("            text-shadow: 1px 2px steelblue;\n");
      out.write("            color: black;\n");
      out.write("          }\n");
      out.write("          h1{\n");
      out.write("            padding-top: 10px;\n");
      out.write("            margin-top: -10px;\n");
      out.write("            text-shadow: 2px 2px black;\n");
      out.write("          }\n");
      out.write("            table{\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                border: 2px solid lightgray;\n");
      out.write("                width: 100%;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("            th,td{\n");
      out.write("                padding: 10px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            tr:hover ,td:hover{\n");
      out.write("                background-color: deeppink;\n");
      out.write("                color: white;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            th{\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            td:hover{\n");
      out.write("                background-color: black;\n");
      out.write("                color: white;\n");
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
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div id=\"brandname\">\n");
      out.write("         <h1> Aristan CRM- Petty Cash Enquiry Details </h1>\n");
      out.write("         <a href=\"logoutprocess.jsp\" class=\"logout\"> \n");
      out.write("         <button class=\"btn btn-primary\" type=\"button\"><i class=\"fa fa-sign-out\"> LogOut</i></button>                                \n");
      out.write("        </a>\n");
      out.write("        <p id=\"tagline\"> Education Empowerment </p>\n");
      out.write("        <p>\n");
      out.write("        ");
 String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        
      out.write("\n");
      out.write("        </p>\n");
      out.write("        </div>\n");
      out.write("     <a href=\"Employee_dashboard.jsp\">\n");
      out.write("            <button id=\"gotobutton\" class=\"btn btn-primary\"> <span class=\"glyphicon glyphicon-home\"> </span> Go to Employee Dashboard</button>\n");
      out.write("       </a> \n");
      out.write("   \n");
      out.write("    <table border=\"1\" align=\"center\">\n");
      out.write("        <tr bgcolor=\"deeppink\"> \n");
      out.write("            <th>Petty Cash ID</th>\n");
      out.write("            <th>Purchase Date</th>\n");
      out.write("            <th>Purchase Detail</th>\n");
      out.write("            <th>Purchase Quantity</th>\n");
      out.write("            <th>Purchase Rate</th>\n");
      out.write("            <th>Bill Amount</th>\n");
      out.write("            <th>Purchase By</th>\n");
      out.write("            <th>Approval By</th>\n");
      out.write("            <th colspan=\"2\">ACTION</th>\n");
      out.write("            \n");
      out.write("        </tr>\n");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from  pettycash order by PCASHID desc";
        ResultSet rs= st.executeQuery(sql);
        int id=1;
        while(rs.next())
        {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td> ");
      out.print(id);
      out.write(" </td>\n");
      out.write("                <td> ");
      out.print(rs.getString("PURCHASE_DATE"));
      out.write(" </td>\n");
      out.write("                <td> ");
      out.print(rs.getString("PURCHASE_DETAIL"));
      out.write(" </td>\n");
      out.write("                <td> ");
      out.print(rs.getString("PURCHASE_QTY"));
      out.write(" </td>\n");
      out.write("                <td> ");
      out.print(rs.getString("PURCHASE_RATE"));
      out.write(" </td>\n");
      out.write("                <td>&#8377; ");
      out.print(rs.getString("BILL_AMT"));
      out.write(" </td>\n");
      out.write("                <td> ");
      out.print(rs.getString("PURCHASE_BY"));
      out.write(" </td>\n");
      out.write("                 <td> ");
      out.print(rs.getString("APPROVAL_BY"));
      out.write(" </td>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                <td><a href=\"DeletePettyCash.jsp?id=");
      out.print(rs.getString("PCASHID"));
      out.write("\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-trash\" onclick=\"return confirm('Do you want  to delete the record ? ')\"></span></a></td>\n");
      out.write("               \n");
      out.write("               <td><a href=\"UpdatePettyCash.jsp?id=");
      out.print(rs.getString("PCASHID"));
      out.write("\">\n");
      out.write("                   <span class=\"glyphicon glyphicon-pencil\"></span></a></td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("            ");

            id++;
        }
        conn.close();
    }
     catch(Exception e)
     { 
         System.out.println(e);
     }
    
      out.write("\n");
      out.write("    \n");
      out.write("    </table>\n");
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
