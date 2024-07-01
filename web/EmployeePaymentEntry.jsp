    
<%@page import="java.sql.*" %>

<%
    String pdate=request.getParameter("pdate");
    
     String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
     
     String job=request.getParameter("job");
    
     String amt=request.getParameter("amt");
    
     String payby=request.getParameter("pay");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        

        String sql="insert into emppayentry(PDATE,FIRST_NAME,LAST_NAME,JOB,AMOUNT,PAYBY)values('"+pdate+"','"+fname+"','"+lname+"','"+job+"','"+amt+"','"+payby+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Employee Payment  Entry Done Successfully.....!");
        
       %>
       <a href="admin_dashboard.jsp">Go to Dashboard</a> <br>
       <a href="Employee_dashboard.jsp">Go to Employee Dashboard</a>    
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>