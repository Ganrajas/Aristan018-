
<%@page import="java.sql.*" %>

<%

    String tdate=request.getParameter("tdate");
      
    String ttime=request.getParameter("ttime");
    
    String tdetails=request.getParameter("tdetails");
    
    String cname=request.getParameter("cname");
    
     String hover=request.getParameter("hover");
     
     String hoby=request.getParameter("hoby");
    
     
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        
        String sql="insert into ticket(TICKETING_DATE,TICKETING_TIME,TICKETING_DETAILS,CLIENT_NAME,HAND_OVER,HANDOVER_BY)values('"+tdate+"','"+ttime+"','"+tdetails+"','"+cname+"','"+hover+"','"+hoby+"')";
        int i= st.executeUpdate(sql);
        
        
        response.sendRedirect("admin_dashboard.jsp");
        
       %>
      
     <%          
    }
    
     catch(Exception e)
     { System.out.println(e);
     }
    
    
    
    
    %>