
<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("id");
    
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("delete from exam where EID="+id);
        
        response.sendRedirect("Display_Exam_Result.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
      
  %>          