package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class EmployeePaymentEntry_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    \n");
      out.write("\n");
      out.write("\n");

    String pdate=request.getParameter("pdate");
    
     String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
     
     String job=request.getParameter("job");
    
     String amt=request.getParameter("amt");
    
     String payby=request.getParameter("pay");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        

        String sql="insert into emppayentry(PDATE,FIRST_NAME,LAST_NAME,JOB,AMOUNT,PAYBY)values('"+pdate+"','"+fname+"','"+lname+"','"+job+"','"+amt+"','"+payby+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Employee Payment  Entry Done Successfully.....!");
        
       
      out.write("\n");
      out.write("       <a href=\"admin_dashboard.jsp\">Go to Dashboard</a> <br>\n");
      out.write("       <a href=\"Employee_dashboard.jsp\">Go to Employee Dashboard</a>    \n");
      out.write("     ");
          
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
