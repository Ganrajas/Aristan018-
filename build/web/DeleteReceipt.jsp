

<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("id");
    
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("delete from receipt where RID="+id);
        
        response.sendRedirect("DisplayReceiptEntry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
      
  %>          