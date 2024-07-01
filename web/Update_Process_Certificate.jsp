<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("CID"));
    String certificate_request_time=request.getParameter("certificate_request_time");
    String certificate_request_date=request.getParameter("certificate_request_date");
    String fname=request.getParameter("fname");
    String mname=request.getParameter("mname");
    String lname=request.getParameter("lname");
    String certificate_technology=request.getParameter("certificate_technology");
    String status=request.getParameter("status");
    String remark=request.getParameter("remark");
   
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update certificate set CID=?,CERTIFICATE_REQUEST_TIME=?,CERTIFICATE_REQUEST_DATE=?,FIRST_NAME=?,MIDDLE_NAME=?,LAST_NAME=?,CERTIFICATE_TECH=?,STATUS=?,REMARK=? where cid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, certificate_request_time);
        ps.setString(3, certificate_request_date);
        ps.setString(4, fname);
        ps.setString(5, mname);
        ps.setString(6, lname);
        ps.setString(7, certificate_technology);
        ps.setString(8, status);
        ps.setString(9, remark);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("Display_Certificate_Request.jsp");
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
    %>