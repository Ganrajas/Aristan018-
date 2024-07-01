
<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("id");
    
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("delete from cliententry where CLIENT_ID="+id);
        
        response.sendRedirect("DisplayClientEntry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
      
  %>          