

<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("id");
    
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("delete from certificate where CID="+id);
        
        response.sendRedirect("Display_Certificate_Request.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
      
  %>          