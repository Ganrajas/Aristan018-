
<%@page import="java.sql.*" %>

<%

    String idate=request.getParameter("idate");
    String cname=request.getParameter("cname");
    String tech=request.getParameter("tech");
    
    String t_time=request.getParameter("t_time");
    
    String sby=request.getParameter("sby");
    
     String tname=request.getParameter("tname");
    
     
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        
        String sql="insert into demo_training(DEMO_DATE,CANDIDATE_NAME,TECHNOLOGY,DEMO_TIME,SCHEDULE_BY,TRAINER_NAME)values('"+idate+"','"+cname+"','"+tech+"','"+t_time+"','"+sby+"','"+tname+"')";
        int i= st.executeUpdate(sql);
        
        
       // out.println("Registration Done Successfully.....!");
        response.sendRedirect("Display_Training_Demo.jsp");
        
       %>
       <a href="Enquiry_management.jsp"> <span class="glyphicon glyphicon-arrow-left"></span>Go to Enquiry Management</a>    
     <%          
    }
    
     catch(Exception e)
     {
         System.out.println(e);
     }
    
    
    
    
    %>