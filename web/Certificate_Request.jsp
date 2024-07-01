
<%@page import="java.sql.*" %>

<%
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
       
        String sql="insert into certificate(CERTIFICATE_REQUEST_TIME,CERTIFICATE_REQUEST_DATE,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CERTIFICATE_TECH,STATUS,REMARK)values('"+certificate_request_time+"','"+certificate_request_date+"','"+fname+"','"+mname+"','"+lname+"','"+certificate_technology+"','"+status+"','"+remark+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println("<center>Certificate Request Done Successfully.....!</center>");
        
       %>
       <center>
           <a href="Employee_dashboard.jsp"><img src="checkimage.jpg"><br>Go to Employee Dashboard</a>   
       </center>
     <%          
    }
    
     catch(Exception e)
     { System.out.println(e);
     }
    
    
    
    
    %>