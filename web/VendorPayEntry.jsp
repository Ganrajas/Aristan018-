    
<%@page import="java.sql.*" %>

<%
    String vpdate=request.getParameter("vpdate");
    
     String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
     
     String vcomp=request.getParameter("vcomp");
    
     String amt=request.getParameter("amt");
    
     String payby=request.getParameter("pay");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        

        String sql="insert into vendor(VPDATE,FIRST_NAME,LAST_NAME,VCOMP,AMOUNT,PAYBY)values('"+vpdate+"','"+fname+"','"+lname+"','"+vcomp+"','"+amt+"','"+payby+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Employee Payment  Entry Done Successfully.....!");
        
       %>
       <a href="admin_dashboard.jsp">Go to Admin Dashboard</a> <br>
       <a href="Employee_dashboard.html">Go to Employee Dashboard</a>    
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>