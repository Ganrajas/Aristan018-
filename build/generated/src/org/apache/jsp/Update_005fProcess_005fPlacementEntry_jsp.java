package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class Update_005fProcess_005fPlacementEntry_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

    int  id=Integer.parseInt(request.getParameter("CLIENT_ID"));
     String comp_name=request.getParameter("comp_name");   
     String comp_url=request.getParameter("comp_url");    
     String fname=request.getParameter("fname");    
     String lname=request.getParameter("lname");   
     String contactno=request.getParameter("contactno");    
     String email=request.getParameter("email");    
     String tech_require=request.getParameter("tech_require");    
     String require_time=request.getParameter("require_time");     
     String select_date=request.getParameter("select_date"); 
     String remark=request.getParameter("remark");     
     String address=request.getParameter("address"); 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update placement set CLIENT_ID=?,COMPANY_NAME=?,COMPANY_URL=?,FIRST_NAME=?,LAST_NAME=?,CONTACT_NO=?,EMAIL_ID=?,"
                + "TECH_REQUIREMENT=?,REQUIRE_STATUS=?,SHOW_DATE=?,REMARK=?,ADDRESS=? where CLIENT_ID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, comp_name);
        ps.setString(3, comp_url);
        ps.setString(4, fname);
        ps.setString(5, lname);
        ps.setString(6, contactno);
        ps.setString(7, email);
        ps.setString(8, tech_require);
        ps.setString(9, require_time);
        ps.setString(10, select_date);
        ps.setString(11, remark);
        ps.setString(12, address);
       
        int i=ps.executeUpdate();
        
        if(i>0)
        {
//            response.sendRedirect("Display_Placement_Client.jsp");
            response.sendRedirect("Placement_management.jsp");
        }
        else
        {
            System.out.println("Update Fail.....");
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
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
