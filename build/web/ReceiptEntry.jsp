    
<%@page import="java.sql.*" %>

<%
    
     String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
    
     String amt=request.getParameter("amt");
    
     String pay=request.getParameter("pay");
    
     String pdate=request.getParameter("pdate");
        
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        

        String sql="insert into receipt(FIRST_NAME,LAST_NAME,AMOUNT,PAYBY,PDATE)values('"+fname+"','"+lname+"','"+amt+"','"+pay+"','"+pdate+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Receipt Entry Done Successfully.....!");
        
       %>
       <a href="admin_dashboard.jsp">Go to Admin Dashboard</a> <br>
       <a href="Employee_dashboard.jsp">Go to Employee Dashboard</a>    
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>