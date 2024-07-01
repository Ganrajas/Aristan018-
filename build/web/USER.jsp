
<%@page import="java.sql.*" %>

<%

    String fname=request.getParameter("fname");
    
    String lname=request.getParameter("lname");
    
    String email=request.getParameter("email");
    
    String uname=request.getParameter("uname");
    
     String pass=request.getParameter("pass");
    
     
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        
        String sql="insert into user(FIRST_NAME,LAST_NAME,EMAIL,USERNAME,PASSWORD)values('"+fname+"','"+lname+"','"+email+"','"+uname+"','"+pass+"')";
        int i= st.executeUpdate(sql);
        
        
        response.sendRedirect("admin_dashboard.jsp");
        
       %>
       
     <%          
    }
    
     catch(Exception e)
     {
         System.out.println(e);
     }
    
    %>